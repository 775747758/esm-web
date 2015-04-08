package gov.esm.electric.dao;

import gov.esm.electric.domain.Status;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

@Component
public class StatusDao {
	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<Status> rowMapper = new BeanPropertyRowMapper<Status>(Status.class);
	private static final String sql_getStatus = "select id,name from status where code=?";

	public List<Status> getStatus(String code) {
		return this.jdbcTemplate.query(sql_getStatus, new Object[] { code },
				rowMapper);
	}
}
