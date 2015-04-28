/**
 *
 * 
 * @author Administrator
 * @date 2014年12月8日
 */
package gov.esm.electric.web.report;

import gov.esm.electric.dao.InterruptHistoryDao;
import gov.esm.electric.dao.UserLogDao;
import gov.esm.electric.entity.InterruptHistoryVo;
import gov.esm.electric.entity.TodayHistoryVo;
import gov.esm.electric.entity.UserLogVo;
import gov.esm.electric.service.InterruptHistoryService;
import gov.esm.electric.web.circuit.JsonBean;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
@RequestMapping(value = "/report")
public class UserLogController {

	@Resource
	private InterruptHistoryService interruptHistoryService;
	@Resource
	private UserLogDao userLogDao;

	/**
	 * 断电记录报表
	 * 
	 * @param size
	 * @param pageNo
	 * @return
	 */
	@RequestMapping(value = "/userlog.do", method = RequestMethod.GET)
	public String getTodayHistories(HttpServletRequest req) {
		return "/report/userlog";
	}

	
	@RequestMapping(value = "/userlog.do", method = RequestMethod.POST)
	@ResponseBody
	public Object temp(@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserLogVo> rows = interruptHistoryService.getUserLog(pageNo, size);
		map.put("rows", rows);
		int total = userLogDao.getUserTotal();
		map.put("total", total);
		System.out.println(rows.get(0).getOperate());
		return map;
	}
	
	/*
	 * 导出excel报表
	 */
	@RequestMapping(value = "/user_log_excel.do",method = RequestMethod.GET)
	public JsonBean getInterruptHistoriesExcel(HttpServletRequest req,HttpServletResponse resp,@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo)  {
		SimpleDateFormat sdf =   new SimpleDateFormat( "MM/dd/yyyy" );//01/25/2015
		try {
			WritableWorkbook  wwb=Workbook.createWorkbook(new File("D:\\user_log.xls"));
			WritableSheet ws= wwb.createSheet("student", 0);
			Label label1=new Label(0, 0, "用户名");
			Label label2=new Label(1, 0, "登录时间");
			Label label3=new Label(2, 0, "退出时间");
			Label label4=new Label(3, 0, "开关/线路");
			Label label5=new Label(4, 0, "签字");
			ws.addCell(label1);
			ws.addCell(label2);
			ws.addCell(label3);
			ws.addCell(label4);
			ws.addCell(label5);
			List<UserLogVo> rows = interruptHistoryService.getTodayUserLog();
			DateFormat df=new DateFormat("yyyy-MM-dd HH:mm:ss");
			WritableCellFormat wcf=new WritableCellFormat(df);
			for(int i=0;i<rows.size();i++)
			{
				Label labelSN=new Label(0, i+1, rows.get(i).getOperatorName());
				ws.addCell(labelSN);
				DateTime dateTime=new DateTime(1, i+1, rows.get(i).getLoginTime(), wcf);
				ws.addCell(dateTime);
				DateTime dateTime1=new DateTime(2, i+1, rows.get(i).getLogoutTime(), wcf);
				ws.addCell(dateTime1);
				Label labelT=new Label(3, i+1, rows.get(i).getOperate());
				ws.addCell(labelT);
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
		File file = new File("D:/user_log.xls");
		System.out.println(file.exists());
		if(file.exists()){
			System.out.println(file.exists()+"1");
			//设置相应类型application/octet-stream
			resp.setContentType("multipart/form-data");
			//设置头信息
			resp.setHeader("Content-Disposition", "attachment;filename=" + "user_log.xls");
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
