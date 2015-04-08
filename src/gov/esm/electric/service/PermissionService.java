package gov.esm.electric.service;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.assistor.StringAssistor;
import gov.esm.electric.domain.Permission;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

/**
 * 
 * @author XueLiang
 * @date 2014年11月30日
 */
@Service
public class PermissionService {
	@Resource
	private JdbcTemplate jdbcTemplate;
	static final RowMapper<Permission> rowMapper = new BeanPropertyRowMapper<Permission>(
			Permission.class);

	private static final String sql_insert = "insert into permission(name,url,description,leaderId,seq)values(?,?,?,?,?)";

	public void insert(Permission entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getName(),
						entity.getUrl(), entity.getDescription());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		entity.setId(holder.getKey().intValue());
	}

	private static final String sql_update = "update permission set name=?,url=?,description=?,leaderId=?,seq=? where id=?";

	public int update(Permission entity) {
		return this.jdbcTemplate.update(sql_update, entity.getName(),
				entity.getUrl(), entity.getDescription(), entity.getLeaderId(),
				entity.getId());
	}

	private static final String sql_getPermissions = "select id,name,url,description,leaderId,seq from permission where leaderId < 0 ";

	public List<Permission> getPermissions(List<Integer> ids) {
		if (ids != null && ids.size() > 0) {
			StringBuilder sql = new StringBuilder(128);
			sql.append(sql_getPermissions);
			String in = StringAssistor.join(ids, ",");
			sql.append(" or id in(").append(in).append(")");
			return this.jdbcTemplate.query(sql.toString(), rowMapper, in);
		} else {
			return this.jdbcTemplate.query(sql_getPermissions, rowMapper);
		}
	}
}
