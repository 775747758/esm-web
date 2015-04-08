package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.SwitchUpStream;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

@Component
public class SwitchUpStreamDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<SwitchUpStream> rowMapper = new BeanPropertyRowMapper<SwitchUpStream>(
			SwitchUpStream.class);

	private static final String sql_insert = "insert into switch_upstream(switchId,upstream) values(?,?)";

	public int insert(String switchId, String upstream) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, switchId, upstream);
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		return holder.getKey().intValue();
	}

	public void insert(SwitchUpStream entity) {
		int id = this.insert(entity.getSwitchId(), entity.getUpstream());
		entity.setId(id);
	}

	private static final String sql_getUpstream = "select id,switchId,upstream from switch_upstream where switchId=?";

	public List<SwitchUpStream> getUpstream(String switchId) {
		return this.jdbcTemplate.query(sql_getUpstream,
				new Object[] { switchId }, rowMapper);
	}
}
