package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.SwitchDownStream;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

@Component
public class SwitchDownStreamDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<SwitchDownStream> rowMapper = new BeanPropertyRowMapper<SwitchDownStream>(
			SwitchDownStream.class);

	private static final String sql_insert = "insert into switch_downstream(switchId,downstream) values(?,?)";

	public int insert(String switchId, String downstream) {
		PreparedStatementCreator creator = SpringJdbcAssistor.getPreparedStatementCreator(sql_insert, switchId, downstream);
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		return holder.getKey().intValue();
	}

	public void insert(SwitchDownStream entity) {
		int id = this.insert(entity.getSwitchId(), entity.getDownstream());
		entity.setId(id);
	}

	private static final String sql_getDownstream = "select id,switchId,downstream from switch_downstream where switchId=?";

	/**
	 * 得到一个开关的所有下游开关
	 * 
	 * @param switchId
	 * @return
	 */
	public List<SwitchDownStream> getDownstream(String switchId) {
		return this.jdbcTemplate.query(sql_getDownstream, new Object[] { switchId }, rowMapper);
	}

}
