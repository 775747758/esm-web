package gov.esm.electric.web.settings;

import gov.esm.assistor.StringAssistor;
import gov.esm.electric.domain.Role;
import gov.esm.electric.service.RoleService;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 系统设置模块
 * 
 * @author XueLiang
 *
 * @date:2014年12月8日
 */
@Controller
@RequestMapping(value = "/settings/role")
public class RoleController {

	private static final Logger logger = Logger.getLogger("web");

	@Resource
	private RoleService roleServiceImpl;

	/**
	 * 取出系统中的所有角色
	 * 
	 * @return
	 */
	@RequestMapping(value = "/roles.do")
	@ResponseBody
	public Object roles() {
		return this.roleServiceImpl.getRoles(null);
	}

	/**
	 * 编辑角色
	 * 
	 * @param id
	 * @param name
	 * @return
	 */
	@RequestMapping(value = "/editRole.do", method = RequestMethod.POST)
	@ResponseBody
	public Object editRole(
			@RequestParam(value = "id", defaultValue = "0") int id,
			@RequestParam(value = "name", defaultValue = "") String name) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			if (id < 1 && StringAssistor.isNotBlank(name)) {
				Role entity = new Role(id, name);
				roleServiceImpl.insert(entity);
				map.put("message", "新增角色成功!");
			} else if (id > 0 && StringAssistor.isNotBlank(name)) {
				Role entity = new Role(id, name);
				roleServiceImpl.update(entity);
				map.put("message", "修修角色成功");
			} else {
				map.put("message", "角色名称为空");
			}
		} catch (Exception e) {
			map.put("message", "编辑角色时发生异常");
			logger.error(e, e);
		}
		return map;
	}
}
