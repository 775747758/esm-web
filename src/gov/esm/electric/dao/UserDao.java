package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.User;
import gov.esm.electric.entity.UserVo;

import java.util.List;

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
 * @date 2014年11月26日
 */
@Component
public class UserDao {
	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<User> rowMapper = new BeanPropertyRowMapper<User>(
			User.class);

	private static final RowMapper<UserVo> rowVoMapper = new BeanPropertyRowMapper<UserVo>(
			UserVo.class);
	
	private static final RowMapper<String> stringMapper = new BeanPropertyRowMapper<String>(
			String.class);

	private static final String sql_insert = "insert into user(name,password,email,phone,realName,statusId)values(?,md5(?),?,?,?,?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(User entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getName(),
						entity.getPassword(), entity.getEmail(),
						entity.getPhone(), entity.getRealName(),
						entity.getStatusId());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		entity.setId(holder.getKey().intValue());
	}

	private static final String sql_update = "update user set name=?,email=?,phone=?,realName=?,statusId=? where id=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int update(User entity) {
		return this.jdbcTemplate.update(sql_update, entity.getName(),
				entity.getEmail(), entity.getPhone(), entity.getRealName(),
				entity.getStatusId(), entity.getId());

	}
	private static final String sql_update_password = "update user set password=? where id=?";
	@Transactional(propagation = Propagation.SUPPORTS)
	public int changePassword(User entity) {
		return this.jdbcTemplate.update(sql_update_password, entity.getPassword(),entity.getId());
	}
	
	private static final String sql_delete = "delete from user where id=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int delete(int userId) {
		return this.jdbcTemplate.update(sql_delete, userId);
	}

	public static final String sql_getUser = "select id,name,password,email,phone,realName,statusId from user where name=? and password=md5(?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public User getUser(String name, String password) {
		List<User> users = this.jdbcTemplate.query(sql_getUser, rowMapper,
				name, password);
		return users == null ? null : (users.size() > 0 ? users.get(0) : null);
	}
	
	public static final String sql_realName = "select realName from user where id=?";
	
	@Transactional(propagation = Propagation.SUPPORTS)
	public String getRealName(int id) {
		Integer[] idArra={id};
		System.out.println("<<<<<<::"+idArra[0]);
		System.out.println(this.jdbcTemplate.queryForObject(sql_realName, idArra,String.class));
		return this.jdbcTemplate.queryForObject(sql_realName, idArra,String.class);
	}
	
	
	public static final String sql_password = "select count(*) from user where name=?";
	
	@Transactional(propagation = Propagation.SUPPORTS)
	public Integer getPassword(String username) {
		String[] idArra={username};
		return this.jdbcTemplate.queryForObject(sql_password, idArra,Integer.class);
	}
	
	
	

	private static final String sql_getUsers = "select "
			+ "user.id,user.name,user.password,user.email,"
			+ "user.phone,user.realName,user.statusId,"
			+ "status.name as statusName, " + "relation.roleId,"
			+ "role.name as roleName " + "from " + "user,"
			+ "user_role_relation as relation," + "role," + "status "
			+ "where " + "user.id=relation.userId  and "
			+ "relation.roleId=role.id and " + "user.statusId=status.id "
			+ " order by user.id DESC limit ?,? ";

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<UserVo> getUsers(int index, int size) {
		return this.jdbcTemplate.query(sql_getUsers, rowVoMapper, (index - 1)
				* size, size);
	}

	private static final String sql_getUserTotal = "select count(1) from user ";

	@Transactional(propagation = Propagation.SUPPORTS)
	public Integer getUserTotal() {
		return this.jdbcTemplate
				.queryForObject(sql_getUserTotal, Integer.class);

	}
}