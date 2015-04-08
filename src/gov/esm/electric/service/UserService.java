package gov.esm.electric.service;

import gov.esm.electric.dao.StatusDao;
import gov.esm.electric.dao.UserDao;
import gov.esm.electric.dao.UserRoleRelationDao;
import gov.esm.electric.domain.Status;
import gov.esm.electric.domain.User;
import gov.esm.electric.domain.UserRoleRelation;
import gov.esm.electric.entity.UserVo;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月26日
 */
@Service
public class UserService {
	@Resource
	private UserDao userDao;

	@Resource
	private UserRoleRelationDao userRoleRelationDao;

	@Resource
	private StatusDao statusDao;

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(User entity) {
		userDao.insert(entity);
	}

	@Transactional
	public void insert(User user, UserRoleRelation relation) {
		userDao.insert(user);
		relation.setUserId(user.getId());
		userRoleRelationDao.insert(relation);
	}

	@Transactional
	public boolean updateUser(User user, UserRoleRelation relation) {
		boolean success = userDao.update(user) > 0;
		success &= userRoleRelationDao.delete(relation.getUserId()) > 0;
		success &= userRoleRelationDao.insert(relation) > 0;
		return success;
	}
	
	@Transactional
	public boolean changePassword(User user) {
		boolean success = userDao.changePassword(user) > 0;
		System.out.println("外面"+success);
		return success;
	}
	
	@Transactional
	public boolean deleteUser(int userId) {
		boolean success = userDao.delete(userId) > 0;
		success &= userRoleRelationDao.delete(userId) > 0;
		return success;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public User getUser(String name, String password) {
		return userDao.getUser(name, password);
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public List<UserVo> getUsers(int index, int size) {
		return userDao.getUsers(index, size);
	}

	public Integer getUserTotal() {
		return userDao.getUserTotal();
	}
	
	

	/**
	 * 获得用户表的所有状态
	 * 
	 * @return
	 */
	public List<Status> getUserStatus() {
		return this.statusDao.getStatus("user");
	}
}
