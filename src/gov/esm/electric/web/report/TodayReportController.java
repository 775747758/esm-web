/**
 *
 * 
 * @author Administrator
 * @date 2014年12月8日
 */
package gov.esm.electric.web.report;

import gov.esm.electric.dao.InterruptHistoryDao;
import gov.esm.electric.domain.Role;
import gov.esm.electric.entity.InterruptHistoryVo;
import gov.esm.electric.entity.MessageVo;
import gov.esm.electric.entity.TodayHistoryVo;
import gov.esm.electric.service.InterruptHistoryService;
import gov.esm.electric.web.Constant;
import gov.esm.electric.web.circuit.JsonBean;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
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
public class TodayReportController {

	@Resource
	private InterruptHistoryService interruptHistoryService;

	/**
	 * 断电记录报表
	 * 
	 * @param size
	 * @param pageNo
	 * @return
	 */
	@RequestMapping(value = "/today-histories.do", method = RequestMethod.GET)
	public String getTodayHistories(HttpServletRequest req) {
		List<Role> roles = (List<Role>) req.getSession().getAttribute(Constant.SESSION_KEY_ROLES);
		if(roles.get(0).getId()==4){
			req.setAttribute("flag", "0");
		}
		else{
			req.setAttribute("flag", "1");
		}
		return "/report/todayHistory";
	}

	/*@RequestMapping(value = "/today-histories.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getTodayHistories(
			@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<InterruptHistoryVo> rows = this.interruptHistoryDao.getHistories(
				null, null, pageNo, size);
		map.put("rows", rows);
		int total = this.interruptHistoryDao.getHistoryTotal(null, null,null,null,null);
		map.put("total", total);
		return map;
		
		
	}*/
	
	@RequestMapping(value = "/today-histories.do", method = RequestMethod.POST)
	@ResponseBody
	public Object temp() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<TodayHistoryVo> rows = interruptHistoryService.getToDayHistories();
		if(rows==null){
			map.put("total", 0);
		}else{
			map.put("total", rows.size());
		}
		map.put("rows", rows);
		return map;
	}
	
	/*
	 * 导出excel报表
	 */
	@RequestMapping(value = "/today_report-excel.do",method = RequestMethod.GET)
	public JsonBean getInterruptHistoriesExcel(HttpServletRequest req,HttpServletResponse resp,@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo)  {
		SimpleDateFormat sdf =   new SimpleDateFormat( "MM/dd/yyyy" );//01/25/2015
		try {
			WritableWorkbook  wwb=Workbook.createWorkbook(new File("D:\\today_report-excel.xls"));
			WritableSheet ws= wwb.createSheet("student", 0);
			Label label1=new Label(0, 0, "操作员姓名");
			Label label2=new Label(1, 0, "开关/线路");
			Label label5=new Label(2, 0, "签字");
			ws.addCell(label1);
			ws.addCell(label2);
			ws.addCell(label5);
			List<TodayHistoryVo> rows = interruptHistoryService.getToDayHistories();
			DateFormat df=new DateFormat("yyyy-MM-dd HH:mm:ss");
			WritableCellFormat wcf=new WritableCellFormat(df);
			for(int i=0;i<rows.size();i++)
			{
				Label labelSN=new Label(0, i+1, rows.get(i).getOperatorName());
				ws.addCell(labelSN);
				Label labelT=new Label(1, i+1, rows.get(i).getOperate());
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
		File file = new File("D:/today_report-excel.xls");
		System.out.println(file.exists());
		if(file.exists()){
			System.out.println(file.exists()+"1");
			//设置相应类型application/octet-stream
			resp.setContentType("multipart/form-data");
			//设置头信息
			resp.setHeader("Content-Disposition", "attachment;filename=" + "today_report-excel.xls");
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
