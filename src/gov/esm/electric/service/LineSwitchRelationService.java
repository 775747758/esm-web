package gov.esm.electric.service;

import gov.esm.electric.dao.LineSwitchRelationDao;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.LineSwitchRelation;
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
			for(SwitchUpStream switchUpStream : switchUpStreamService.getSwitchUpStreamListWithSwitchId(switchId)) {
				if(StringUtils.isNotBlank(switchUpStream.getUpstream())&&!switchUpStream.getUpstream().contains("WS")) {
					for(String sId : switchUpStream.getUpstream().split(",")) {
						if(!switchList.contains(sId)) {
							lineSwitchRelationDao.insert(lineId, sId);
							switchList.add(sId);
						}
					}
				} else if (StringUtils.isNotBlank(switchUpStream.getUpstream())&&switchUpStream.getUpstream().contains("WS")) {
					for(String sId : switchUpStream.getUpstream().split(",")) {
						if(sId.contains("WS")){
							lineSwitchRelationDao.insert(lineId, sId);
						}
					}
				}
			}
		}
	}
	/**
	 * 根据开关id,上游开关id,新加线路id建立新开关与线路的关系
	 * @param switchId
	 * @param lastSwitchId
	 * @param lineId
	 * @param parentLineId 
	 */
	public void buildNewLineSwitchRelation(String switchId, String lastSwitchId, String lineId, String parentLineId, String lastBranchSwitchIds, String lastBranchLineIds) {
		for(LineSwitchRelation lineSwitchRelation : lineSwitchRelationDao.getRelationsBySwitchId(lastSwitchId)) {
			if(StringUtils.isNotBlank(lastBranchSwitchIds)) {
				if(!lastBranchSwitchIdsRelationContainLineId(lineSwitchRelation.getLineId(), lastBranchSwitchIds) && !lastBranchLineIds.contains(lineSwitchRelation.getLineId())) {
					if(!lineSwitchRelation.getLineId().equals(parentLineId)) {
						LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
						newLineSwitchRelation.setLineId(lineSwitchRelation.getLineId());
						newLineSwitchRelation.setSwitchId(switchId);
						lineSwitchRelationDao.insert(newLineSwitchRelation);
					}
				}
			} else {
				if(!lineSwitchRelation.getLineId().equals(parentLineId)) {
					LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
					newLineSwitchRelation.setLineId(lineSwitchRelation.getLineId());
					newLineSwitchRelation.setSwitchId(switchId);
					lineSwitchRelationDao.insert(newLineSwitchRelation);
				}
			}
		}
		for(LineSwitchRelation lineSwitchRelation : lineSwitchRelationDao.getRelationsByLineId(parentLineId)) {
			LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
			newLineSwitchRelation.setLineId(lineId);
			newLineSwitchRelation.setSwitchId(lineSwitchRelation.getSwitchId());
			lineSwitchRelationDao.insert(newLineSwitchRelation);
		}
		LineSwitchRelation newLineSwitchRelation = new LineSwitchRelation();
		newLineSwitchRelation.setLineId(lineId);
		newLineSwitchRelation.setSwitchId(switchId);
		lineSwitchRelationDao.insert(newLineSwitchRelation);
	}
	
	private boolean lastBranchSwitchIdsRelationContainLineId(String lineId, String lastBranchSwitchIds) {
		for(String lastBranchSwitchId : lastBranchSwitchIds.split(",")) {
			List<LineSwitchRelation> lineSwitchRelationList = lineSwitchRelationDao.getRelationsBySwitchId(lastBranchSwitchId);
			for(LineSwitchRelation lineSwitchRelation : lineSwitchRelationList) {
				if(lineSwitchRelation.getLineId().equals(lineId)) {
					return true;
				}
			}
		}
		return false;
	}

	@Autowired
	private CableSwitchService cableSwitchService;
	@Autowired
	private SwitchUpStreamService switchUpStreamService;
	@Autowired
	private SwitchDownStreamService switchDownStreamService;

}