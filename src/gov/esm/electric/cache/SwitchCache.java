package gov.esm.electric.cache;

import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.service.CableSwitchService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

@Component
public class SwitchCache {
	private static final Map<String, CableSwitch> switchCache = new HashMap<String, CableSwitch>();
	private static final Logger logger = Logger.getLogger("stdout");

	@Resource
	private CableSwitchService cableSwitchService;

//	public void init() {
//		List<CableSwitch> switchs = cableSwitchService.getAllSwitch();
//		logger.info("loading switch from database...");
//		for (int i = 0; i < switchs.size(); i++) {
//			CableSwitch entity = switchs.get(i);
//			switchCache.put(entity.getId(), entity);
//			logger.info("loaded switch:" + entity.getId());
//		}
//		logger.info("loaded all switch...");
//	}
//
//	public CableSwitch getCableSwitch(String id) {
//		return switchCache.get(id);
//	}
//
//	public void put(CableSwitch entity) {
//		switchCache.put(entity.getId(), entity);
//	}
}
