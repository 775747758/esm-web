package gov.esm.electric.web.report;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import gov.esm.electric.dao.MessageDao;
import gov.esm.electric.domain.Message;
import gov.esm.electric.domain.Role;
import gov.esm.electric.domain.User;
import gov.esm.electric.entity.MessageVo;
import gov.esm.electric.entity.UserLogVo;
import gov.esm.electric.entity.UserVo;
import gov.esm.electric.web.Constant;
import gov.esm.electric.web.circuit.JsonBean;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.Workbook;
import jxl.write.DateFormat;
import jxl.write.DateTime;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;
import jxl.write.biff.RowsExceededException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Resource
	private MessageDao messageDao;
	
	@RequestMapping(value = "/sendMessage.do")
	@ResponseBody
	public JsonBean sendMessage(HttpServletRequest request,String message)  {
		JsonBean json = new JsonBean();
		request.getSession().getServletContext().setAttribute("msg", message);
		json.setMsg("success!");
		User user = (User) request.getSession().getAttribute(Constant.SESSION_KEY_USER);
		
		//将message存入数据库
		Message messageV=new Message();
		
		messageV.setUserId(user.getId());
		messageV.setMessage(message);
		Calendar now = Calendar.getInstance(Locale.PRC);
		messageV.setTime(now.getTime());
		messageDao.insert(messageV);
		return json;
	}
	
	
	@RequestMapping(value = "/getMessage")
	@ResponseBody
	public JsonBean getMessage(HttpServletRequest request) {
		JsonBean json = new JsonBean();
		String message = (String) request.getSession().getServletContext()
				.getAttribute("msg");
		if(null!=message||!"".equals(message))
		{
			json.setSuccess(true);
		}
		
		json.setObj(message);
		return json;
	}
	
	@RequestMapping(value = "/removeMessage")
	@ResponseBody
	public JsonBean removeMessage(HttpServletRequest request) {
		JsonBean json = new JsonBean();
		request.getSession().getServletContext().setAttribute("msg", "");
		json.setSuccess(true);
		return json;
	}
	
	@RequestMapping(value = "/getMessageTable.do", method = RequestMethod.GET)
	public String getInterruptHistories(HttpServletRequest req) {
		List<Role> roles = (List<Role>) req.getSession().getAttribute(Constant.SESSION_KEY_ROLES);
		if(roles.get(0).getId()==4){
			req.setAttribute("flag", "0");
		}
		else{
			req.setAttribute("flag", "1");
		}
		return "/report/message";
	}
	
	@RequestMapping(value = "/getMessageTable.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getMessageTable(
			@RequestParam(value = "page", defaultValue = "1") int pageNo,
			@RequestParam(value = "rows", defaultValue = "10") int pageSize) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<MessageVo> messages = messageDao.getMessage(pageNo, pageSize);
		map.put("rows", messages);
		Integer total = messageDao.getMessageTotal();
		map.put("total", total);
		return map;
	}
	
	/*
	 * 导出excel报表
	 */
	@RequestMapping(value = "/message_excel.do",method = RequestMethod.GET)
	@ResponseBody
	public JsonBean getInterruptHistoriesExcel(HttpServletRequest req,HttpServletResponse resp)  {
		Map<String, Object> map = new HashMap<String, Object>();
		SimpleDateFormat sdf =   new SimpleDateFormat( "MM/dd/yyyy" );//01/25/2015
		try {
			WritableWorkbook  wwb=Workbook.createWorkbook(new File("D:\\message_excel.xls"));
			WritableSheet ws= wwb.createSheet("student", 0);
			Label label1=new Label(0, 0, "操作员姓名");
			Label label2=new Label(1, 0, "停电通知");
			Label label3=new Label(2, 0, "登录时间");
			Label label4=new Label(3, 0, "退出时间");
			Label label5=new Label(4, 0, "签字");
			ws.addCell(label1);
			ws.addCell(label2);
			ws.addCell(label3);
			ws.addCell(label4);
			ws.addCell(label5);
			List<MessageVo> rows = messageDao.getTodayMessage();
			DateFormat df=new DateFormat("yyyy-MM-dd HH:mm:ss");
			WritableCellFormat wcf=new WritableCellFormat(df);
			for(int i=0;i<rows.size();i++)
			{
				Label labelSN=new Label(0, i+1, rows.get(i).getName());
				ws.addCell(labelSN);
				Label labelT=new Label(1, i+1, rows.get(i).getMessage());
				ws.addCell(labelT);
				DateTime dateTime=new DateTime(2, i+1, rows.get(i).getLoginTime(), wcf);
				ws.addCell(dateTime);
				DateTime dateTime1=new DateTime(3, i+1, rows.get(i).getLogoutTime(), wcf);
				ws.addCell(dateTime1);
			}
			
			wwb.write();
			wwb.close();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (RowsExceededException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (WriteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		File file = new File("D:/message_excel.xls");
		System.out.println(file.exists());
		if(file.exists()){
			System.out.println(file.exists()+"1");
			//设置相应类型application/octet-stream
			resp.setContentType("multipart/form-data");
			//设置头信息
			resp.setHeader("Content-Disposition", "attachment;filename=" + "message_excel.xls");
			InputStream inputStream;
			try {
				System.out.println(file.exists()+"进入try");
				inputStream = new FileInputStream(file);
				OutputStream ouputStream = resp.getOutputStream();
				byte b[] = new byte[1024];
				int n ;
				while((n = inputStream.read(b)) != -1){
					System.out.println(file.exists()+"进入while");
					ouputStream.write(b,0,n);
				}
				System.out.println(file.exists()+"进入while结束");
				//关闭流、释放资源
				ouputStream.close();
				inputStream.close();
				System.out.println(file.exists()+"关闭 ");
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return null;
	}

}
