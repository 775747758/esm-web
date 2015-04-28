package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.LineSwitchRelation;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月29日
 */
@Component
public class LineSwitchRelationDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<LineSwitchRelation> rowMapper = new BeanPropertyRowMapper<LineSwitchRelation>(
			LineSwitchRelation.class);

	@Transactional(propagation = Propagation.SUPPORTS)
	public boolean insert(LineSwitchRelation entity) {
		int affected = this.insert(entity.getLineId(), entity.getSwitchId());
		return affected > 0;
	}

	private static final String sql_insert = "insert into line_switch_relation(lineId,switchId)values(?,?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insert(String lineId, String switchId) {
		PreparedStatementCreator creator = SpringJdbcAssistor.getPreparedStatementCreator(sql_insert, lineId, switchId);
		return this.jdbcTemplate.update(creator);
	}

	private static final String sql_getRelationsBySwitchId = "select lineId,switchId from line_switch_relation where switchId=?";

	public List<LineSwitchRelation> getRelationsBySwitchId(String switchId) {
		return this.jdbcTemplate.query(sql_getRelationsBySwitchId, rowMapper,
				switchId);
	}

	private static final String sql_getRelationsByLineId = "select lineId,switchId from line_switch_relation where lineId=?";

	public List<LineSwitchRelation> getRelationsByLineId(String lineId) {
		return this.jdbcTemplate.query(sql_getRelationsByLineId, rowMapper, lineId);
	}

	private static final String sql_deleteByLineId = "delete from line_switch_relation where lineId=?";

	public int deleteByLineId(String lineId) {
		return this.jdbcTemplate.update(sql_deleteByLineId, lineId);
	}

	private static final String sql_deleteBySwitchId = "delete from line_switch_relation where switchId=?";

	public int deleteBySwitchId(String switchId) {
		return this.jdbcTemplate.update(sql_deleteBySwitchId, switchId);
	}
}
