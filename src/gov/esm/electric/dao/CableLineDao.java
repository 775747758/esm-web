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
	public CableLine getCableLine(String id) {
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
	
	
	private static  String sql_getLinesByKeyword = "select distinct name from cable_line where name like";
	/**
	 * 得到所有以keyword开头的线路
	 * 
	 * @return
	 */
	public List<Map<String, Object>> getLinesByKeyword(String keyword) {
		//return this.jdbcTemplate.query(sql_getAllSwitch, rowMapper);
		StringBuilder temp=new StringBuilder(sql_getLinesByKeyword);
		temp.append(" ").append("'"+keyword+"%'");
		System.out.println(temp.toString());
		return jdbcTemplate.queryForList(temp.toString());
	}
	
	private static  String sql_getAllLines = "select distinct * from cable_line";
	/**
	 * 得到所有以keyword开头的线路
	 * 
	 * @return
	 */
	public List<CableLine> getAllLines() {
		return jdbcTemplate.query(sql_getAllLines,rowMapper);
	}
	private static final String sql_deleteById = "delete from cable_line where id=?";

	public int deleteWithId(String lineId) {
		return this.jdbcTemplate.update(sql_deleteById, lineId);
	}
}
