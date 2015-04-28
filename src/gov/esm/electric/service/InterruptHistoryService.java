package gov.esm.electric.service;

import gov.esm.electric.dao.InterruptHistoryDao;
import gov.esm.electric.dao.UserDao;
import gov.esm.electric.dao.UserLogDao;
import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.UserLog;
import gov.esm.electric.entity.InterruptHistoryVo;
import gov.esm.electric.entity.TodayHistoryVo;
import gov.esm.electric.entity.UserLogVo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月28日
 */
@Service
public class InterruptHistoryService {
	@Resource
	private InterruptHistoryDao interruptHistoryDao;
	
	@Resource
	private UserLogDao userLogDao;
	
	@Resource
	private UserDao userDao;

	@Transactional(propagation = Propagation.REQUIRED)
	public boolean insert(Collection<InterruptHistory> histories) {
		Iterator<InterruptHistory> it = histories.iterator();
		boolean success = true;
		while (it.hasNext()) {
			success &= this.insert(it.next());
		}
		return success;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public boolean insert(InterruptHistory entity) {
		return this.interruptHistoryDao.insert(entity);
	}

	public List<InterruptHistoryVo> getHistories(Date start, Date end, int index,
			int size) {
		return this.interruptHistoryDao.getHistories(start, end, index, size);
	}
	
	public List<InterruptHistoryVo> getYestadayHistories() {
		return this.interruptHistoryDao.getYestadayHistories();
	}
	
	public List<TodayHistoryVo> getToDayHistories() {
		List<InterruptHistoryVo> list=interruptHistoryDao.getToDayHistories();
		List<String> temp=new ArrayList<String>();
		List<TodayHistoryVo> todayHistorys=new ArrayList<TodayHistoryVo>();
		for(int i=0;i<list.size();i++){
			
			StringBuilder operate=new StringBuilder();
			TodayHistoryVo todayHistoryVo=new TodayHistoryVo();
			if(!temp.contains(list.get(i).getOperatorName())){
				System.out.println("hhh::for"+i);
				todayHistoryVo.setOperatorName(list.get(i).getOperatorName());
				for(int j=0;j<list.size();j++){
					System.out.println("hhh::"+"j"+j+"i"+i+"::::"+list.get(j).toString());
					if(list.get(i).getOperatorName().equals(list.get(j).getOperatorName())){
						System.out.println("hhh::limian::"+list.get(j).toString());
						operate.append(list.get(j).getSwitchName()).append(list.get(j).getOperate()).append(",");
						
						
					}
				}
				if(operate.toString().charAt(operate.toString().length()-1)==','){
					operate.deleteCharAt(operate.toString().length()-1);
				}
				System.out.println("hhh::"+operate.toString());
				todayHistoryVo.setOperate(operate.toString());
				todayHistorys.add(todayHistoryVo);
				temp.add(list.get(i).getOperatorName());
			}
			
		}
		
		return todayHistorys;
	}
	
	public List<UserLogVo> getUserLog(int index,int size) {
		List<UserLog> list=userLogDao.getUserLog(index,size);
		System.out.println("用户日志表"+list.size());
		List<UserLogVo> temp=new ArrayList<UserLogVo>();
		
		for(int i=0;i<list.size();i++){
			UserLogVo userLogVo=new UserLogVo();
			userLogVo.setLoginTime(list.get(i).getLoginTime());
			userLogVo.setLogoutTime(list.get(i).getLogoutTime());
			userLogVo.setOperatorName(userDao.getRealName(list.get(i).getUserId()));
			List<InterruptHistoryVo> historys=interruptHistoryDao.searchHistoriesByOperator(userLogVo.getOperatorName(),userLogVo.getLoginTime(),userLogVo.getLogoutTime());
			StringBuilder builder=new StringBuilder();
			for(int j=0;j<historys.size();j++){
				System.out.println("i:"+i+"J:"+j);
				
				if(j==historys.size()-1){
					builder.append(historys.get(j).getSwitchName()).append(historys.get(j).getOperate());
				}
				else{
					builder.append(historys.get(j).getSwitchName()).append(historys.get(j).getOperate()).append(",");
				}
				
			}
			userLogVo.setOperate(builder.toString());
			temp.add(userLogVo);
		}
		return temp;
	}
	
	
	public List<UserLogVo> getTodayUserLog() {
		List<UserLog> list=userLogDao.getTodayUserLog();
		List<UserLogVo> temp=new ArrayList<UserLogVo>();
		for(int i=0;i<list.size();i++){
			UserLogVo userLogVo=new UserLogVo();
			userLogVo.setLoginTime(list.get(i).getLoginTime());
			userLogVo.setLogoutTime(list.get(i).getLogoutTime());
			userLogVo.setOperatorName(userDao.getRealName(list.get(i).getUserId()));
			List<InterruptHistoryVo> historys=interruptHistoryDao.searchHistoriesByOperator(userLogVo.getOperatorName(),userLogVo.getLoginTime(),userLogVo.getLogoutTime());
			StringBuilder builder=new StringBuilder();
			for(int j=0;j<historys.size();j++){
				System.out.println("i:"+i+"J:"+j);
				
				if(j==historys.size()-1){
					builder.append(historys.get(j).getSwitchName()).append(historys.get(j).getOperate());
				}
				else{
					builder.append(historys.get(j).getSwitchName()).append(historys.get(j).getOperate()).append(",");
				}
				
			}
			userLogVo.setOperate(builder.toString());
			temp.add(userLogVo);
		}
		return temp;
	}
	
	
	
}
