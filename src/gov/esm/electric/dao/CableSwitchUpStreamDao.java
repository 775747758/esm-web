package gov.esm.electric.dao;

import gov.esm.electric.domain.CableSwitchUpStream;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

@Component
public class CableSwitchUpStreamDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<CableSwitchUpStream> rowMapper = new BeanPropertyRowMapper<CableSwitchUpStream>(
			CableSwitchUpStream.class);

	private static final String sql_insert = "insert into cable_switch_upstream(switchId,upstream) values(?,?)";

	public void insert(String switchId, String upstream) {
		this.jdbcTemplate.update(sql_insert, switchId, upstream);
	}

	private static final String sql_getUpstream = "select id,switchId,upstream from cable_switch_upstream where switchId=?";

	public List<CableSwitchUpStream> getUpstream(String switchId) {
		return this.jdbcTemplate.query(sql_getUpstream,
				new Object[] { switchId }, rowMapper);
	}
}
