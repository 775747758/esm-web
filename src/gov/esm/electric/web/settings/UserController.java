package gov.esm.electric.web.settings;

import gov.esm.assistor.StringAssistor;
import gov.esm.electric.domain.Status;
import gov.esm.electric.domain.User;
import gov.esm.electric.domain.UserRoleRelation;
import gov.esm.electric.entity.UserVo;
import gov.esm.electric.service.RoleService;
import gov.esm.electric.service.UserService;
import gov.esm.electric.web.circuit.JsonBean;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author XueLiang
 *
 * @date:2014年12月8日
 */
@Controller
@RequestMapping(value = "/settings/user")
public class UserController {
	@Resource
	private UserService userServiceImpl;

	@Resource
	private RoleService roleServiceImpl;

	@RequestMapping(value = "/addUser.do", method = RequestMethod.GET)
	public String addUser(HttpServletRequest req) {
		return "/settings/user/addUser";
	}

	@RequestMapping(value = "/addUser.do", method = RequestMethod.POST)
	@ResponseBody
	public Object addUser(
			@RequestParam(value = "name", defaultValue = "") String name,
			@RequestParam(value = "password", defaultValue = "") String password,
			@RequestParam(value = "email", defaultValue = "") String email,
			@RequestParam(value = "phone", defaultValue = "") String phone,
			@RequestParam(value = "realName", defaultValue = "") String realName,
			@RequestParam(value = "roleId", defaultValue = "") int roleId,
			@RequestParam(value="statusId",defaultValue="8") int statusId) {
		Map<String, Object> map = new HashMap<String, Object>(4);
		User user = new User();
		user.setName(name);
		user.setPassword(password);
		user.setEmail(email);
		user.setPhone(phone);
		user.setRealName(realName);
        user.setStatusId(statusId);
        //设置用户角色
		UserRoleRelation userRoleRelation = new UserRoleRelation();
		userRoleRelation.setRoleId(roleId);
		
		int check = this.checkUser(user, userRoleRelation);
		
		if(userServiceImpl.getPassword(name)>0){
			check=-30;
		}
		map.put("check", check);
		if (check > 0) {
			userServiceImpl.insert(user, userRoleRelation);
			map.put("success", user.getId() > 0);
			map.put("user", user);
		}
		return map;
	}

	@RequestMapping(value = "/editUser.do", method = RequestMethod.POST)
	@ResponseBody
	public Object editUser(
			@RequestParam(value = "id", defaultValue = "") int id,
			@RequestParam(value = "name", defaultValue = "") String name,
			@RequestParam(value = "email", defaultValue = "") String email,
			@RequestParam(value = "phone", defaultValue = "") String phone,
			@RequestParam(value = "realName", defaultValue = "") String realName,
			@RequestParam(value = "roleId", defaultValue = "") int roleId,
			@RequestParam(value="statusId",defaultValue="8")int statusId) {
		Map<String, Object> map = new HashMap<String, Object>(4);
		User user = new User();
		user.setId(id);
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		user.setRealName(realName);
		user.setStatusId(statusId);

		UserRoleRelation userRoleRelation = new UserRoleRelation();
		userRoleRelation.setRoleId(roleId);
		userRoleRelation.setUserId(user.getId());

		int check = this.checkUser(user, userRoleRelation);
		
		
		map.put("check", check);
		if (check > 0) {
			boolean success = userServiceImpl
					.updateUser(user, userRoleRelation);
			map.put("success", success);
		}
		return map;
	}
	
	
	@RequestMapping(value = "/deleteUser.do", method = RequestMethod.POST)
	@ResponseBody
	public JsonBean deleteUser(
			@RequestParam(value = "ids", defaultValue = "") String ids) {
		JsonBean json = new JsonBean();
		String[] idsArray = ids.split(",");
		boolean success =true;
		for (int i = 0; i < idsArray.length; i++) {
			boolean isSuccess=userServiceImpl.deleteUser(Integer.parseInt(idsArray[i]));
			if(isSuccess==false)
			{
				success=false;
			}
		}
		json.setSuccess(success);
		return json;
	}

	@RequestMapping(value = "/getUsers.do", method = RequestMethod.GET)
	public String getUsers() {
		return "/settings/user/getUsers";
	}

	@RequestMapping(value = "/getUsers.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getUsers(
			@RequestParam(value = "page", defaultValue = "1") int pageNo,
			@RequestParam(value = "rows", defaultValue = "10") int pageSize) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<UserVo> users = userServiceImpl.getUsers(pageNo, pageSize);
		map.put("rows", users);
		Integer total = userServiceImpl.getUserTotal();
		map.put("total", total);
		return map;
	}

	@RequestMapping(value = "/getUserStatus.do", method = RequestMethod.POST)
	@ResponseBody
	public List<Status> getUserStatus() {
		return this.userServiceImpl.getUserStatus();
	}

	/**
	 * 基本的数据有效性检查
	 * 
	 * @param user
	 * @return
	 */
	private int checkUser(User user, UserRoleRelation userRoleRelation) {
		Pattern pattern = Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
		Matcher matcher = pattern.matcher(user.getEmail());
		if (user == null) {
			return 0;
		}else if(StringAssistor.isBlank(user.getRealName())){
			return -1;
		}
		else if(StringUtils.isNotBlank(user.getEmail())&&!matcher.matches()){
			System.out.println("email");
			return -1;
		}
		else if(StringUtils.isNotBlank(user.getPhone())&&!isMobileNO(user.getPhone())){
			System.out.println("phone");
			return -1;
		}
		else if(!isUserName(user.getName())){
			System.out.println("username");
			return -1;
		}
		else if (StringAssistor.isBlank(user.getName())) {
			return -1;
		} else if (user.getName().length() > 32) {
			return -10;
		} else if (userRoleRelation == null) {
			return -4;
		} else if (userRoleRelation.getRoleId() < 1) {
			return -40;
		} else {
			return 1;
		}
	}
	
	public static boolean isMobileNO(String mobiles){ 
        Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
        Matcher m = p.matcher(mobiles);
        return m.matches();
    }
	
	public static boolean isUserName(String username){ 
        Pattern p = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_]{0,9}$");
        Matcher m = p.matcher(username);
        return m.matches();
    } 
}
