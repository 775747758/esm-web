/**
 *
 * 
 * @author Administrator
 * @date 2014年12月8日
 */
package gov.esm.electric.web.report;

import gov.esm.assistor.StringAssistor;
import gov.esm.electric.dao.InterruptHistoryDao;
import gov.esm.electric.dao.UserLogDao;
import gov.esm.electric.domain.Role;
import gov.esm.electric.domain.SwitchOperation;
import gov.esm.electric.domain.User;
import gov.esm.electric.domain.UserRoleRelation;
import gov.esm.electric.entity.InterruptHistoryVo;
import gov.esm.electric.entity.TodayHistoryVo;
import gov.esm.electric.entity.UserLogVo;
import gov.esm.electric.service.InterruptHistoryService;
import gov.esm.electric.service.SwitchOperationService;
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
public class SwitchOperationController {
	
	
	@Resource
	public SwitchOperationService SwitchOperationService;

	/**
	 * 开关操作表（断电表）
	 * 
	 * @param size
	 * @param pageNo
	 * @return
	 */
	@RequestMapping(value = "/switchOperation.do", method = RequestMethod.GET)
	public String getSwitchOperation(HttpServletRequest req) {
		List<Role> roles = (List<Role>) req.getSession().getAttribute(Constant.SESSION_KEY_ROLES);
		if(roles.get(0).getId()==4){
			req.setAttribute("flag", "0");
		}
		else{
			req.setAttribute("flag", "1");
		}
		return "/report/switchOperation";
	}
	
	@RequestMapping(value = "/switchOperation.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getSwitchOperation(@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<SwitchOperation> rows = SwitchOperationService.getSwitchOperation(pageNo, size);
		map.put("rows", rows);
		int total = SwitchOperationService.getSwitchOperationTotal();
		map.put("total", total);
		return map;
	}
	
	
	@RequestMapping(value = "/editSwitchOperation.do", method = RequestMethod.POST)
	@ResponseBody
	public Object editSwitchOperation(
			@RequestParam(value="id",defaultValue="-1")int id,
			@RequestParam(value="dispatcher",defaultValue="")String dispatcher) {
		Map<String, Object> map = new HashMap<String, Object>(4);
		SwitchOperation switchOperation=new SwitchOperation();
		switchOperation.setId(id);
		switchOperation.setDispatcher(dispatcher);

		if(id==-1||StringAssistor.isBlank(dispatcher)){
			map.put("check", 0);
		}
		else{
			SwitchOperationService.updateswitchOperation(switchOperation);
			map.put("check", 1);
		}
		
		return map;
	}
	
	
	/*
	 * 导出excel报表
	 */
	@RequestMapping(value = "/switch_operation-excel.do",method = RequestMethod.GET)
	public JsonBean getInterruptHistoriesExcel(HttpServletRequest req,HttpServletResponse resp,@RequestParam(value = "rows", defaultValue = "10") int size,
			@RequestParam(value = "page", defaultValue = "1") int pageNo)  {
		SimpleDateFormat sdf =   new SimpleDateFormat( "MM/dd/yyyy" );//01/25/2015
		try {
			WritableWorkbook  wwb=Workbook.createWorkbook(new File("D:\\switch_operation-excel.xls"));
			WritableSheet ws= wwb.createSheet("student", 0);
			Label label1=new Label(0, 0, "开关名称");
			Label label2=new Label(1, 0, "开始时间");
			Label label3=new Label(2, 0, "结束时间");
			Label label4=new Label(3, 0, "操作员姓名");
			Label label5=new Label(4, 0, "调度员");
			Label label6=new Label(5, 0, "签字");
			ws.addCell(label1);
			ws.addCell(label2);
			ws.addCell(label3);
			ws.addCell(label4);
			ws.addCell(label5);
			ws.addCell(label6);
			List<SwitchOperation> rows = SwitchOperationService.getTodaySwitchOperation();
			DateFormat df=new DateFormat("yyyy-MM-dd HH:mm:ss");
			WritableCellFormat wcf=new WritableCellFormat(df);
			for(int i=0;i<rows.size();i++)
			{
				Label labelSN=new Label(0, i+1, rows.get(i).getSwitchName());
				ws.addCell(labelSN);
				DateTime dateTime=new DateTime(1, i+1, rows.get(i).getStartTime(), wcf);
				ws.addCell(dateTime);
				
				if(rows.get(i).getEndTime()!=null){
					DateTime dateTime1=new DateTime(2, i+1, rows.get(i).getEndTime(), wcf);
					ws.addCell(dateTime1);
				}
				else{
					Label dateTime1=new Label(0, i+1, "");
					ws.addCell(dateTime1);
				}
				Label labelT=new Label(3, i+1, rows.get(i).getOperate());
				ws.addCell(labelT);
				
				Label labelD=new Label(4, i+1, rows.get(i).getDispatcher());
				ws.addCell(labelD);
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
		File file = new File("D:/switch_operation-excel.xls");
		System.out.println(file.exists());
		if(file.exists()){
			System.out.println(file.exists()+"1");
			//设置相应类型application/octet-stream
			resp.setContentType("multipart/form-data");
			//设置头信息
			resp.setHeader("Content-Disposition", "attachment;filename=" + "switch_operation-excel.xls");
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
