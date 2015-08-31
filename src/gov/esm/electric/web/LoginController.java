package gov.esm.electric.web;

import gov.esm.assistor.SpringContextHolder;
import gov.esm.electric.dao.InterruptHistoryDao;
import gov.esm.electric.dao.UserLogDao;
import gov.esm.electric.domain.Permission;
import gov.esm.electric.domain.Role;
import gov.esm.electric.domain.User;
import gov.esm.electric.domain.UserLog;
import gov.esm.electric.service.PermissionService;
import gov.esm.electric.service.RolePermissionRelationService;
import gov.esm.electric.service.RoleService;
import gov.esm.electric.service.UserRoleRelationService;
import gov.esm.electric.service.UserService;

import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 
 * @author XueLiang
 * @date 2014年11月26日
 */
@Controller
public class LoginController {
	@Resource
	UserService userService;

	@Resource
	RoleService roleService;

	@Resource
	UserRoleRelationService userRoleRelationService;

	@Resource
	PermissionService permissionService;

	@Resource
	RolePermissionRelationService rolePermissionRelationService;
	
	@Resource
	private UserLogDao userLogDao;

	/**
	 * 显示登录界面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		return "/login";
	}

	/**
	 * 登录
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	@ResponseBody
	public Object login(HttpServletRequest req, HttpServletResponse resp) {
		Map<String, Object> map = new HashMap<String, Object>();
		boolean isMonitor = false;
		String userName = req.getParameter("userName");
		String password = req.getParameter("password");
		User user = this.userService.getUser(userName, password);
		if (user != null) {
			// setp 1.用户
			req.getSession().setAttribute(Constant.SESSION_KEY_USER, user);
			
			Calendar now = Calendar.getInstance(Locale.PRC);
			req.getSession().setAttribute(Constant.SESSION_KEY_LOGIN_TIME, now.getTime());
			
			// setp 2.获得用户权限集合

			// step 2.1.得到用户的角色id集合
			List<Role> roles = userRoleRelationService.getRolesByUserId(user
					.getId());
			req.getSession().setAttribute(Constant.SESSION_KEY_ROLES, roles);
			List<Integer> roleIds = new LinkedList<Integer>();
			for (Role role : roles) {
				roleIds.add(role.getId());
				if (role.getId() == 3) {
					isMonitor = true;
				}
			}

			// step 2.2.得到该用户的所有权限
			List<Permission> permissions = rolePermissionRelationService
					.getPermissions(roleIds);

			req.getSession().setAttribute(Constant.SESSION_KEY_PERMISSIONS,
					permissions);

		}
		map.put("logined", user != null);
		map.put("isMonitor", isMonitor);
		return map;
	}

	/**
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest req, HttpServletResponse resp) {
		
		UserLogDao userLogDao=(UserLogDao)SpringContextHolder.getBeanOneOfType(UserLogDao.class);
		User user = (User) req.getSession().getAttribute(Constant.SESSION_KEY_USER);
		Date loginDate=(Date) req.getSession().getAttribute(Constant.SESSION_KEY_LOGIN_TIME);
		Calendar now = Calendar.getInstance(Locale.PRC);
		UserLog entity=new UserLog();
		entity.setLoginTime(loginDate);
		entity.setLogoutTime(now.getTime());
		entity.setUserId(user.getId());
		userLogDao.insert(entity);
		
		Enumeration<String> em = req.getSession().getAttributeNames();
		while (em.hasMoreElements()) {
			req.getSession().removeAttribute(em.nextElement().toString());
		}
		req.getSession().removeAttribute(Constant.SESSION_KEY_USER);
		req.getSession().removeAttribute(Constant.SESSION_KEY_ROLES);
		req.getSession().removeAttribute(Constant.SESSION_KEY_PERMISSIONS);
		req.getSession().invalidate();
		return "redirect:/login.do";
	}

	@RequestMapping(value = "/getPermissions.do")
	@ResponseBody
	public Object getPermissions(HttpServletRequest req,
			HttpServletResponse resp) {
		HttpSession session = req.getSession();
		Object permissions = session
				.getAttribute(Constant.SESSION_KEY_PERMISSIONS);
		return permissions;
	}

	@RequestMapping(value = "/updatePassword.do", method = RequestMethod.POST)
	@ResponseBody
	public Object updatePassword(HttpServletRequest req, HttpServletResponse resp, String oldPassword, String newPassword) {
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute(Constant.SESSION_KEY_USER);
		if (oldPassword.equals(user.getPassword())) {
			user.setPassword(newPassword);
			if (userService.changePassword(user)) {
				map.put("code", "1");
			} else {
				map.put("code", "0");
			}

		} else {
			map.put("code", "0");
		}
		System.out.println(oldPassword);
		return map;
	}

	@RequestMapping(value = "/changePassword.do", method = RequestMethod.GET)
	public String changePassword() {
		return "/changePassword";
	}

}
