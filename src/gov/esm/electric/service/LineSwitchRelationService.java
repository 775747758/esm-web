package gov.esm.electric.service;

import gov.esm.electric.dao.LineSwitchRelationDao;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.LineSwitchRelation;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchUpStream;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月29日
 */
@Service
public class LineSwitchRelationService {

	@Resource
	private LineSwitchRelationDao lineSwitchRelationDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public boolean insert(LineSwitchRelation entity) {
		return this.lineSwitchRelationDao.insert(entity);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insert(String lineId, String switchId) {
		return this.lineSwitchRelationDao.insert(lineId, switchId);
	}

	public List<LineSwitchRelation> getRelationsBySwitchId(String switchId) {
		return this.lineSwitchRelationDao.getRelationsBySwitchId(switchId);
	}

	public Set<String> getLinesBySwitchId(String switchId) {
		List<LineSwitchRelation> lst = this.getRelationsBySwitchId(switchId);
		Set<String> set = new HashSet<String>();
		for (LineSwitchRelation r : lst) {
			set.add(r.getLineId());
		}
		return set;
	}

	public Set<String> getLinesBySwitchs(Collection<CableSwitch> switchs) {
		Set<String> set = new HashSet<String>();
		for (CableSwitch s : switchs) {
			Set<String> t = this.getLinesBySwitchId(s.getId());
			set.addAll(t);
		}
		return set;
	}

	public List<LineSwitchRelation> getRelationsByLineId(String lineId) {
		return this.lineSwitchRelationDao.getRelationsByLineId(lineId);
	}

	public int deleteByLineId(String lineId) {
		return this.lineSwitchRelationDao.deleteByLineId(lineId);
	}

	public int deleteBySwitchId(String switchId) {
		return this.lineSwitchRelationDao.deleteBySwitchId(switchId);
	}

	public void saveWithLineIdUpstreamSwitchId(String lineId, String switchId) {
		if (StringUtils.isNotBlank(switchId)) {
			lineSwitchRelationDao.insert(lineId, switchId);
			List<String> switchList = new ArrayList<String>();
			for (SwitchUpStream switchUpStream : switchUpStreamService
					.getSwitchUpStreamListWithSwitchId(switchId)) {
				if (StringUtils.isNotBlank(switchUpStream.getUpstream())
						&& !switchUpStream.getUpstream().contains("WS")) {
					for (String sId : switchUpStream.getUpstream().split(",")) {
						if (!switchList.contains(sId)) {
							lineSwitchRelationDao.insert(lineId, sId);
							switchList.add(sId);
						}
					}
				} else if (StringUtils.isNotBlank(switchUpStream.getUpstream())
						&& switchUpStream.getUpstream().contains("WS")) {
					for (String sId : switchUpStream.getUpstream().split(",")) {
						if (sId.contains("WS")) {
							lineSwitchRelationDao.insert(lineId, sId);
						}
					}
				}
			}
		}
	}

	/**
	 * 根据开关id,上游开关id,新加线路id建立新开关与线路的关系
	 * 
	 * @param switchId
	 * @param lastSwitchId
	 * @param lineId
	 * @param parentLineId
	 * @param nextSwitchId
	 * @param newBranchLineIds
	 */
	public void buildNewLineSwitchRelation(String switchId, String lastSwitchId, String lineId, String parentLineId, String lastBranchSwitchIds, String lastBranchLineIds, String nextSwitchId, String newBranchLineIds,String nextBranchSwitchIds) {
		
		/*****************************给新开关添加影响的线路***************************************/
		
		//添加新开关所在的线路（新线路）
		LineSwitchRelation lineSwitchRelation = new LineSwitchRelation();
		lineSwitchRelation.setLineId(lineId);
		lineSwitchRelation.setSwitchId(switchId);
		lineSwitchRelationDao.insert(lineSwitchRelation);
				//上游分支包含握手
				if(lastBranchSwitchIds.contains("WS")){
					System.out.println("<line_switch_relation>"+"1:"+"上游分支包含握手（用下游）");
					//将用户选择的线路添加进去
					if(StringUtils.isNotBlank(newBranchLineIds)){
						for(String newBranchLineId : newBranchLineIds.split(",")) {
							LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
							newLineSwitchRelation.setLineId(newBranchLineId);
							newLineSwitchRelation.setSwitchId(switchId);
							lineSwitchRelationDao.insert(newLineSwitchRelation);
						}
					}
					//有下游开关(将下游开关所影响的线路加进去)
					if(StringUtils.isNotBlank(nextSwitchId)){
						//将下游开关所影响的线路添加进去
						for(LineSwitchRelation nextLineSwitchRelation : lineSwitchRelationDao.getRelationsBySwitchId(nextSwitchId)) {
							LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
							newLineSwitchRelation.setLineId(nextLineSwitchRelation.getLineId());
							newLineSwitchRelation.setSwitchId(switchId);
							lineSwitchRelationDao.insert(newLineSwitchRelation);
						}
					}
					
					//有下游分支开关(将下游分支开关所影响的线路加进去)
					if(StringUtils.isNotBlank(nextBranchSwitchIds)){
						for(String nextSwitchId_:nextBranchSwitchIds.split(",")){
							for(LineSwitchRelation nextLineSwitchRelation : lineSwitchRelationDao.getRelationsBySwitchId(nextSwitchId_)) {
								LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
								newLineSwitchRelation.setLineId(nextLineSwitchRelation.getLineId());
								newLineSwitchRelation.setSwitchId(switchId);
								lineSwitchRelationDao.insert(newLineSwitchRelation);
							}
						}
					}
					
				}else{
					System.out.println("<line_switch_relation>"+"2:"+"上游分支不包含握手（用上游）");
					//循环所有上游开关所影响的线路
					for(LineSwitchRelation lineSwitchRelation_ : lineSwitchRelationDao.getRelationsBySwitchId(lastSwitchId)) {
							//排除上游分支所影响的线路和选择的那些线路
							if(!lastBranchSwitchIdsRelationContainLineId(lineSwitchRelation_.getLineId(), lastBranchSwitchIds) && !lastBranchLineIds.contains(lineSwitchRelation_.getLineId())) {
								//排除开关所在父线路
								if(!lineSwitchRelation_.getLineId().equals(parentLineId)) {
									LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
									newLineSwitchRelation.setLineId(lineSwitchRelation_.getLineId());
									newLineSwitchRelation.setSwitchId(switchId);
									lineSwitchRelationDao.insert(newLineSwitchRelation);
								}
							}
					}
				}
		/************************************修改周围开关所影响的线路***********************************/
		
				//给所有有父线路的开关  添加新产生的线路（添加一个开关，线路一分为二）
				for(LineSwitchRelation lineSwitchRelation_ : lineSwitchRelationDao.getRelationsByLineId(parentLineId)) {
					LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
					newLineSwitchRelation.setLineId(lineId);
					newLineSwitchRelation.setSwitchId(lineSwitchRelation_.getSwitchId());
					lineSwitchRelationDao.insert(newLineSwitchRelation);
				}

	}

	private boolean lastBranchSwitchIdsRelationContainLineId(String lineId,
			String lastBranchSwitchIds) {
		for (String lastBranchSwitchId : lastBranchSwitchIds.split(",")) {
			List<LineSwitchRelation> lineSwitchRelationList = lineSwitchRelationDao
					.getRelationsBySwitchId(lastBranchSwitchId);
			for (LineSwitchRelation lineSwitchRelation : lineSwitchRelationList) {
				if (lineSwitchRelation.getLineId().equals(lineId)) {
					return true;
				}
			}
		}
		return false;
	}

	private boolean isLineSwitchRelationContain(String lineId, String switchId) {
		boolean isContain = false;
		Set<String> t = getLinesBySwitchId(switchId);
		for (String s : t) {
			if (s.equals(lineId)) {
				isContain = true;
			}
		}
		return isContain;
	}

	@Autowired
	private CableSwitchService cableSwitchService;
	@Autowired
	private SwitchUpStreamService switchUpStreamService;
	@Autowired
	private SwitchDownStreamService switchDownStreamService;

}