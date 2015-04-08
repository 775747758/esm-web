package gov.esm.electric.service;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.assistor.StringAssistor;
import gov.esm.electric.domain.Role;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.dao.support.DataAccessUtils;
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
public class RoleService {
	@Resource
	private JdbcTemplate jdbcTemplate;

	static final RowMapper<Role> rowMapper = new BeanPropertyRowMapper<Role>(
			Role.class);

	private static final String sql_insert = "insert into role (name)values(?)";

	public void insert(Role entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getName());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		entity.setId(holder.getKey().intValue());
	}

	private static final String sql_update = "update role set name=? where id=?";

	public int update(Role entity) {
		return this.jdbcTemplate.update(sql_update, entity.getName(),
				entity.getId());
	}

	private static final String sql_getRole = "select id,name from role where id=?";

	public Role getRole(int id) {
		List<Role> lst = this.jdbcTemplate.query(sql_getRole, rowMapper, id);
		return DataAccessUtils.singleResult(lst);
	}

	private static final String sql_getRoles = "select id,name from role ";

	/**
	 * 查询指定id的角色，如果 @param ids 为null则查询所有角色
	 * 
	 * @param ids
	 * @return
	 */
	public List<Role> getRoles(List<Integer> ids) {
		StringBuilder sql = null;
		if (ids != null && ids.size() > 0) {
			sql = new StringBuilder(64);
			sql.append(sql_getRoles);
			sql.append(" where id in(");
			String in = StringAssistor.join(ids, ",");
			sql.append(in).append(")");
		}
		return this.jdbcTemplate.query(
				sql == null ? sql_getRoles : sql.toString(), rowMapper);
	}
}
