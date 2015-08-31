package gov.esm.electric.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import gov.esm.electric.dao.SwitchOperationDao;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.SwitchOperation;
import gov.esm.electric.domain.User;
import gov.esm.electric.web.Constant;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


@Service
public class SwitchOperationService {
	

	@Resource
	public SwitchOperationDao switchOperationDao;
	
	
	@Transactional(propagation = Propagation.SUPPORTS)
	public void recordSwitchOpertion(CableSwitch cableSwitch, int status, HttpServletRequest req){
		if (StringUtils.isNotBlank(cableSwitch.getId())) {
			
			HttpSession session = req.getSession();
			User user = null;
			if (session != null) {
				Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
				user = (User) obj;
				if (user != null) {
					SwitchOperation switchOperation=switchOperationDao.getswitchOperationBySwitchId(cableSwitch.getName());
					if(switchOperation==null){
						Calendar now = Calendar.getInstance(Locale.PRC);
						System.out.println("执行插入操作");
						insert(switchOperation,cableSwitch, status, new Date(), user);
					}
					else{
						Calendar now = Calendar.getInstance(Locale.PRC);
						System.out.println("执行更新操作");
						StringBuilder operateBuilder=new StringBuilder();
						operateBuilder.append(switchOperation.getOperate());
						operateBuilder.append("  ");
						String operate=null;
						switch (status) {
						case 10:
							operate="开闸";
							break;
						case 11:
							operate="合闸";
							break;
						case 12:
							operate="闲置";
							break;
						case 13:
							operate="备用";
							break;
						}
						operateBuilder.append(user.getName()+":"+operate);
						switchOperationDao.updateCableLineStatus(switchOperation.getId(),new Date(), operateBuilder.toString());
					}
				}
			}
		}
	}

	private void insert(SwitchOperation switchOperation,CableSwitch cableSwitch, int status,
			Date now, User user) {
		
		switchOperation=new SwitchOperation();
		switchOperation.setSwitchName(cableSwitch.getName());
		switchOperation.setStartTime(now);
		String operate=null;
		switch (status) {
		case 10:
			operate="开闸";
			break;
		case 11:
			operate="合闸";
			break;
		case 12:
			operate="闲置";
			break;
		case 13:
			operate="备用";
			break;
		}
		switchOperation.setOperate(user.getName()+":"+operate);
		switchOperationDao.insert(switchOperation);
	}
	
	public List<SwitchOperation> getSwitchOperation( int index, int size) {
		return switchOperationDao.getSwitchOperation(index, size);
	}
	
	public Integer getSwitchOperationTotal() {
		return switchOperationDao.getSwitchOperationTotal();
	}
	
	public List<SwitchOperation> getTodaySwitchOperation() {
		return switchOperationDao.getTodaySwitchOperation();
	}
	
	public int updateswitchOperation(SwitchOperation switchOperation) {
		return switchOperationDao.updateswitchOperation(switchOperation);
	}
}
