package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.Role;
import gov.esm.electric.domain.UserRoleRelation;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年12月2日
 */
@Component
public class UserRoleRelationDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	@Transactional(isolation = Isolation.SERIALIZABLE)
	public void insert(int userId, int[] roleIds) {
		UserRoleRelation entity = new UserRoleRelation();
		for (int i = 0; i < roleIds.length; i++) {
			entity.setUserId(userId);
			entity.setRoleId(roleIds[i]);
			this.insert(entity);
		}
	}

	private static final String sql_insert = "insert into user_role_relation(userId,roleId)values(?,?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int insert(UserRoleRelation entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getUserId(),
						entity.getRoleId());
		return this.jdbcTemplate.update(creator);
	}

	private static final String sql_delete = "delete from user_role_relation where userId=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int delete(int userId) {
		return this.jdbcTemplate.update(sql_delete, userId);
	}

	private static final String sql_getRolesByUserId = "select role.* from user_role_relation as r left join role on r.roleId=role.id and r.userId=?";

	/**
	 * 根据用户编号得到该用户所属角色
	 * 
	 * @param userId
	 * @return
	 */

	public List<Role> getRolesByUserId(int userId) {
		return this.jdbcTemplate.query(sql_getRolesByUserId, RoleDao.rowMapper,
				userId);
	}
}
