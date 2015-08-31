package gov.esm.electric.service;

import gov.esm.electric.dao.CableSwitchDao;
import gov.esm.electric.dao.SwitchDownStreamDao;
import gov.esm.electric.dao.SwitchUpStreamDao;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchUpStream;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SwitchUpStreamService {

	/**
	 * 根据开关id,前一个开关id,后一个开关id添加当前开关的上游开关
	 * @param switchId
	 * @param lastSwitchId
	 * @param nextSwitchId
	 * @param lastBranchSwitchIds 
	 */
	public void addSwithUpStreamWithSwitchIdLastSwitchIdNextSwitchId(String switchId, String lastSwitchId, String nextSwitchId, String lastBranchSwitchIds) {
		for(SwitchUpStream switchUpStream : switchUpStreamDAO.getUpstream(lastSwitchId)){//获取上游开关的上游对象集合
			SwitchUpStream newSwitchUpStream = new SwitchUpStream();
			newSwitchUpStream.setSwitchId(switchId);
			if(switchUpStream.getUpstream().contains("WS")){
				//下游后面是变电站
				if(nextSwitchId.contains("WS")||isDownStreanContainsWS(nextSwitchId)){
					newSwitchUpStream.setUpstream(switchUpStream.getUpstream());
					System.out.println("1上游：："+switchUpStream.getUpstream());
				}else{
					//两条上游都在上游那边（2143左面添加一个开关）
					if(!isUpStreanContainsSwitch(lastSwitchId, nextSwitchId)&&!isUpStreanContainsSwitchs(lastSwitchId, lastBranchSwitchIds)){
						newSwitchUpStream.setUpstream(lastSwitchId + "," + switchUpStream.getUpstream());
						System.out.println("2_1上游：："+lastSwitchId + "," + switchUpStream.getUpstream());
					}else{
						//上游分支后面是变电站
						newSwitchUpStream.setUpstream(switchUpStream.getUpstream());
						System.out.println("1_1上游：："+switchUpStream.getUpstream());
					}
				}
			}else{//上游开关那边的上游
				newSwitchUpStream.setUpstream(lastSwitchId + "," + switchUpStream.getUpstream());
				System.out.println("2上游：："+lastSwitchId + "," + switchUpStream.getUpstream());
			}
			switchUpStreamDAO.insert(newSwitchUpStream.getSwitchId(), newSwitchUpStream.getUpstream());
		}
		//道闸的上游有可能一条与可能没有
		//如果上游开关的上游只有一条数据，则判断为变电站出来的第一个开关，需要增加一条上游记录
		if(cableSwitchDao.getCableSwitch(lastSwitchId).getType()==1){
			switchUpStreamDAO.insert(switchId, lastSwitchId);
			System.out.println("4上游：："+lastSwitchId );
		}
	}
	/**
	 * 根据开关id,前一个开关id,后一个开关id更新该开关的上游开关的上游开关流
	 * @param switchId
	 * @param lastSwitchId
	 * @param nextSwitchId
	 */
	public void updateSwithUpStreamWithSwitchIdLastSwitchIdNextSwitchId(String switchId, String lastSwitchId, String lastBranchSwitchIds, String nextSwitchId, String nextBranchSwitchIds) {
		for(SwitchUpStream switchUpStream : switchUpStreamDAO.getAll()) {
			//如果下游开关不为空
			if(StringUtils.isNotBlank(nextSwitchId)) { 
				System.out.println("...如果下游开关不为空");
				//如果下有开关不为空
				//如果上游包含“上有开关，下游开关”的格式
				if(switchUpStream.getUpstream().contains(lastSwitchId+","+nextSwitchId)) {
					switchUpStream.setUpstream(switchUpStream.getUpstream().replace(lastSwitchId+","+nextSwitchId, lastSwitchId+","+switchId+","+nextSwitchId));
					switchUpStreamDAO.update(switchUpStream);
					System.out.println("<<<<<其他开关上游表：1>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
				} else if(switchUpStream.getUpstream().contains(nextSwitchId+","+lastSwitchId)) {//如果包含“下有开关，上有开关”的格式
					switchUpStream.setUpstream(switchUpStream.getUpstream().replace(nextSwitchId+","+lastSwitchId, nextSwitchId+","+switchId+","+lastSwitchId));
					switchUpStreamDAO.update(switchUpStream);
					System.out.println("<<<<<其他开关上游表：2>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
				} else if(lastSwitchId.equals(switchUpStream.getSwitchId())
						&&streamContainsSwitch(switchUpStream.getUpstream(), nextSwitchId)) {//如果当前上游对象是上游开关的对象且上游对象的上游包含下游开关
					switchUpStream.setUpstream(switchId+","+switchUpStream.getUpstream());
					switchUpStreamDAO.update(switchUpStream);
					System.out.println("<<<<<其他开关上游表：3>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
				} else if(nextSwitchId.equals(switchUpStream.getSwitchId())
						&&streamContainsSwitch(switchUpStream.getUpstream(), lastSwitchId)){//如果当前上有对象是下有开关的对象且上有对象的上游包含上游开关
					switchUpStream.setUpstream(switchId+","+switchUpStream.getUpstream());
					switchUpStreamDAO.update(switchUpStream);
					System.out.println("<<<<<其他开关上游表：4>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
				}
			
			}
			//如果上游分支开关不为空
			if(StringUtils.isNotBlank(lastBranchSwitchIds)) {
				System.out.println("...如果上游分支开关不为空");
				for(String lastBranchSwitchId : lastBranchSwitchIds.split(",")) {
					//System.out.println("...循环：：lastBranchSwitchId："+lastBranchSwitchId);
					//如果上游对象的上游包含“上游分支开关，下游开关”的格式
					if(StringUtils.isNotBlank(nextSwitchId)&&switchUpStream.getUpstream().contains(lastBranchSwitchId+","+nextSwitchId)) {
						switchUpStream.setUpstream(switchUpStream.getUpstream().replace(lastBranchSwitchId+","+nextSwitchId, lastBranchSwitchId+","+switchId+","+nextSwitchId));
						switchUpStreamDAO.update(switchUpStream);
						System.out.println("<<<<<其他开关上游表：5>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}else if(StringUtils.isNotBlank(nextSwitchId)&&switchUpStream.getUpstream().contains(nextSwitchId+","+lastBranchSwitchId)){
						switchUpStream.setUpstream(switchUpStream.getUpstream().replace(nextSwitchId+","+lastBranchSwitchId, nextSwitchId+","+switchId+","+lastBranchSwitchId));
						switchUpStreamDAO.update(switchUpStream);
						System.out.println("<<<<<其他开关上游表：5_1>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}
					else if(nextSwitchId.equals(switchUpStream.getSwitchId())
							&&streamContainsSwitch(switchUpStream.getUpstream(), lastBranchSwitchId)){
						switchUpStream.setUpstream(switchId+","+switchUpStream.getUpstream());
						switchUpStreamDAO.update(switchUpStream);
						System.out.println("<<<<<其他开关上游表：6_1>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}
					else if(lastBranchSwitchId.equals(switchUpStream.getSwitchId())
							&&streamContainsSwitch(switchUpStream.getUpstream(), nextSwitchId)) {//如果当前上游对象是上游分支开关对象且上游对象的上游包含下游开关
							switchUpStream.setUpstream(switchId+","+switchUpStream.getUpstream());
							switchUpStreamDAO.update(switchUpStream);
							System.out.println("<<<<<其他开关上游表：6>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}
					
					if(StringUtils.isNotBlank(nextBranchSwitchIds)) {
						for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
							if(switchUpStream.getUpstream().contains(nextBranchSwitchId+","+lastBranchSwitchId)){
								switchUpStream.setUpstream(switchUpStream.getUpstream().replace(nextBranchSwitchId+","+lastBranchSwitchId, nextBranchSwitchId+","+switchId+","+lastBranchSwitchId));
								switchUpStreamDAO.update(switchUpStream);
								System.out.println("<<<<<其他开关上游表：6_2>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
							}else if(switchUpStream.getUpstream().contains(lastBranchSwitchId+","+nextBranchSwitchId)){
								switchUpStream.setUpstream(switchUpStream.getUpstream().replace(lastBranchSwitchId+","+nextBranchSwitchId, lastBranchSwitchId+","+switchId+","+nextBranchSwitchId));
								switchUpStreamDAO.update(switchUpStream);
								System.out.println("<<<<<其他开关上游表：6_3>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
							}else if(lastBranchSwitchId.equals(switchUpStream.getSwitchId())
									&&streamContainsSwitch(switchUpStream.getUpstream(), nextBranchSwitchId)){
								switchUpStream.setUpstream(switchId+","+switchUpStream.getUpstream());
								switchUpStreamDAO.update(switchUpStream);
								System.out.println("<<<<<其他开关上游表：6_4>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
							}else if(nextBranchSwitchId.equals(switchUpStream.getSwitchId())
									&&streamContainsSwitch(switchUpStream.getUpstream(), lastBranchSwitchId)){
								switchUpStream.setUpstream(switchId+","+switchUpStream.getUpstream());
								switchUpStreamDAO.update(switchUpStream);
								System.out.println("<<<<<其他开关上游表：6_5>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
							}
						}
					}
					
					
				}
			}
			//如果下游分支开关不为空
			if(StringUtils.isNotBlank(nextBranchSwitchIds)) {
				System.out.println("...如果下游分支开关不为空");
				for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
					//System.out.println("...循环：：nextBranchSwitchId："+nextBranchSwitchId);
					//如果上游对象的上游包含“下游分支开关，上游开关”的格式
					/*if(switchUpStream.getUpstream().contains(nextBranchSwitchId+","+nextSwitchId)) {
						switchUpStream.setUpstream(switchUpStream.getUpstream().replace(nextBranchSwitchId+","+nextSwitchId, nextBranchSwitchId+","+switchId+","+nextSwitchId));
						switchUpStreamDAO.update(switchUpStream);
						System.out.println("<<<<<其他开关上游表：7>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}else */
						if(nextBranchSwitchId.equals(switchUpStream.getSwitchId())
							&&streamContainsSwitch(switchUpStream.getUpstream(), lastSwitchId)) {//如果当前上游对象是下游分支开关对象且上游对象的上游包含上游开关
						switchUpStream.setUpstream(switchId+","+switchUpStream.getUpstream());
						switchUpStreamDAO.update(switchUpStream);
						System.out.println("<<<<<其他开关上游表：8>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}else if(switchUpStream.getUpstream().contains(nextBranchSwitchId+","+lastSwitchId)){
						switchUpStream.setUpstream(switchUpStream.getUpstream().replace(nextBranchSwitchId+","+lastSwitchId, nextBranchSwitchId+","+switchId+","+lastSwitchId));
						switchUpStreamDAO.update(switchUpStream);
						System.out.println("<<<<<其他开关上游表：9>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}else if(switchUpStream.getUpstream().contains(lastSwitchId+","+nextBranchSwitchId)){
						switchUpStream.setUpstream(switchUpStream.getUpstream().replace(lastSwitchId+","+nextBranchSwitchId, lastSwitchId+","+switchId+","+nextBranchSwitchId));
						switchUpStreamDAO.update(switchUpStream);
						System.out.println("<<<<<其他开关上游表：10>>>>>"+"switchId:"+switchUpStream.getSwitchId()+"stream:"+switchUpStream.getUpstream());
					}
				}
			}
			
			//如果除了上游开关什么开关都没有，是不用修改其他开关的上游的
		}
	}
	
	
	/**
	 * 该流是否包含该开关
	 * @param stream
	 * @param switchId
	 * @return
	 */
	public static boolean streamContainsSwitch(String stream, String switchId) {
		if(StringUtils.isNotBlank(stream)) {
			for(String switchIdStr : stream.split(",")) {
				if(switchIdStr.trim().equals(switchId)) {
					return true;
				}
			}
		}
		return false;
	}
	public static boolean stramContainsBranchSwitchIds(String downstream, String branchSwitchIds) {
		if(StringUtils.isNotBlank(branchSwitchIds)) {
			if(StringUtils.isNotBlank(downstream)) {
				for(String downstreamSwitchId : downstream.split(",")) {
					for(String branchSwitchId : branchSwitchIds.split(",")) {
						if(downstreamSwitchId.equals(branchSwitchId)) {
							return true;
						}
					}
				}
			}
		}
		return false;
	}
	public void deleteWithSwitchId(String switchId) {
		switchUpStreamDAO.deleteWithSwitchId(switchId);
		
	}
	public void deleteSwitchIdWithSwitchId(String switchId) {
		for(SwitchUpStream switchUpStream : switchUpStreamDAO.getAll()) {
			if(streamContainsSwitch(switchUpStream.getUpstream(), switchId)){
				String streamStr = getDeleteSwitchIdFromStream(switchUpStream.getUpstream(), switchId);
				if(StringUtils.isNotBlank(streamStr)){
					switchUpStream.setUpstream(streamStr);
					switchUpStreamDAO.update(switchUpStream);
				} else {
					switchUpStreamDAO.deleteWithId(switchUpStream.getId());
				}
			}
		}
	}
	
	public static String getDeleteSwitchIdFromStream(String stream, String switchId) {
		String streamStr = "";
		if(StringUtils.isNotBlank(stream)){
			for(String switchIdStr : stream.split(",")) {
				if(!switchIdStr.trim().equals(switchId)) {
					if(StringUtils.isBlank(streamStr)) {
						streamStr = switchIdStr.trim();
					} else {
						streamStr = streamStr + "," + switchIdStr.trim();
					}
				}
			}
		}
		return streamStr;
	}
	
	private boolean isDownStreanContainsWS(String switchId){
		if(StringUtils.isBlank(switchId)){
			return false;
		}
		for(SwitchDownStream downStream:switchDownStreamDAO.getDownstream(switchId)){
			if(downStream.getDownstream().contains("WS")){
				return true;
			}
		}
		return false;
	}
	
	private boolean isUpStreanContainsSwitch(String switchId,String switch_){
		if(StringUtils.isBlank(switchId)||StringUtils.isBlank(switch_)){
			return false;
		}
		for(SwitchUpStream downStream:switchUpStreamDAO.getUpstream(switchId)){
			if(downStream.getUpstream().contains(switch_)){
				return true;
			}
		}
		return false;
	}
	
	private boolean isUpStreanContainsSwitchs(String switchId,String switches){
		if(StringUtils.isBlank(switchId)||StringUtils.isBlank(switches)){
			return false;
		}
		for(SwitchUpStream upStream:switchUpStreamDAO.getUpstream(switchId)){
			for(String switch_ : switches.split(",")) {
				if(upStream.getUpstream().contains(switch_)){
					return true;
				}
			}
		}
		return false;
	}

	/**
	 * 根据开关id获取开关上游集合
	 * @param switchId
	 * @return
	 */
	public List<SwitchUpStream> getSwitchUpStreamListWithSwitchId(String switchId) {
		return switchUpStreamDAO.getUpstream(switchId);
	}
	@Autowired
	private SwitchUpStreamDao switchUpStreamDAO;
	
	@Autowired
	private SwitchDownStreamDao switchDownStreamDAO;
	
	@Autowired
	private CableSwitchDao cableSwitchDao;
}