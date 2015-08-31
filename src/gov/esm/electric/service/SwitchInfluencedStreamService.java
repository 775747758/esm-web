package gov.esm.electric.service;

import gov.esm.electric.dao.SwitchInfluencedStreamDao;
import gov.esm.electric.dao.SwitchUpStreamDao;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.SwitchInfluencedStream;
import gov.esm.electric.domain.SwitchUpStream;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SwitchInfluencedStreamService {
	
	@Resource
	private SwitchInfluencedStreamDao switchInfluencedStreamDao;
	@Autowired
	private CableSwitchService cableSwitchService;
	
	@Autowired
	private SwitchUpStreamDao switchUpStreamDAO;
	

	public List<SwitchInfluencedStream> getSwitchInfluencedStream(String switchId) {
		return switchInfluencedStreamDao.getSwitchInfluencedStream(switchId);
	}
	
	
	public List<CableSwitch> getSwitchsInfluenced(String switchId){
		List<CableSwitch> switchs=new ArrayList<CableSwitch>();
		List<SwitchInfluencedStream> list=getSwitchInfluencedStream(switchId);
		for(SwitchInfluencedStream switchInfluencedStream:list){
			if(StringUtils.isNotBlank(switchInfluencedStream.getStream())) {
				String[] ids = switchInfluencedStream.getStream().split(",");
				for (String id : ids) {
					System.out.println("/////开关："+id);
					CableSwitch s = cableSwitchService.getCableSwitch(id);
					if(s.getStatus()==10||s.getStatus()==12||s.getStatus()==13){
						System.out.println("/////被排除的开关："+s.getId());
						break;
					}
					if(!switchs.contains(s)){
						System.out.println("/////添加的开关："+s.getId());
						switchs.add(s);
					}
				}
			}
		}
		return switchs;
	}
	
	public List<CableSwitch> getSwitchsInfluencedNO(String switchId){
		List<CableSwitch> switchs=new ArrayList<CableSwitch>();
		List<SwitchInfluencedStream> list=getSwitchInfluencedStream(switchId);
		for(SwitchInfluencedStream switchInfluencedStream:list){
			if(StringUtils.isNotBlank(switchInfluencedStream.getStream())) {
				String[] ids = switchInfluencedStream.getStream().split(",");
				for (String id : ids) {
					CableSwitch s = cableSwitchService.getCableSwitch(id);
					if(!switchs.contains(s)){
						switchs.add(s);
					}
				}
			}
		}
		return switchs;
	}

	public void addSwitchInfluencedStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(String switchId, String lastSwitchId, String lastBranchSwitchIds, String nextSwitchId, String nextBranchSwitchIds) {
		//如果既没有下游开关也没有下游分支开关，则给上游开关插入一条影响的开关的数据
		if(StringUtils.isBlank(nextSwitchId)&&StringUtils.isBlank(nextBranchSwitchIds)){
			/*SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
			newSwitchInfluencedStream.setSwitchId(lastSwitchId);
			newSwitchInfluencedStream.setStream(switchId);
			switchInfluencedStreamDao.insert(newSwitchInfluencedStream);*/
		}else{
			for(SwitchInfluencedStream switchInfluencedStream : switchInfluencedStreamDao.getSwitchInfluencedStream(lastSwitchId)) {
				//如果下游开关不为空
				if(StringUtils.isNotBlank(nextSwitchId)){
					if(SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), nextSwitchId)){
						SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
						newSwitchInfluencedStream.setSwitchId(switchId);
						newSwitchInfluencedStream.setStream(switchInfluencedStream.getStream());
						switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
					}
				}
				
				//如果下游分支开关不为空
				if(StringUtils.isNotBlank(nextBranchSwitchIds)){
					for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
						if(SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), nextBranchSwitchId)){
							SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
							newSwitchInfluencedStream.setSwitchId(switchId);
							newSwitchInfluencedStream.setStream(switchInfluencedStream.getStream());
							switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
						}
					}
				}
				
			}

		}
		
	}


	public void updateSwitchInfluencedStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(String switchId, String lastSwitchId, String lastBranchSwitchIds, String nextSwitchId, String nextBranchSwitchIds) {
		
		Set<String> set=new HashSet<String>();
		int count=0;
		String preSwitch="";
		String preUpdateSwitch="";
		for(SwitchInfluencedStream switchInfluencedStream : switchInfluencedStreamDao.getAll()) {
			//有下游开关
			if(StringUtils.isNotBlank(nextSwitchId)){
				//下游是握手
				if(nextSwitchId.contains("WS")){
					//有下游分支
					if(StringUtils.isNotBlank(nextBranchSwitchIds)){
						for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
							//（上游开关，下游分支）
							if(switchInfluencedStream.getStream().contains(lastSwitchId+","+nextBranchSwitchId)) {
								switchInfluencedStream.setStream(switchInfluencedStream.getStream().replace(lastSwitchId+","+nextBranchSwitchId, lastSwitchId+","+switchId+","+nextBranchSwitchId));
								switchInfluencedStreamDao.update(switchInfluencedStream);
								System.out.println("<<<<<其他开关影响表：1>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
							}
							//（上游开关:下游分支）
							else if(lastSwitchId.equals(switchInfluencedStream.getSwitchId())
									&&SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), nextBranchSwitchId)) {
								switchInfluencedStream.setStream(switchId+","+switchInfluencedStream.getStream());
								switchInfluencedStreamDao.update(switchInfluencedStream);
								System.out.println("<<<<<其他开关影响表：2>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
							}
						}
					}else{//无下游分支
						//TODO
						if(StringUtils.isNotBlank(lastBranchSwitchIds)){
							if(!isStreamContainsSwitches(switchInfluencedStream.getStream(),lastBranchSwitchIds,lastSwitchId)){
								if(!switchInfluencedStream.getStream().contains(switchId)){
									if(switchInfluencedStream.getStream().contains(lastSwitchId)){
										switchInfluencedStream.setStream(switchInfluencedStream.getStream()+","+switchId);
										switchInfluencedStreamDao.update(switchInfluencedStream);
										System.out.println("<<<<<其他开关影响表：3>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
									}
								}
							}
							/*for(String lastBranchSwitchId : lastBranchSwitchIds.split(",")) {
								//（上游开关，上游分支）
								if(!switchInfluencedStream.getStream().contains(lastSwitchId+","+lastBranchSwitchId)
										&&SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), lastSwitchId)) {
									if(!switchInfluencedStream.getStream().contains(switchId)){
										switchInfluencedStream.setStream(switchInfluencedStream.getStream()+","+switchId);
										switchInfluencedStreamDao.update(switchInfluencedStream);
										System.out.println("<<<<<其他开关影响表：3>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
									}
								}
							}*/
							
							//给除了上游之外的其他开关添加新的。。。
							if(switchInfluencedStream.getStream().contains(lastSwitchId)){
								System.out.println("..................无下游分支，无下游preSwitch:"+preSwitch+"current:"+switchInfluencedStream.getSwitchId());
								if(StringUtils.isBlank(preSwitch)||!switchInfluencedStream.getSwitchId().equals(preSwitch)){
									if(preUpdateSwitch.equals("")||!preUpdateSwitch.equals(switchInfluencedStream.getSwitchId())){
										if(!set.contains(switchInfluencedStream.getSwitchId())){
											preUpdateSwitch=switchInfluencedStream.getSwitchId();
											System.out.println("..................进入");
											count++;
											set.add(switchInfluencedStream.getSwitchId());
											SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
											newSwitchInfluencedStream.setSwitchId(switchInfluencedStream.getSwitchId());
											String temp[]=switchInfluencedStream.getStream().split(lastSwitchId);
											newSwitchInfluencedStream.setStream(temp[0]+lastSwitchId+","+switchId);
											switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
											System.out.println("<<<<<其他开关影响表：4>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
										}
										
									}else{
										if(count==0){
											preUpdateSwitch=switchInfluencedStream.getSwitchId();
											System.out.println("..................进入");
											count++;
											SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
											newSwitchInfluencedStream.setSwitchId(switchInfluencedStream.getSwitchId());
											String temp[]=switchInfluencedStream.getStream().split(lastSwitchId);
											newSwitchInfluencedStream.setStream(temp[0]+lastSwitchId+","+switchId);
											switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
											System.out.println("<<<<<其他开关影响表：5>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
										}
									}
								}
							}
						}else{
							if(switchInfluencedStream.getStream().contains(lastSwitchId)){
								switchInfluencedStream.setStream(switchInfluencedStream.getStream()+","+switchId);
								switchInfluencedStreamDao.update(switchInfluencedStream);
								System.out.println("<<<<<其他开关影响表：6>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
							}
							
						}
					
					}
				}else{//下游是普通开关
					if(StringUtils.isNotBlank(nextBranchSwitchIds)){
						for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
							//（上游开关，下游分支）
							if(switchInfluencedStream.getStream().contains(lastSwitchId+","+nextBranchSwitchId)) {
								switchInfluencedStream.setStream(switchInfluencedStream.getStream().replace(lastSwitchId+","+nextBranchSwitchId, lastSwitchId+","+switchId+","+nextBranchSwitchId));
								switchInfluencedStreamDao.update(switchInfluencedStream);
								System.out.println("<<<<<其他开关影响表：7>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
							}
							//（上游开关:下游分支）
							else if(lastSwitchId.equals(switchInfluencedStream.getSwitchId())
									&&SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), nextBranchSwitchId)) {
								switchInfluencedStream.setStream(switchId+","+switchInfluencedStream.getStream());
								switchInfluencedStreamDao.update(switchInfluencedStream);
								System.out.println("<<<<<其他开关影响表：8>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
							}
						}
					}
					//（上游开关,下游开关）
					if(switchInfluencedStream.getStream().contains(lastSwitchId+","+nextSwitchId)) {
						switchInfluencedStream.setStream(switchInfluencedStream.getStream().replace(lastSwitchId+","+nextSwitchId, lastSwitchId+","+switchId+","+nextSwitchId));
						switchInfluencedStreamDao.update(switchInfluencedStream);
						System.out.println("<<<<<其他开关影响表：9>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
					}
					//（上游开关:下游开关）
					if(lastSwitchId.equals(switchInfluencedStream.getSwitchId())
							&&SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), nextSwitchId)) {
						switchInfluencedStream.setStream(switchId+","+switchInfluencedStream.getStream());
						switchInfluencedStreamDao.update(switchInfluencedStream);
						System.out.println("<<<<<其他开关影响表：10>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
					}
					
				}
			}else{//无下游开关
				//有下游分支
				if(StringUtils.isNotBlank(nextBranchSwitchIds)){
					for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
						//（上游开关，下游分支）
						if(switchInfluencedStream.getStream().contains(lastSwitchId+","+nextBranchSwitchId)) {
							switchInfluencedStream.setStream(switchInfluencedStream.getStream().replace(lastSwitchId+","+nextBranchSwitchId, lastSwitchId+","+switchId+","+nextBranchSwitchId));
							switchInfluencedStreamDao.update(switchInfluencedStream);
							System.out.println("<<<<<其他开关影响表：11>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
						}
						//（上游开关:下游分支）
						else if(lastSwitchId.equals(switchInfluencedStream.getSwitchId())
								&&SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), nextBranchSwitchId)) {
							switchInfluencedStream.setStream(switchId+","+switchInfluencedStream.getStream());
							switchInfluencedStreamDao.update(switchInfluencedStream);
							System.out.println("<<<<<其他开关影响表：12>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
						}
					}
				}else{//无下游分支，无下游
					//TODO
					if(StringUtils.isNotBlank(lastBranchSwitchIds)){
						/*for(String lastBranchSwitchId : lastBranchSwitchIds.split(",")) {
							//（上游开关，上游分支）
							if(!switchInfluencedStream.getStream().contains(lastSwitchId+","+lastBranchSwitchId)
									&&SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), lastSwitchId)) {
								switchInfluencedStream.setStream(switchInfluencedStream.getStream()+","+switchId);
								switchInfluencedStreamDao.update(switchInfluencedStream);
								System.out.println("<<<<<其他开关影响表：13>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
							}
						}*/
						
						//给除了上游之外的其他开关添加新的。。。
						if(switchInfluencedStream.getStream().contains(lastSwitchId)){
							System.out.println("..................无下游分支，无下游preSwitch:"+preSwitch+"current:"+switchInfluencedStream.getSwitchId());
							if(StringUtils.isBlank(preSwitch)||!switchInfluencedStream.getSwitchId().equals(preSwitch)){
								if(preUpdateSwitch.equals("")||!preUpdateSwitch.equals(switchInfluencedStream.getSwitchId())){
									if(!set.contains(switchInfluencedStream.getSwitchId())){
										preUpdateSwitch=switchInfluencedStream.getSwitchId();
										System.out.println("..................进入");
										count++;
										set.add(switchInfluencedStream.getSwitchId());
										SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
										newSwitchInfluencedStream.setSwitchId(switchInfluencedStream.getSwitchId());
										if(StringUtils.isBlank(switchInfluencedStream.getStream())||switchInfluencedStream.getStream().equals(lastSwitchId)){
											newSwitchInfluencedStream.setStream(lastSwitchId+","+switchId);
										}else{
											String temp[]=switchInfluencedStream.getStream().split(lastSwitchId);
											newSwitchInfluencedStream.setStream(temp[0]+lastSwitchId+","+switchId);
										}
										switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
										System.out.println("<<<<<其他开关影响表：14>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
									}
								}else{
									if(count==0){
										preUpdateSwitch=switchInfluencedStream.getSwitchId();
										System.out.println("..................进入");
										count++;
										SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
										newSwitchInfluencedStream.setSwitchId(switchInfluencedStream.getSwitchId());
										String temp[]=switchInfluencedStream.getStream().split(lastSwitchId);
										newSwitchInfluencedStream.setStream(temp[0]+lastSwitchId+","+switchId);
										switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
										System.out.println("<<<<<其他开关影响表：15>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
									}
								}
							}
						}
					}else{
						if(switchInfluencedStream.getStream().contains(lastSwitchId)){
							switchInfluencedStream.setStream(switchInfluencedStream.getStream()+","+switchId);
							switchInfluencedStreamDao.update(switchInfluencedStream);
							System.out.println("<<<<<其他开关影响表：16>>>>>"+"switchId:"+switchInfluencedStream.getSwitchId()+"stream:"+switchInfluencedStream.getStream());
						}
					}
				}
			}
			preSwitch=switchInfluencedStream.getSwitchId();
		}
		
		
		//新添加
		//下游是握手，无下游分支
		if(StringUtils.isNotBlank(nextSwitchId)){
			if(nextSwitchId.contains("WS")){
				//上游分支不为空的时候才需要新添加
				if(StringUtils.isNotBlank(lastBranchSwitchIds)){
					if(nextSwitchId.contains("WS")&&StringUtils.isBlank(nextBranchSwitchIds)){
						//给上游开关添加
						SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
						newSwitchInfluencedStream.setSwitchId(lastSwitchId);
						newSwitchInfluencedStream.setStream(switchId);
						switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
						System.out.println("<<<<<其他开关影响表：17>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
					}
				}else{
					SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
					newSwitchInfluencedStream.setSwitchId(lastSwitchId);
					newSwitchInfluencedStream.setStream(switchId);
					switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
					System.out.println("<<<<<其他开关影响表：18>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
				}
			}
		}
		
		//无下游分支，无下游
		if(StringUtils.isBlank(nextSwitchId)&&StringUtils.isBlank(nextBranchSwitchIds)){
			//上游分支不为空的时候才需要新添加
			if(StringUtils.isNotBlank(lastBranchSwitchIds)){
				//给上游开关添加
				SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
				newSwitchInfluencedStream.setSwitchId(lastSwitchId);
				newSwitchInfluencedStream.setStream(switchId);
				switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
				System.out.println("<<<<<其他开关影响表：19>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
			}else{
				SwitchInfluencedStream newSwitchInfluencedStream = new SwitchInfluencedStream();
				newSwitchInfluencedStream.setSwitchId(lastSwitchId);
				newSwitchInfluencedStream.setStream(switchId);
				switchInfluencedStreamDao.insert(newSwitchInfluencedStream);
				System.out.println("<<<<<其他开关影响表：20>>>>>"+"switchId:"+newSwitchInfluencedStream.getSwitchId()+"stream:"+newSwitchInfluencedStream.getStream());
			}
		}

	}


	public void deleteWithSwitchId(String switchId) {
		switchInfluencedStreamDao.deleteWithSwitchId(switchId);
	}


	public void deltetSwitchIdWithSwitchId(String switchId) {
		for(SwitchInfluencedStream switchInfluencedStream : switchInfluencedStreamDao.getAll()) {
			if(SwitchUpStreamService.streamContainsSwitch(switchInfluencedStream.getStream(), switchId.trim())){
				String streamStr = SwitchUpStreamService.getDeleteSwitchIdFromStream(switchInfluencedStream.getStream(), switchId.trim());
				if(StringUtils.isNotBlank(streamStr)) {
					switchInfluencedStream.setStream(streamStr);
					switchInfluencedStreamDao.update(switchInfluencedStream);
				}else {
					switchInfluencedStreamDao.deleteWithId(switchInfluencedStream.getId());
				}
			}
		}
	}
	
	
	private boolean isStreamContainsSwitches(String stream,String switches,String lastSwitch){
		if(StringUtils.isBlank(stream)||StringUtils.isBlank(switches)){
			return false;
		}
		for(String switch_ : switches.split(",")){
			if(stream.contains(lastSwitch+","+switch_)){
				return true;
			}
		}
		return false;
	}

}
