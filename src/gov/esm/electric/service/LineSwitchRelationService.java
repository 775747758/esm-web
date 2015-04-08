package gov.esm.electric.service;

import gov.esm.electric.dao.LineSwitchRelationDao;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.LineSwitchRelation;

import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

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

	public List<LineSwitchRelation> getRelationsByLineId(int linePartId) {
		return this.lineSwitchRelationDao.getRelationsByLineId(linePartId);
	}

	public int deleteByLineId(int lineId) {
		return this.lineSwitchRelationDao.deleteByLineId(lineId);
	}

	public int deleteBySwitchId(int switchId) {
		return this.lineSwitchRelationDao.deleteBySwitchId(switchId);
	}
}
