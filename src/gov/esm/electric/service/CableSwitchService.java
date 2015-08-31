package gov.esm.electric.service;

import gov.esm.assistor.DataSource;
import gov.esm.electric.cache.SwitchCache;
import gov.esm.electric.dao.CableSwitchDao;
import gov.esm.electric.dao.StationSwitchStreamDao;
import gov.esm.electric.dao.SwitchDownStreamDao;
import gov.esm.electric.dao.SwitchUpStreamDao;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchStream;
import gov.esm.electric.domain.SwitchUpStream;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月27日
 */
@Service
public class CableSwitchService {

	@Resource
	private CableSwitchDao cableSwitchDao;

	@Resource
	private SwitchUpStreamDao switchUpStreamDao;

	@Resource
	private SwitchDownStreamDao switchDownStreamDao;

	@Resource
	private SwitchCache switchCache;
	
	@Resource
	private StationSwitchStreamDao stationSwitchStreamDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(CableSwitch entity) {
		this.cableSwitchDao.insert(entity);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int update(CableSwitch entity) {
		int affected = this.cableSwitchDao.update(entity);
		return affected;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateStatus(int status, String id) {
		System.out.println(status);
		int affected = this.cableSwitchDao.updateStatus(status, id);
		CableSwitch entity = getCableSwitch(id);
		if (entity != null) {
			entity.setStatus(status);
		}
		return affected;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public CableSwitch getCableSwitch(String id) {
		return this.cableSwitchDao.getCableSwitch(id);
	}

	/**
	 * 获得所有开关的　id 和 状态　
	 * 
	 * @return
	 */
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Map<String, Object>> getAll() {
		return this.cableSwitchDao.getAll();
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<CableSwitch> getAllSwitch() {
		return this.cableSwitchDao.getAllSwitch();
	}

	/**
	 * 得到一个开关的上游开关集合
	 * 
	 * @param switchId
	 *            开关id
	 * @return switchId的所有上游开关
	 */
	public List<SwitchUpStream> getUpstreamSwitchs(String switchId) {
		return switchUpStreamDao.getUpstream(switchId);
	}

	/**
	 * 得到一个开关的下游开关集合
	 * 
	 * @param id
	 * @param container
	 */
	public List<SwitchDownStream> getDownStreamSwitchs(String switchId) {
		return this.switchDownStreamDao.getDownstream(switchId);
	}
	
	/**
	 * 得到一个变电站所影响的所有开关（不包括握手开关）
	 * 
	 * @param switchId
	 */
	public List<SwitchStream> getStationStreamSwitchs(String switchId) {
		return this.stationSwitchStreamDao.getStationStream(switchId);
	}
	
	/**
	 * 设置变电站状态
	 * 
	 * @param switchId
	 */
	public int setStationStatus(String switchId,int status) {
		return this.stationSwitchStreamDao.setStationStatus(switchId,status);
	}

	/**
	 * 得到一个开关的指定状态的下游开关集合　
	 */
	public List<CableSwitch> getDownStreamByStatus(String switchId, int status) {
		return this.cableSwitchDao.getDownStreamByStatus(switchId, status);
	}

	/**
	 * 得到指定开关集合中状态为断开的开关数量
	 * 
	 * @param switchs
	 * @return 断开开关的数量
	 */
	public int openedSwitchs(String[] switchs) {
		return this.cableSwitchDao.getOpendSwitchs(switchs);
	}
	
	
	public List<Map<String, Object>> getSwitchByKeyword(String keyword) {
		return cableSwitchDao.getSwitchByKeyword(keyword);
	}
	
	
	public List<Map<String, Object>> getSwitchNameByKeyword(String keyword) {
		return cableSwitchDao.getSwitchNameByKeyword(keyword);
	}
	
	/**
	 * 根据开关id,开关编码,开关名称添加一个开关
	 * @param switchId
	 * @param switchCode
	 * @param switchName
	 */
	public void addNormalSwithWithIdCodeName(String switchId, String switchCode, String switchName) {
		CableSwitch cableSwitch = new CableSwitch();
		cableSwitch.setId(switchId);
		cableSwitch.setCode(switchCode);
		cableSwitch.setName(switchName);
		cableSwitch.setType(DataSource.SWITCH_TYPE_NORMAL);
		cableSwitch.setStatus(DataSource.STATUS_SWITCH_CLOSE);
		cableSwitchDao.insert(cableSwitch);
	}

	public void updateWithSwitchIdSwitchTitle(String switchId, String switchTitle) {
		CableSwitch cableSwitch = cableSwitchDao.getCableSwitch(switchId);
		cableSwitch.setName(switchTitle);
		cableSwitchDao.update(cableSwitch);
	}
	
	public void deleteWithId(String id) {
		cableSwitchDao.deleteWithId(id);
	}
}