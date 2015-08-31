package gov.esm.electric.web.circuit;

import java.util.HashMap;
import java.util.Map;

import gov.esm.electric.service.CableDiagramService;
import gov.esm.electric.service.CableSwitchService;
import gov.esm.electric.service.CircuitService;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/circuit")
public class EditCircuitController {

	/**
	 * 显示编辑电路图页面
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping("/edit.do")
	public String editDiagram(HttpServletRequest req) {
		req.getSession().setAttribute("cableDiagram", cableDiagramService.getRecentCableDiagram());
		return "/circuit/edit-diagram";
	}
	/**
	 * 跳转至线路添加页面
	 * @param req
	 * @return
	 */
	@RequestMapping("/lineInput.do")
	public String lineInput(HttpServletRequest req) {
		return "/circuit/line-input";
	}
	/**
	 * 跳转至开关添加页面
	 * @param req
	 * @return
	 */
	@RequestMapping("/switchInput.do")
	public String switchInput(HttpServletRequest req) {
		return "/circuit/switch-input";
	}
	
	/**
	 * 跳转至开关添加页面
	 * @param req
	 * @return
	 */
	@RequestMapping("/textInput.do")
	public String textInput(HttpServletRequest req) {
		req.setAttribute("elementText", req.getParameter("elementText"));
		return "/circuit/text-input";
	}
	
	/**
	 * 在编辑线路页面中，当用户画完一条线，弹出填写线路基本信息对话框， 用户填写完后，点保存按钮，就会把数据提交到这里.
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping("/addLineForm.do")
	@ResponseBody
	public Object addLineForm(HttpServletRequest req) {
		String lineName = req.getParameter("lineName");
		String lineId = req.getParameter("lineId");
		String parentLineId = req.getParameter("parentLineId");
		String switchId = req.getParameter("upstreamSwitchIds");
		String svg = req.getParameter("svg");
		Map<String, Object> map = new HashMap<String, Object>();
		if(StringUtils.isBlank(lineName)||StringUtils.isBlank(switchId)){
			map.put("message", "您输入的数据为空");
			map.put("oc", -1);
			return map;
		}
		try{
			map =  circuitService.addLine(lineName, lineId, parentLineId, switchId, svg, req);
		} catch (Exception e) {
			map.put("message", "操作有误，如有问题请联系管理员");
			map.put("oc", -1);
		}
		return map;
	}
	/**
	 * 修改名称
	 * @param req
	 * @return
	 */
	@RequestMapping("/editText.do")
	@ResponseBody
	public Object editText(HttpServletRequest req) {
		String switchId = req.getParameter("switchId");
		String switchTitle = req.getParameter("switchTitle");
		String svg = req.getParameter("svg");
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			map =  circuitService.editText(switchId, switchTitle, svg, req);
		} catch (Exception e) {
			map.put("message", "操作有误，如有问题请联系管理员");
			map.put("oc", -1);
		}
		return map;
	}
	/**
	 * 修改名称
	 * @param req
	 * @return
	 */
	@RequestMapping("/doEditText.do")
	@ResponseBody
	public Object doEditText(HttpServletRequest req) {
		String svg = req.getParameter("svg");
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			map =  circuitService.doEditText(svg, req);
		} catch (Exception e) {
			map.put("message", "操作有误，如有问题请联系管理员");
			map.put("oc", -1);
		}
		return map;
	}
	/**
	 * 添加开关
	 * @param req
	 * @return
	 */
	@RequestMapping("/addSwitch.do")
	@ResponseBody
	public Object addSwitch(HttpServletRequest req) {
		String switchId = req.getParameter("switchId");
		String switchName = req.getParameter("switchName");
		String lastSwitchId = req.getParameter("lastSwitchId");
		String lastBranchSwitchId = req.getParameter("lastBranchSwitchId");
		String nextSwitchId = req.getParameter("nextSwitchId");
		String nextBranchSwitchId = req.getParameter("nextBranchSwitchId");
		String lineId = req.getParameter("lineId");
		String lineName = req.getParameter("lineName");
		String parentLineId = req.getParameter("parentLineId");
		String lastBranchLineId = req.getParameter("lastBranchLineId");
		String newBranchLineIds = req.getParameter("newBranchLineId");
		String svg = req.getParameter("svg");
		Map<String, Object> map = new HashMap<String, Object>();
		if(StringUtils.isBlank(switchId)||StringUtils.isBlank(switchName)||StringUtils.isBlank(lastSwitchId)){
			map.put("message", "开关编号或者开关名字或者上游开关编号为空，请填写！");
			map.put("oc", -1);
			return map;
		}
		if(cableSwitchService.getCableSwitch(switchId)!=null){
			map.put("message", "开关编号重复");
			map.put("oc", -1);
			return map;
		}
		map =  circuitService.addSwitch(switchId, switchName, lastSwitchId, lastBranchSwitchId, nextSwitchId, nextBranchSwitchId, lineId, lineName, parentLineId, lastBranchLineId, svg, req,newBranchLineIds);
		/*try{
			
		} catch (Exception e) {
			map.put("message", "操作有误，如有问题请联系管理员");
			map.put("oc", -1);
		}*/
		return map;
	}
	/**
	 * 删除线路
	 * @param req
	 * @return
	 */
	@RequestMapping("/deleteLine.do")
	@ResponseBody
	public Object deleteLine(HttpServletRequest req) {
		String lineId = req.getParameter("lineId");
		String svg = req.getParameter("svg");
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			map =  circuitService.deleteLine(lineId, svg, req);
		} catch (Exception e) {
			map.put("message", "操作有误，如有问题请联系管理员");
			map.put("oc", -1);
		}
		return map;
	}
	/**
	 * 删除开关
	 * @param req
	 * @return
	 */
	@RequestMapping("/deleteSwitch.do")
	@ResponseBody
	public Object deleteSwitch(HttpServletRequest req) {
		String switchId = req.getParameter("switchId");
		String svg = req.getParameter("svg");
		Map<String, Object> map = new HashMap<String, Object>();
		try{
			map =  circuitService.deleteSwitch(switchId, svg, req);
		} catch (Exception e) {
			map.put("message", "操作有误，如有问题请联系管理员");
			map.put("oc", -1);
		}
		return map;
	}
	
	@Autowired
	private CableDiagramService cableDiagramService;
	@Autowired
	private CircuitService circuitService;
	
	@Autowired
	private CableSwitchService cableSwitchService;
	
}