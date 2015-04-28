/**
 *
 * 
 * @author Administrator
 * @date 2014年12月8日
 */
package gov.esm.electric.web.report;

import gov.esm.electric.dao.InterruptHistoryDao;
import gov.esm.electric.entity.InterruptHistoryVo;
import gov.esm.electric.web.circuit.JsonBean;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

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

import com.jspsmart.upload.SmartUpload;
import com.jspsmart.upload.SmartUploadException;
import com.sun.org.apache.bcel.internal.generic.GETSTATIC;

/**
 * 断电历史记录报表
 * 
 * @author XueLiang
 *
 * @date:2014年12月8日
 */
@Controller
@RequestMapping(value = "/report")
public class InterruptHistoryReportController {

	@Resource
	private InterruptHistoryDao interruptHistoryDao;

	/**
	 * 断电记录报表
	 * 
	 * @param size
	 * @param pageNo
	 * @return
	 */
	@RequestMapping(value = "/interrupt-histories.do", method = RequestMethod.GET)
	public String getInterruptHistories(HttpServletRequest req) {
		return "/report/interruptHistory";
	}

	@RequestMapping(value = "/interrupt-histories.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getInterruptHistories(
			@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<InterruptHistoryVo> rows = this.interruptHistoryDao.getHistories(
				null, null, pageNo, size);
		System.out.println(rows.get(0).getOperate());
		map.put("rows", rows);
		int total = this.interruptHistoryDao.getHistoryTotal(null, null,null,null,null);
		map.put("total", total);
		return map;
	}
	
	@RequestMapping(value = "/yestaday-interrupt-histories.do", method = RequestMethod.GET)
	@ResponseBody
	public Object getYestadayInterruptHistories(
			@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<InterruptHistoryVo> rows=interruptHistoryDao.getYestadayHistories();
		Calendar cal=Calendar.getInstance();
        cal.add(Calendar.DATE,-1);
        Date yesDate=cal.getTime();
        SimpleDateFormat formaterDate = new SimpleDateFormat("yyyy-MM-dd");
		if(rows.size()>0){
			map.put("rows", rows);
			map.put("date", formaterDate.format(yesDate));
		}
		return map;
	}

