package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.CableLine;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月27日
 */
@Component
public class CableLineDao {
	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<CableLine> rowMapper = new BeanPropertyRowMapper<CableLine>(CableLine.class);

	private static final String sql_insert = "insert into cable_line(id,code,name,parentId,status)values(?,?,?,?,?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(CableLine entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor.getPreparedStatementCreator(sql_insert, entity.getId(),entity.getCode(),
				entity.getName(), entity.getParentId(), entity.getStatus());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
	}

	private static final String sql_update = "update cable_line set code=?,name=?,parentId=?,status =? where id=? ";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int update(CableLine entity) {
		return this.jdbcTemplate.update(sql_update, entity.getCode(), entity.getName(), entity.getParentId(),
				entity.getStatus(), entity.getId());
	}

	private static final String sql_getCableLine = "select id,code,name,parentId,status from cable_line where id=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public CableLine getCableLine(int id) {
		return this.jdbcTemplate.queryForObject(sql_getCableLine, rowMapper, id);
	}

	private static final String sql_getCableLines = "select  id,code,name,parentId,status from cable_line order by id desc limit ?,?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<CableLine> getCableLines(int index, int size) {
		return this.jdbcTemplate.query(sql_getCableLines, rowMapper, (index - 1) * size, size);
	}

	private static final String sql_getAll = "select id,status from cable_line";

	public List<Map<String, Object>> getAll() {
		return this.jdbcTemplate.queryForList(sql_getAll);
	}

	private static final String sql_updateCableLineStatus = "update cable_line set status=? where id=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateCableLineStatus(String lineId, int status) {
		return this.jdbcTemplate.update(sql_updateCableLineStatus, status, lineId);
	}
}
