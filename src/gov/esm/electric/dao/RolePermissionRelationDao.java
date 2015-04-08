package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.Permission;
import gov.esm.electric.domain.RolePermissionRelation;

import java.util.LinkedList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月30日
 */
@Component
public class RolePermissionRelationDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	@Transactional(isolation = Isolation.SERIALIZABLE)
	public void insert(int roleId, int[] permissionIds) {
		RolePermissionRelation entity = new RolePermissionRelation();
		for (int i = 0; i < permissionIds.length; i++) {
			entity.setRoleId(roleId);
			entity.setPermissionId(permissionIds[i]);
			this.insert(entity);
		}
	}

	private static final String sql_insert = "insert into role_permission_relation(roleId,permissionId)values(?,?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(RolePermissionRelation entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getRoleId(),
						entity.getPermissionId());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		entity.setId(holder.getKey().intValue());
	}

	private static final String sql_getPermissionsByRoleId = "select * from permission where leaderId < 0 union all select permission.* from role_permission_relation as relation inner join permission on relation.permissionId=permission.id and relation.roleId=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Permission> getPermissionsByRoleId(int roleId) {
		return this.jdbcTemplate.query(sql_getPermissionsByRoleId,
				PermissionDao.rowMapper, roleId);
	}

	public List<Permission> getPermissions(List<Integer> roleIds) {
		List<Permission> lst = new LinkedList<Permission>();
		if (roleIds != null && roleIds.size() > 0) {
			for (Integer roleId : roleIds) {
				List<Permission> permissions = this
						.getPermissionsByRoleId(roleId);
				lst.addAll(permissions);
			}
		}
		return lst;
	}
}
