package gov.esm.electric.service;

import gov.esm.electric.dao.CableLineDao;
import gov.esm.electric.domain.CableLine;

import java.util.Collection;
import java.util.Iterator;
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
public class CableLineService {
	@Resource
	private CableLineDao cableLineDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(CableLine entity) {
		this.cableLineDao.insert(entity);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public int update(CableLine entity) {
		return this.cableLineDao.update(entity);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public CableLine getCableLine(int id) {
		return this.cableLineDao.getCableLine(id);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<CableLine> getCableLines(int index, int size) {
		return this.cableLineDao.getCableLines(index, size);
	}

	/**
	 * 获得所有线的id 和 状态　
	 * 
	 * @return
	 */
	@Transactional
	public List<Map<String, Object>> getAll() {
		return this.cableLineDao.getAll();
	}

	@Transactional
	public boolean updateLineStatus(int status, Collection<String> lineIds) {
		Iterator<String> it = lineIds.iterator();
		int affected = 0;
		while (it.hasNext()) {
			affected += this.updateCableLineStatus(it.next(), status);
		}
		return affected == lineIds.size();
	}

	@Transactional
	public boolean updateLineStatus(Collection<CableLine> lines, int status) {
		Iterator<CableLine> it = lines.iterator();
		int affected = 0;
		while (it.hasNext()) {
			affected += this.updateCableLineStatus(it.next().getId(), status);
		}
		return affected == lines.size();
	}

	@Transactional
	public int updateCableLineStatus(String lineId, int status) {
		return this.cableLineDao.updateCableLineStatus(lineId, status);
	}
}
