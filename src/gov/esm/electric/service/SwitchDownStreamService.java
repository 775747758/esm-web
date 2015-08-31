package gov.esm.electric.service;

import gov.esm.electric.dao.SwitchDownStreamDao;
import gov.esm.electric.dao.SwitchUpStreamDao;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchUpStream;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class SwitchDownStreamService {

	/**
	 * 根据开关id，上游开关id，上游分支id，下游开关id添加该开关的下游开关流
	 * @param switchId
	 * @param lastSwitchId
	 * @param lastBranchSwitchId
	 * @param nextSwitchId
	 * @param lastBranchLineIds 
	 * @param lineId 
	 */
	public void addDownStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(String switchId, String lastSwitchId, String lastBranchSwitchIds, String nextSwitchId, String nextBranchSwitchIds, String parentLineId, String lastBranchLineIds) {
		
		//有下游开关
		if(StringUtils.isNotBlank(nextSwitchId)){
			//有下游分支开关
			if(StringUtils.isNotBlank(nextBranchSwitchIds)){
				//有上游分支
				if(StringUtils.isNotBlank(lastBranchSwitchIds)){
					//1.下游开关是握手，有下游分支开关，有上游分支
					if(nextSwitchId.contains("WS")){
						
						for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(nextSwitchId)){
							//包含上游开关的线路，下游分支线路，上游分支线路
							System.out.println("1包含上游开关的线路，下游分支线路，上游分支线路");
							if(switchDownStream.getDownstream().contains(lastSwitchId)
									||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), nextBranchSwitchIds)
									||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), lastBranchSwitchIds)){
								
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}
							
						}
					}else{//下游是普通开关
						//2.有下游开关，有下游分支开关，上游分支包含握手
						if(lastBranchSwitchIds.contains("WS")){
							System.out.println("2有下游开关，有下游分支开关，上游分支包含握手");
							List<SwitchDownStream> switchDownStreams= switchDownStreamDAO.getDownstream(nextSwitchId);
							//如果新添加开关的下游开关没有下游
							if(switchDownStreams==null||switchDownStreams.isEmpty()){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId);
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								for(SwitchDownStream switchDownStream : switchDownStreams){
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
									switchDownStreamDAO.insert(newSwitchDownStream);
								}
							}
							for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
								List<SwitchDownStream> nextswitchDownStreams= switchDownStreamDAO.getDownstream(nextBranchSwitchId);
								//如果新添加开关的下游分支开关没有下游
								if(switchDownStreams==null||switchDownStreams.isEmpty()){
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(nextBranchSwitchId);
									switchDownStreamDAO.insert(newSwitchDownStream);
								}else{
									for(SwitchDownStream switchDownStream : nextswitchDownStreams){
										SwitchDownStream newSwitchDownStream = new SwitchDownStream();
										newSwitchDownStream.setSwitchId(switchId);
										newSwitchDownStream.setDownstream(nextBranchSwitchId+","+switchDownStream.getDownstream());
										switchDownStreamDAO.insert(newSwitchDownStream);
									}
								}
							}
						}else{//3.有下游开关，有下游分支开关，有上游分支
							System.out.println("3.有下游开关，有下游分支开关，有上游分支");
							List<SwitchDownStream> switchDownStreams= switchDownStreamDAO.getDownstream(nextSwitchId);
							//如果新添加开关的下游开关没有下游
							if(switchDownStreams==null||switchDownStreams.isEmpty()){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId);
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								for(SwitchDownStream switchDownStream : switchDownStreams){
									//包含上游开关的线路，下游分支线路，上游分支线路
									if(switchDownStream.getDownstream().contains(lastSwitchId)
											||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), nextBranchSwitchIds)
											||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), lastBranchSwitchIds)){
										SwitchDownStream newSwitchDownStream = new SwitchDownStream();
										newSwitchDownStream.setSwitchId(switchId);
										newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
										switchDownStreamDAO.insert(newSwitchDownStream);
									}else{
										SwitchDownStream newSwitchDownStream = new SwitchDownStream();
										newSwitchDownStream.setSwitchId(switchId);
										newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
										switchDownStreamDAO.insert(newSwitchDownStream);
									}
									
								}
							}
							
							for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
								List<SwitchDownStream> nextswitchDownStreams= switchDownStreamDAO.getDownstream(nextBranchSwitchId);
								//如果新添加开关的下游开关没有下游
								if(nextswitchDownStreams==null||nextswitchDownStreams.isEmpty()){
									System.out.println("如果新添加开关的下游开关没有下游 ");
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(nextBranchSwitchId);
									switchDownStreamDAO.insert(newSwitchDownStream);
								}else{//如果新添加开关的下游开关有下游
									for(SwitchDownStream switchDownStream : nextswitchDownStreams){
										SwitchDownStream newSwitchDownStream = new SwitchDownStream();
										newSwitchDownStream.setSwitchId(switchId);
										newSwitchDownStream.setDownstream(nextBranchSwitchId+","+switchDownStream.getDownstream());
										switchDownStreamDAO.insert(newSwitchDownStream);
									}
								}
								
							}
							
						}
					}
				}else{//无上游分支  
					//4.下游开关包含握手,有下游分支开关，无上游分支
					if(nextSwitchId.contains("WS")){
						System.out.println("4.下游开关包含握手,有下游分支开关，无上游分支");
						for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(nextSwitchId)){
							//包含上游开关的线路，下游分支线路
							if(switchDownStream.getDownstream().contains(lastSwitchId)
									||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), nextBranchSwitchIds)){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}
							
						}
					}else{//5.有下游开关 ,有下游分支开关，无上游分支
						System.out.println("5.有下游开关 ,有下游分支开关，无上游分支");
						List<SwitchDownStream> switchDownStreams= switchDownStreamDAO.getDownstream(lastSwitchId);
						//如果新添加开关的下游开关没有下游
						for(SwitchDownStream switchDownStream : switchDownStreams){
							//包含上游开关的线路，下游分支线路
							if(switchDownStream.getDownstream().contains(nextSwitchId)
									||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), nextBranchSwitchIds)){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(lastSwitchId+","+switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}
							
						}
						
					}
				}
			}else{//没有下游分支开关
				//有上游分支   
				if(StringUtils.isNotBlank(lastBranchSwitchIds)){
					//6.下游是握手 ，无下游分支开关，有上游分支
					if(nextSwitchId.contains("WS")){
						System.out.println("6.下游是握手 ，无下游分支开关，有上游分支");
						for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(nextSwitchId)){
							//包含上游开关的线路，下游分支线路
							if(switchDownStream.getDownstream().contains(lastSwitchId)
									||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), lastBranchSwitchIds)){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}
							
						}
					}else{//下游是普通开关
						//7.上游分支包含握手，有下游开关 ，无下游分支开关
						if(lastBranchSwitchIds.contains("WS")){
							System.out.println("7.上游分支包含握手，有下游开关 ，无下游分支开关");
							List<SwitchDownStream> switchDownStreams= switchDownStreamDAO.getDownstream(nextSwitchId);
							//如果新添加开关的下游开关没有下游
							if(switchDownStreams==null||switchDownStreams.isEmpty()){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId);
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								for(SwitchDownStream switchDownStream : switchDownStreams){
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
									switchDownStreamDAO.insert(newSwitchDownStream);
								}
							}
							
						}else{//8.有上游分支，有下游开关 ，无下游分支开关
							System.out.println("8.有上游分支，有下游开关 ，无下游分支开关");
							List<SwitchDownStream> switchDownStreams= switchDownStreamDAO.getDownstream(nextSwitchId);
							//如果新添加开关的下游开关没有下游
							if(switchDownStreams==null||switchDownStreams.isEmpty()){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId);
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{
								for(SwitchDownStream switchDownStream : switchDownStreams){
									//包含上游开关的线路，下游分支线路
									if(switchDownStream.getDownstream().contains(lastSwitchId)
											||SwitchUpStreamService.stramContainsBranchSwitchIds(switchDownStream.getDownstream(), lastBranchSwitchIds)){
										SwitchDownStream newSwitchDownStream = new SwitchDownStream();
										newSwitchDownStream.setSwitchId(switchId);
										newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
										switchDownStreamDAO.insert(newSwitchDownStream);
									}else{
										SwitchDownStream newSwitchDownStream = new SwitchDownStream();
										newSwitchDownStream.setSwitchId(switchId);
										newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
										switchDownStreamDAO.insert(newSwitchDownStream);
									}
									
								}
							}
							
							
						}
					}
				}else{//无上游分支
					//9.只有上游开关，和下游开关 ，下游是握手
					if(nextSwitchId.contains("WS")){
						System.out.println("9.只有上游开关，和下游开关 ，下游是握手");
						for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(nextSwitchId)){
							//包含上游开关的线路
							if(switchDownStream.getDownstream().contains(lastSwitchId)){
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{//不包含上游开关的线路
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
								switchDownStreamDAO.insert(newSwitchDownStream);
							}
							
						}
					}else{//10.只有上游开关，和下游开关 
						System.out.println("10.只有上游开关，和下游开关 ");
						List<SwitchDownStream> switchDownStreams= switchDownStreamDAO.getDownstream(nextSwitchId);
						//如果新添加开关的下游开关没有下游
						if(switchDownStreams==null||switchDownStreams.isEmpty()){
							System.out.println("如果新添加开关的下游开关没有下游 ");
							SwitchDownStream newSwitchDownStream = new SwitchDownStream();
							newSwitchDownStream.setSwitchId(switchId);
							newSwitchDownStream.setDownstream(nextSwitchId);
							switchDownStreamDAO.insert(newSwitchDownStream);
						}else{//如果新添加开关的下游开关有下游
							System.out.println("如果新添加开关的下游开关有下游");
							for(SwitchDownStream switchDownStream : switchDownStreams){
								//包含上游开关的线路
								if(switchDownStream.getDownstream().contains(lastSwitchId)){
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
									switchDownStreamDAO.insert(newSwitchDownStream);
								}else{//不包含上游开关的线路
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(nextSwitchId+","+switchDownStream.getDownstream());
									switchDownStreamDAO.insert(newSwitchDownStream);
								}
								
							}
						}
					}
				}
				
				
			}
		}else{//无下游开关
			//有下游分支
			if(StringUtils.isNotBlank(nextBranchSwitchIds)){
				//有上游分支
				if(StringUtils.isNotBlank(lastBranchSwitchIds)){
					//11.上游分支包含握手，无下游开关 ，有下游分支开关
					if(lastBranchSwitchIds.contains("WS")){
						System.out.println("11.上游分支包含握手，无下游开关 ，有下游分支开关 ");
						for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
							List<SwitchDownStream> nextswitchDownStreams= switchDownStreamDAO.getDownstream(nextBranchSwitchId);
							//如果新添加开关的下游开关没有下游
							if(nextswitchDownStreams==null||nextswitchDownStreams.isEmpty()){
								System.out.println("如果新添加开关的下游开关没有下游 ");
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextBranchSwitchId);
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{//如果新添加开关的下游开关有下游
								for(SwitchDownStream switchDownStream : nextswitchDownStreams){
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(nextBranchSwitchId+","+switchDownStream.getDownstream());
									switchDownStreamDAO.insert(newSwitchDownStream);
								}
							}
							
						}
					}else{//12.有上游分支，无下游开关 ，有下游分支开关
						//有多个下游分支
						System.out.println("12.有上游分支，无下游开关 ，有下游分支开关");
						for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
							List<SwitchDownStream> nextswitchDownStreams= switchDownStreamDAO.getDownstream(nextBranchSwitchId);
							//如果新添加开关的下游开关没有下游
							if(nextswitchDownStreams==null||nextswitchDownStreams.isEmpty()){
								System.out.println("如果新添加开关的下游开关没有下游 ");
								SwitchDownStream newSwitchDownStream = new SwitchDownStream();
								newSwitchDownStream.setSwitchId(switchId);
								newSwitchDownStream.setDownstream(nextBranchSwitchId);
								switchDownStreamDAO.insert(newSwitchDownStream);
							}else{//如果新添加开关的下游开关有下游
								for(SwitchDownStream switchDownStream : nextswitchDownStreams){
									SwitchDownStream newSwitchDownStream = new SwitchDownStream();
									newSwitchDownStream.setSwitchId(switchId);
									newSwitchDownStream.setDownstream(nextBranchSwitchId+","+switchDownStream.getDownstream());
									switchDownStreamDAO.insert(newSwitchDownStream);
								}
							}
							
						}
					}
				}else{//13.只有上游开关，和下游分支
					System.out.println("13.只有上游开关，和下游分支");
					for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(lastSwitchId)) {
						SwitchDownStream newSwitchDownStream = new SwitchDownStream();
						newSwitchDownStream.setSwitchId(switchId);
						newSwitchDownStream.setDownstream(switchDownStream.getDownstream());
						switchDownStreamDAO.insert(newSwitchDownStream);
					}
				}
			}else{//无下游分支
				//有上游分支
				if(StringUtils.isNotBlank(lastBranchSwitchIds)){
					//14.只有上游开关，和上游分支，上游分支包含握手
					if(lastBranchSwitchIds.contains("WS")){
						//不需要添加
					}else{//15.只有上游开关，和上游分支
						//不需要添加
					}
				}else{//16.只有上游开关
					System.out.println("16.只有上游开关");
					SwitchDownStream newSwitchDownStream = new SwitchDownStream();
					newSwitchDownStream.setSwitchId(lastSwitchId);
					newSwitchDownStream.setDownstream(switchId);
					switchDownStreamDAO.insert(newSwitchDownStream);
				}
				
			}
			
			
		}
	}
	
	/**
	 * 
	 * @param switchId
	 * @param lastSwitchId
	 * @param lastBranchSwitchId
	 * @param nextSwitchId
	 */
	public void updateSwithDownStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(String switchId, String lastSwitchId, String lastBranchSwitchIds, String nextSwitchId, String nextBranchSwitchIds) {

		//循环所有下游
		for(SwitchDownStream switchDownStream : switchDownStreamDAO.getAll()) {
			//下游开关为空
			if(StringUtils.isBlank(nextSwitchId)) {
				//下游分支为空
				if(StringUtils.isBlank(nextBranchSwitchIds)){
					//上游分支为空
					if(StringUtils.isBlank(lastBranchSwitchIds)){
						if(SwitchUpStreamService.streamContainsSwitch(switchDownStream.getDownstream(), lastSwitchId)){
							switchDownStream.setDownstream(switchDownStream.getDownstream()+","+switchId);
							switchDownStreamDAO.update(switchDownStream);
							System.out.println("<<<<<其他开关下游表：1>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
						}
					}
				}
				//其他情况不用担心，在下面...
			} else {//下游开关不为空
				//如果下游对象的下游包含“上有开关，下游开关”的格式
				if(!switchDownStream.getSwitchId().equals(switchId)){
					if(switchDownStream.getDownstream().contains(lastSwitchId+","+nextSwitchId)) {
						switchDownStream.setDownstream(switchDownStream.getDownstream().replace(lastSwitchId+","+nextSwitchId, lastSwitchId+","+switchId+","+nextSwitchId));
						switchDownStreamDAO.update(switchDownStream);
						System.out.println("<<<<<其他开关下游表：2>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					} else if(switchDownStream.getDownstream().contains(nextSwitchId+","+lastSwitchId)) {//如果下游对象的下游包含“下有开关，上游开关”的格式
						switchDownStream.setDownstream(switchDownStream.getDownstream().replace(nextSwitchId+","+lastSwitchId, nextSwitchId+","+switchId+","+lastSwitchId));
						switchDownStreamDAO.update(switchDownStream);
						System.out.println("<<<<<其他开关下游表：3>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					} else if(lastSwitchId.equals(switchDownStream.getSwitchId())
							&&SwitchUpStreamService.streamContainsSwitch(switchDownStream.getDownstream(), nextSwitchId)) {//如果当前下游对象是上游开关的对象且下游对象包含下游开关
						switchDownStream.setDownstream(switchId+","+switchDownStream.getDownstream());
						switchDownStreamDAO.update(switchDownStream);
						System.out.println("<<<<<其他开关下游表：4>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					} else if(nextSwitchId.equals(switchDownStream.getSwitchId())
							&&SwitchUpStreamService.streamContainsSwitch(switchDownStream.getDownstream(), lastSwitchId)) {//如果当前下游对象是下有开关的对象且下游对象包含上游开关
						switchDownStream.setDownstream(switchId+","+switchDownStream.getDownstream());
						switchDownStreamDAO.update(switchDownStream);
						System.out.println("<<<<<其他开关下游表：5>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					}
					
					
					if(nextSwitchId.equals(switchDownStream.getDownstream())){
						switchDownStream.setDownstream(switchId+","+switchDownStream.getDownstream());
						switchDownStreamDAO.update(switchDownStream);
						System.out.println("<<<<<其他开关下游表：6>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					}
				}
			}
			//如果上游分支开关不为空
			if(StringUtils.isNotBlank(lastBranchSwitchIds)) {
				for(String lastBranchSwitchId : lastBranchSwitchIds.split(",")) {
					//如果下游开关不为空
					if(StringUtils.isNotBlank(nextSwitchId)) {
						//如果下有对象的下游包含“下游开关，上游分支开关”的格式
						if(switchDownStream.getDownstream().contains(nextSwitchId+","+lastBranchSwitchId)) {
							switchDownStream.setDownstream(switchDownStream.getDownstream().replace(nextSwitchId+","+lastBranchSwitchId, nextSwitchId+","+switchId+","+lastBranchSwitchId));
							switchDownStreamDAO.update(switchDownStream);
							System.out.println("<<<<<其他开关下游表：7>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
						}
						if(switchDownStream.getDownstream().contains(lastBranchSwitchId+","+nextSwitchId)){
							switchDownStream.setDownstream(switchDownStream.getDownstream().replace(lastBranchSwitchId+","+nextSwitchId, lastBranchSwitchId+","+switchId+","+nextSwitchId));
							switchDownStreamDAO.update(switchDownStream);
							System.out.println("<<<<<其他开关下游表：7_2>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
						}
						if(nextSwitchId.equals(switchDownStream.getSwitchId())
							&&SwitchUpStreamService.streamContainsSwitch(switchDownStream.getDownstream(), lastBranchSwitchId)){
							switchDownStream.setDownstream(switchDownStream.getDownstream().replace(lastBranchSwitchId, switchId+","+lastBranchSwitchId));
							switchDownStreamDAO.update(switchDownStream);
							System.out.println("<<<<<其他开关下游表：7_1>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
						}
					}
				}
			}
			//如果下游分支开关不为空
			if(StringUtils.isNotBlank(nextBranchSwitchIds)) {
				for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
					//如果下游对象的下游包含“上游开关，下有分支开关”的格式
					if(switchDownStream.getDownstream().contains(lastSwitchId+","+nextBranchSwitchId)) {
						switchDownStream.setDownstream(switchDownStream.getDownstream().replace(lastSwitchId+","+nextBranchSwitchId, lastSwitchId+","+switchId+","+nextBranchSwitchId));
						switchDownStreamDAO.update(switchDownStream);
						System.out.println("<<<<<其他开关下游表：8>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					}else if(lastSwitchId.equals(switchDownStream.getSwitchId())
							&&SwitchUpStreamService.streamContainsSwitch(switchDownStream.getDownstream(), nextBranchSwitchId)) {//如果当前下游对象为上游开关的对象且当前下游对象的下游包含下有分支开关
						switchDownStream.setDownstream(switchId+","+switchDownStream.getDownstream());
						switchDownStreamDAO.update(switchDownStream);
						System.out.println("<<<<<其他开关下游表：9>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					}
				}
			}
		}
		
		
		//如果上游分支开关不为空
		if(StringUtils.isNotBlank(lastBranchSwitchIds)) {
			//上游分支只有一个，就是握手
			if(!lastBranchSwitchIds.contains(",")&&lastBranchSwitchIds.contains("WS")){
				//switchDownStream.setDownstream(switchDownStream.getDownstream().replace(nextSwitchId+","+lastBranchSwitchId, nextSwitchId+","+switchId+","+lastBranchSwitchId));
				//switchDownStreamDAO.update(switchDownStream);
				for(SwitchDownStream wsSwitchDownStream : switchDownStreamDAO.getDownstream(lastBranchSwitchIds)) {
					//修改握手下游中包含下游开关的stream
					if(StringUtils.isNotBlank(nextSwitchId)){
						if(wsSwitchDownStream.getDownstream().contains(nextSwitchId)){
							System.out.println("无下游分支，包括下游开关");
							wsSwitchDownStream.setDownstream(switchId+","+wsSwitchDownStream.getDownstream());
							switchDownStreamDAO.update(wsSwitchDownStream);
							System.out.println("<<<<<其他开关下游表：10>>>>>"+"switchId:"+wsSwitchDownStream.getSwitchId()+"Downstream:"+wsSwitchDownStream.getDownstream());
						}else{
							
							//修改握手下游中包含下游分支开关的stream
							if(StringUtils.isNotBlank(nextBranchSwitchIds)){
								System.out.println("有下游分支");
								if(!nextBranchSwitchIds.contains(",")){
									if(wsSwitchDownStream.getDownstream().contains(nextBranchSwitchIds)){
										wsSwitchDownStream.setDownstream(switchId+","+wsSwitchDownStream.getDownstream());
										switchDownStreamDAO.update(wsSwitchDownStream);
										System.out.println("<<<<<其他开关下游表：11>>>>>"+"switchId:"+wsSwitchDownStream.getSwitchId()+"Downstream:"+wsSwitchDownStream.getDownstream());
									}
								}else{
									for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
										if(wsSwitchDownStream.getDownstream().contains(nextBranchSwitchId)){
											wsSwitchDownStream.setDownstream(switchId+","+wsSwitchDownStream.getDownstream());
											switchDownStreamDAO.update(wsSwitchDownStream);
											System.out.println("<<<<<其他开关下游表：12>>>>>"+"switchId:"+wsSwitchDownStream.getSwitchId()+"Downstream:"+wsSwitchDownStream.getDownstream());
										}
									}
								}
							}
						}
					}
					
					
				}
				
			}else{//上游分支开关有多个或者只有一个不是握手的
				for(String lastBranchSwitchId : lastBranchSwitchIds.split(",")) {
					//如果下游开关不为空
					if(StringUtils.isNotBlank(nextSwitchId)) {
						//如果是握手开关
						if(lastBranchSwitchId.contains("WS")){
							for(SwitchDownStream wsSwitchDownStream : switchDownStreamDAO.getDownstream(lastBranchSwitchId)) {
								//修改握手下游中包含下游开关的stream
								if(StringUtils.isNotBlank(nextSwitchId)&&wsSwitchDownStream.getDownstream().contains(nextSwitchId)){
									wsSwitchDownStream.setDownstream(switchId+","+wsSwitchDownStream.getDownstream());
									switchDownStreamDAO.update(wsSwitchDownStream);
									System.out.println("<<<<<其他开关下游表：13>>>>>"+"switchId:"+wsSwitchDownStream.getSwitchId()+"Downstream:"+wsSwitchDownStream.getDownstream());
								}
								//修改握手下游中包含下游分支开关的stream
								if(StringUtils.isNotBlank(nextBranchSwitchIds)){
									System.out.println("nextBranchSwitchIds:"+nextBranchSwitchIds);
									if(!nextBranchSwitchIds.contains(",")){
										if(wsSwitchDownStream.getDownstream().contains(nextBranchSwitchIds)){
											wsSwitchDownStream.setDownstream(switchId+","+wsSwitchDownStream.getDownstream());
											switchDownStreamDAO.update(wsSwitchDownStream);
											System.out.println("<<<<<其他开关下游表：14>>>>>"+"switchId:"+wsSwitchDownStream.getSwitchId()+"Downstream:"+wsSwitchDownStream.getDownstream());
										}
									}else{
										//有下游分支
										for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
											if(wsSwitchDownStream.getDownstream().contains(nextBranchSwitchId)){
												wsSwitchDownStream.setDownstream(switchId+","+wsSwitchDownStream.getDownstream());
												switchDownStreamDAO.update(wsSwitchDownStream);
												System.out.println("<<<<<其他开关下游表：15>>>>>"+"switchId:"+wsSwitchDownStream.getSwitchId()+"Downstream:"+wsSwitchDownStream.getDownstream());
											}
										}
									}
								}
								
							}
						}
					}
				}
			}
			
		}
		
		
		if(StringUtils.isBlank(nextSwitchId)){
			//如果上游分支包含握手
			if(StringUtils.isNotBlank(lastBranchSwitchIds)&&lastBranchSwitchIds.contains("WS")){
				//找到新开关的上游开关的两条上游，两条分开处理
				for(SwitchUpStream switchUpStream : switchUpStreamDAO.getUpstream(lastSwitchId)) {
					//握手那边的开关
					if(switchUpStream.getUpstream().contains("WS")){
						for(String cableSwitchId:(switchUpStream.getUpstream()+",").split(",")){
							if(StringUtils.isNotBlank(cableSwitchId)){
								//遍历找到包含握手或者上游开关的线路
								for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(cableSwitchId)) {
									if(switchDownStream.getDownstream().contains("WS")){
										String temp[]=switchDownStream.getDownstream().split(lastSwitchId);
										for(String pre:temp){
											if(pre.contains("WS")){
												SwitchDownStream newSwitchDownStream=new SwitchDownStream();
												newSwitchDownStream.setSwitchId(cableSwitchId);
												newSwitchDownStream.setDownstream(pre+switchId);
												switchDownStreamDAO.insert(newSwitchDownStream);
												System.out.println("<<<<<其他开关下游表：16>>>>>"+"switchId:"+newSwitchDownStream.getSwitchId()+"Downstream:"+newSwitchDownStream.getDownstream());
												break;
											}
										}
									}
								}
							}
						}
					}else{//除了握手的另外一边
						for(String cableSwitchId:(switchUpStream.getUpstream()+",").split(",")){
							if(StringUtils.isNotBlank(cableSwitchId)){
								//遍历找到包含握手或者上游开关的线路
								int count=0;
								for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(cableSwitchId)) {
									//记录是否添加过新线路17_..
									if(switchDownStream.getDownstream().contains("WS")){
										String temp[]=switchDownStream.getDownstream().split(lastSwitchId);
										for(String pre:temp){
											//(桌面上供电问题.dccx的第一个问题)
											/*if(pre.contains("WS")){
												SwitchDownStream newSwitchDownStream=new SwitchDownStream();
												newSwitchDownStream.setSwitchId(cableSwitchId);
												newSwitchDownStream.setDownstream(switchId+pre);
												switchDownStreamDAO.insert(newSwitchDownStream);
												System.out.println("<<<<<其他开关下游表：17>>>>>"+"switchId:"+newSwitchDownStream.getSwitchId()+"Downstream:"+newSwitchDownStream.getDownstream());
											}*/
											if(count==0){
												count++;
												if(!pre.contains("WS")){
													if(StringUtils.isNotBlank(pre)){
														
														pre=getReverseStream(pre);
														SwitchDownStream newSwitchDownStream=new SwitchDownStream();
														newSwitchDownStream.setSwitchId(cableSwitchId);
														newSwitchDownStream.setDownstream(pre+","+lastSwitchId+","+switchId);
														switchDownStreamDAO.insert(newSwitchDownStream);
														System.out.println("<<<<<其他开关下游表：17_1>>>>>"+"switchId:"+newSwitchDownStream.getSwitchId()+"Downstream:"+newSwitchDownStream.getDownstream());
													}else{
														
														SwitchDownStream newSwitchDownStream=new SwitchDownStream();
														newSwitchDownStream.setSwitchId(cableSwitchId);
														newSwitchDownStream.setDownstream(lastSwitchId+","+switchId);
														switchDownStreamDAO.insert(newSwitchDownStream);
														System.out.println("<<<<<其他开关下游表：17_2>>>>>"+"switchId:"+newSwitchDownStream.getSwitchId()+"Downstream:"+newSwitchDownStream.getDownstream());
													}
													
													
												}
											}
											
											
										}
									}
								}
							}
						}
					}
				}
				//给上游开关添加新的下游
				SwitchDownStream newSwitchDownStream=new SwitchDownStream();
				newSwitchDownStream.setSwitchId(lastSwitchId);
				newSwitchDownStream.setDownstream(switchId);
				switchDownStreamDAO.insert(newSwitchDownStream);
				System.out.println("给上游开关添加新的下游:"+lastSwitchId+":"+switchId);
				//给上有分支的握手添加新下游
				for(String lastSwitch:(lastBranchSwitchIds+",").split(",")){
					if(lastSwitch.contains("WS")){
						SwitchDownStream switchDownStream=new SwitchDownStream();
						switchDownStream.setSwitchId(lastSwitch);
						switchDownStream.setDownstream(switchId);
						switchDownStreamDAO.insert(switchDownStream);
						System.out.println("<<<<<其他开关下游表：18>>>>>"+"switchId:"+switchDownStream.getSwitchId()+"Downstream:"+switchDownStream.getDownstream());
					}
				}
				
			}else if(StringUtils.isNotBlank(lastBranchSwitchIds)){
				//没有上游分支，或者上游分支不包含握手
				for(SwitchUpStream switchUpStream : switchUpStreamDAO.getUpstream(lastSwitchId)) {
						for(String cableSwitchId:(switchUpStream.getUpstream()+",").split(",")){
							if(StringUtils.isNotBlank(cableSwitchId)){
								//遍历找到包含握手或者上游开关的线路
								for(SwitchDownStream switchDownStream : switchDownStreamDAO.getDownstream(cableSwitchId)) {
									if(switchDownStream.getDownstream().contains(lastSwitchId)){
										/*String temp[]=switchDownStream.getDownstream().split(lastSwitchId);
										String pre="";
										if(temp[1].equals("")){
											pre=","+lastSwitchId;
										}else{
											pre=","+lastSwitchId+temp[1];
										}
										SwitchDownStream newSwitchDownStream=new SwitchDownStream();
										newSwitchDownStream.setSwitchId(cableSwitchId);
										newSwitchDownStream.setDownstream(switchId+pre);
										switchDownStreamDAO.insert(newSwitchDownStream);
										System.out.println("没有上游分支，或者上游分支不包含握手"+cableSwitchId+":"+switchId+pre);*/
										//(QB943)(2209上面加一条线再添加一条开关)
										//如果正好是给上游分支开关添加下游
										if(lastBranchSwitchIds.contains(cableSwitchId)){
											SwitchDownStream newSwitchDownStream=new SwitchDownStream();
											newSwitchDownStream.setSwitchId(cableSwitchId);
											newSwitchDownStream.setDownstream(switchId);
											switchDownStreamDAO.insert(newSwitchDownStream);
											System.out.println("<<<<<其他开关下游表：19_1>>>>>"+"switchId:"+newSwitchDownStream.getSwitchId()+"Downstream:"+newSwitchDownStream.getDownstream());
											break;
										}
										String[] temp=switchDownStream.getDownstream().split(lastSwitchId);
										if(temp.length>0){
											if(temp.length>2){
												switchDownStream.setDownstream(switchDownStream.getDownstream()+",");
												temp=switchDownStream.getDownstream().split(lastSwitchId+",");
											}
											SwitchDownStream newSwitchDownStream=new SwitchDownStream();
											newSwitchDownStream.setSwitchId(cableSwitchId);
											if(switchUpStream.getUpstream().contains("WS")){
												newSwitchDownStream.setDownstream(temp[0]+switchId);
											}else{
												newSwitchDownStream.setDownstream(temp[0]+lastSwitchId+","+switchId);
											}
											switchDownStreamDAO.insert(newSwitchDownStream);
											System.out.println("<<<<<其他开关下游表：19>>>>>"+"switchId:"+newSwitchDownStream.getSwitchId()+"Downstream:"+newSwitchDownStream.getDownstream());
											break;
										}
										
									}
								}
							}
						}
					
				}
				//给上游开关添加新下游
				SwitchDownStream newSwitchDownStream=new SwitchDownStream();
				newSwitchDownStream.setSwitchId(lastSwitchId);
				newSwitchDownStream.setDownstream(switchId);
				switchDownStreamDAO.insert(newSwitchDownStream);
				System.out.println("<<<<<其他开关下游表：20>>>>>"+"switchId:"+newSwitchDownStream.getSwitchId()+"Downstream:"+newSwitchDownStream.getDownstream());
			}
			
		}
	}
	public boolean isSwitchDownStreamContainNextBranchSwitchIds(SwitchDownStream switchDownStream,String nextBranchSwitchIds){
		boolean isContain=false;
		if(!nextBranchSwitchIds.contains(",")){
			if(switchDownStream.getDownstream().contains(nextBranchSwitchIds)){
				isContain=true;
			}
		}
		for(String nextBranchSwitchId : nextBranchSwitchIds.split(",")) {
			if(switchDownStream.getDownstream().contains(nextBranchSwitchId)){
				isContain=true;
			}
		}
		return isContain;
	}
	
	public void deleteWithSwitchId(String switchId) {
		switchDownStreamDAO.deleteWithSwitchId(switchId);
	}
	public void deleteSwitchIdWithSwitchId(String switchId) {
		for(SwitchDownStream switchDownStream : switchDownStreamDAO.getAll()) {
			if(SwitchUpStreamService.streamContainsSwitch(switchDownStream.getDownstream(), switchId)){
				String streamStr = SwitchUpStreamService.getDeleteSwitchIdFromStream(switchDownStream.getDownstream(), switchId);
				if(StringUtils.isNotBlank(streamStr)){
					switchDownStream.setDownstream(streamStr);
					switchDownStreamDAO.update(switchDownStream);
				} else {
					switchDownStreamDAO.deleteWithId(switchDownStream.getId());
				}
			}
		}
	}
	/**
	 * 根据开关id获取下游集合
	 * @param switchId
	 * @return
	 */
	public List<SwitchDownStream> getSwitchDownStreamListWithSwitchId(String switchId) {
		return switchDownStreamDAO.getDownstream(switchId);
	}
	@Autowired
	private SwitchDownStreamDao switchDownStreamDAO;
	
	@Autowired
	private SwitchUpStreamDao switchUpStreamDAO;
	
	private String getReverseStream(String stream){
		if(StringUtils.isNotBlank(stream)){
			if(stream.charAt(stream.length()-1)==','){
				stream=stream.replace(stream.charAt(stream.length()-1)+"","");
			}
			if(stream.charAt(0)==','){
				stream=stream.replace(stream.charAt(0)+"","");
			}
			List<String> list=new ArrayList<String>();
			for(String switch_:stream.split(",")){
				list.add(switch_);
			}
			StringBuffer result=new StringBuffer("");
			for(int i=list.size()-1;i>=0;i--){
				if(i==0){
					result.append(list.get(i));
				}else{
					result.append(list.get(i)).append(",");
				}
			}
			return result.toString();
		}
		return "";
	}
}