	/*
	 * 导出excel报表
	 */
	@RequestMapping(value = "/interrupt-histories-excel.do",method = RequestMethod.GET)
	public JsonBean getInterruptHistoriesExcel(HttpServletRequest req,HttpServletResponse resp,
			@RequestParam(value = "switchId") String switchId,
			@RequestParam(value = "operate") String operate,
			@RequestParam(value = "beginDate") String beginDate,
			@RequestParam(value = "endDate") String endDate,
			@RequestParam(value = "operatorName") String operatorName
			)  {
		System.out.println(switchId);
		SimpleDateFormat sdf =   new SimpleDateFormat( "MM/dd/yyyy" );//01/25/2015
		 
		Date enddate=null;
		Date begindate = null;
		
	
		try {
			if(beginDate!=null&&!"".equals(beginDate)){
				begindate=sdf.parse(beginDate);
			}
			if(endDate!=null&&!"".equals(beginDate)){
				enddate = sdf.parse(endDate);
			}
			
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		JsonBean json = new JsonBean();
		try {
			WritableWorkbook  wwb=Workbook.createWorkbook(new File("D:\\interrupt-histories.xls"));
			WritableSheet ws= wwb.createSheet("student", 0);
			Label label1=new Label(0, 0, "开关名称");
			Label label2=new Label(1, 0, "时间");
			Label label3=new Label(2, 0, "当前状态");
			Label label4=new Label(3, 0, "操作员");
			Label label5=new Label(4, 0, "签字");
			ws.addCell(label1);
			ws.addCell(label2);
			ws.addCell(label3);
			ws.addCell(label4);
			ws.addCell(label5);
			List<InterruptHistoryVo> rows = this.interruptHistoryDao.searchHistories(switchId,operate,operatorName,-1,-1,begindate,enddate);
			DateFormat df=new DateFormat("yyyy-MM-dd HH:mm:ss");
			WritableCellFormat wcf=new WritableCellFormat(df);
			for(int i=0;i<rows.size();i++)
			{
				Label labelSN=new Label(0, i+1, rows.get(i).getSwitchName());
				ws.addCell(labelSN);
				DateTime dateTime=new DateTime(1, i+1, rows.get(i).getInterruptTime(), wcf);
				ws.addCell(dateTime);
				Label labelT=new Label(2, i+1, rows.get(i).getOperate());
				ws.addCell(labelT);
				Label labelON=new Label(3, i+1, rows.get(i).getOperatorName());
				ws.addCell(labelON);
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
		File file = new File("D:/interrupt-histories.xls");
		System.out.println(file.exists());
		if(file.exists()){
			System.out.println(file.exists()+"1");
			//设置相应类型application/octet-stream
			resp.setContentType("multipart/form-data");
			//设置头信息
			resp.setHeader("Content-Disposition", "attachment;filename=" + "interrupt-histories.xls");
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
			
			json.setSuccess(true);
			
		}else{
			json.setSuccess(false);
		}
		json.setSuccess(true);
		return null;
	}
	
	
	/*
	 * 导出excel报表
	 */
	@RequestMapping(value = "/today_interrupt-histories-excel.do",method = RequestMethod.GET)
	public JsonBean getTodayInterruptHistoriesExcel(HttpServletRequest req,HttpServletResponse resp)  {
		SimpleDateFormat sdf =   new SimpleDateFormat( "MM/dd/yyyy" );//01/25/2015

		JsonBean json = new JsonBean();
		try {
			WritableWorkbook  wwb=Workbook.createWorkbook(new File("D:\\today_interrupt-histories-excel.xls"));
			WritableSheet ws= wwb.createSheet("student", 0);
			Label label1=new Label(0, 0, "开关名称");
			Label label2=new Label(1, 0, "时间");
			Label label3=new Label(2, 0, "当前状态");
			Label label4=new Label(3, 0, "操作员");
			Label label5=new Label(4, 0, "签字");
			ws.addCell(label1);
			ws.addCell(label2);
			ws.addCell(label3);
			ws.addCell(label4);
			ws.addCell(label5);
			List<InterruptHistoryVo> rows = this.interruptHistoryDao.getToDayHistories();
			DateFormat df=new DateFormat("yyyy-MM-dd HH:mm:ss");
			WritableCellFormat wcf=new WritableCellFormat(df);
			for(int i=0;i<rows.size();i++)
			{
				Label labelSN=new Label(0, i+1, rows.get(i).getSwitchName());
				ws.addCell(labelSN);
				DateTime dateTime=new DateTime(1, i+1, rows.get(i).getInterruptTime(), wcf);
				ws.addCell(dateTime);
				Label labelT=new Label(2, i+1, rows.get(i).getOperate());
				ws.addCell(labelT);
				Label labelON=new Label(3, i+1, rows.get(i).getOperatorName());
				ws.addCell(labelON);
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
		File file = new File("D:/today_interrupt-histories-excel.xls");
		System.out.println(file.exists());
		if(file.exists()){
			System.out.println(file.exists()+"1");
			//设置相应类型application/octet-stream
			resp.setContentType("multipart/form-data");
			//设置头信息
			resp.setHeader("Content-Disposition", "attachment;filename=" + "today_interrupt-histories-excel.xls");
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
			
			json.setSuccess(true);
			
		}else{
			json.setSuccess(false);
		}
		json.setSuccess(true);
		return null;
	}
	
	/*
	 * 搜索 switchId:switchID,operate:operate,beginDate:beginDate,endDate:endDate};
	 */
	@RequestMapping(value = "/interrupt-histories-search.do", method = RequestMethod.POST)
	@ResponseBody
	public Object searchInterruptHistories(
			@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo,
			@RequestParam(value = "switchId") String switchId,
			@RequestParam(value = "operate") String operate,
			@RequestParam(value = "beginDate") String beginDate,
			@RequestParam(value = "endDate") String endDate,
			@RequestParam(value = "operatorName") String operatorName
			) {
		
		SimpleDateFormat sdf =   new SimpleDateFormat( "MM/dd/yyyy" );//01/25/2015
		 
			Date enddate=null;
			Date begindate = null;
			
		
			try {
				if(beginDate!=null){
					begindate=sdf.parse(beginDate);
				}
				if(endDate!=null){
					enddate = sdf.parse(endDate);
				}
				
				
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<InterruptHistoryVo> rows = this.interruptHistoryDao.searchHistories(switchId,operate,operatorName,pageNo,size,begindate,enddate);
		map.put("rows", rows);
		int total = this.interruptHistoryDao.getHistoryTotal(begindate, enddate,switchId,operate,operatorName);
		map.put("total", total);
		System.out.println("总量"+total);
		return map;
	}
}
