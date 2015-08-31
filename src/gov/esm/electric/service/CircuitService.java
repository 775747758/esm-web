package gov.esm.electric.service;

import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.User;
import gov.esm.electric.web.Constant;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CircuitService {

	/**
	 * 添加线路
	 * @param lineName
	 * @param lineId
	 * @param parentLineId
	 * @param upstreamSwitchIds
	 * @param svg
	 * @param req
	 * @return
	 */
	public Map<String, Object> addLine(String lineName, String lineId, String parentLineId, String switchId, String svg, HttpServletRequest req){
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		User user = null;
		if (session != null) {
			Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
			user = (User) obj;
		}
		if (user == null) {
			map.put("message", "请重新登录");
			map.put("oc", -1);
			return map;
		}
		// 保存svg
		cableDiagramService.saveWithSvgOperaterId(svg, user.getId());
		// 构造一个CableLine实例，保存起来
		cableLineService.saveWithIdCodeParentIdName(lineId, lineId, parentLineId, lineName);
		// 找到上游的所有开关，这些上游开关和这条线建立关联
		lineSwitchRelationService.saveWithLineIdUpstreamSwitchId(lineId, switchId);
		
		interruptHistoryService.addInterruptHistory(user.getId(), cableLineService.getCableLine(lineId).getName(), InterruptHistory.STATUS_SWITCH_ADDLINE);
		//返回成功
		map.put("message", "保存成功");
		map.put("oc", 1);
		return map;
	}
	/**
	 * 添加开关
	 * @param switchId
	 * @param switchName
	 * @param lastSwitchId
	 * @param lastBranchSwitchId
	 * @param nextSwitchId
	 * @param lineId 
	 * @param lineName
	 * @param parentLineId
	 * @param svg 
	 * @param req
	 * @param newBranchLineIds 
	 * @return
	 */
	public Map<String, Object> addSwitch(String switchId, String switchName, String lastSwitchId, String lastBranchSwitchIds, String nextSwitchId, String nextBranchSwitchIds, String lineId, String lineName, String parentLineId, String lastBranchLineIds, String svg, HttpServletRequest req, String newBranchLineIds) {
		
		if(StringUtils.isNotBlank(lineId)){
			String[] lineIds = lineId.split("-");
			lineId = lineIds[lineIds.length-1];
		}
		if(StringUtils.isNotBlank(parentLineId)){
			String[] parentLineIds = parentLineId.split("-");
			parentLineId = parentLineIds[parentLineIds.length-1];
		}
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		User user = null;
		if (session != null) {
			Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
			user = (User) obj;
		}
		if (user == null) {
			map.put("message", "请重新登录");
			map.put("oc", -1);
			return map;
		}
		// 保存svg
		cableDiagramService.saveWithSvgOperaterId(svg, user.getId());
		//添加开关
		cableSwitchService.addNormalSwithWithIdCodeName(switchId, switchId, switchName);
		
		//添加该开关的上游开关流
		switchUpStreamService.addSwithUpStreamWithSwitchIdLastSwitchIdNextSwitchId(switchId, lastSwitchId, nextSwitchId,lastBranchSwitchIds);
		//添加该开关的下游开关流
		switchDownStreamService.addDownStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(switchId, lastSwitchId, lastBranchSwitchIds, nextSwitchId, nextBranchSwitchIds,parentLineId,lastBranchLineIds);
		//添加该开关影响的开关
		switchInfluencedStreamService.addSwitchInfluencedStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(switchId, lastSwitchId, lastBranchSwitchIds, nextSwitchId, nextBranchSwitchIds);
		
		//修改有关线路上游开关流
		switchUpStreamService.updateSwithUpStreamWithSwitchIdLastSwitchIdNextSwitchId(switchId, lastSwitchId, lastBranchSwitchIds ,nextSwitchId, nextBranchSwitchIds);
		//修改有关线路下游开关流
		switchDownStreamService.updateSwithDownStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(switchId, lastSwitchId, lastBranchSwitchIds ,nextSwitchId, nextBranchSwitchIds);
		//修改有关线路的影响的开关流
		switchInfluencedStreamService.updateSwitchInfluencedStreamWithSwitchIdLastSwitchIdLastBranchSwitchIdNextSwitchId(switchId, lastSwitchId, lastBranchSwitchIds ,nextSwitchId, nextBranchSwitchIds);
		//添加新线路
		cableLineService.saveWithIdCodeParentIdName(lineId, lineId, parentLineId, cableLineService.getCableLine(parentLineId).getName());
		//建立新线路开关的管理
		lineSwitchRelationService.buildNewLineSwitchRelation(switchId, lastSwitchId, lineId, parentLineId, lastBranchSwitchIds, lastBranchLineIds,nextSwitchId,newBranchLineIds, nextBranchSwitchIds);
		
		interruptHistoryService.addInterruptHistory(user.getId(), switchId, InterruptHistory.STATUS_SWITCH_ADDSWITCH);
		//返回成功
		map.put("message", "保存成功");
		map.put("oc", 1);
		return map;
	}
	public Map<String, Object> deleteLine(String lineId, String svg, HttpServletRequest req) {
		
		if(StringUtils.isNotBlank(lineId)){
			String[] lineIds = lineId.split("-");
			lineId = lineIds[lineIds.length-1];
		}
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		User user = null;
		if (session != null) {
			Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
			user = (User) obj;
		}
		if (user == null) {
			map.put("message", "请重新登录");
			map.put("oc", -1);
			return map;
		}
		// 保存svg
		cableDiagramService.saveWithSvgOperaterId(svg, user.getId());
		//删除线路与开关的关系
		lineSwitchRelationService.deleteByLineId(lineId);
		//增加记录
		interruptHistoryService.addInterruptHistory(user.getId(), cableLineService.getCableLine(lineId).getName(), InterruptHistory.STATUS_SWITCH_DELETELINE);
		//删除该线路
		cableLineService.deleteWithId(lineId);
		
		
		map.put("message", "删除成功");
		map.put("oc", 1);
		return map;
	}
	
	public Map<String, Object> deleteSwitch(String switchId, String svg, HttpServletRequest req) {
		if(StringUtils.isNotBlank(switchId)){
			switchId = switchId.split("-")[1];
		}
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		User user = null;
		if (session != null) {
			Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
			user = (User) obj;
		}
		if (user == null) {
			map.put("message", "请重新登录");
			map.put("oc", -1);
			return map;
		}
		// 保存svg
		cableDiagramService.saveWithSvgOperaterId(svg, user.getId());
		
		cableSwitchService.deleteWithId(switchId);
		//删除该开关上流关系
		switchUpStreamService.deleteWithSwitchId(switchId);
		//删除该开关下流关系
		switchDownStreamService.deleteWithSwitchId(switchId);
		//删除有关线路上流该开关关系
		switchUpStreamService.deleteSwitchIdWithSwitchId(switchId);
		//删除有关线路下流该开关关系
		switchDownStreamService.deleteSwitchIdWithSwitchId(switchId);
		
		//删除影响的开关
		switchInfluencedStreamService.deleteWithSwitchId(switchId);
		//删除有关线路影响的开关的
		switchInfluencedStreamService.deltetSwitchIdWithSwitchId(switchId);
		//删除开关线路的关系
		lineSwitchRelationService.deleteBySwitchId(switchId);
		
		interruptHistoryService.addInterruptHistory(user.getId(), switchId, InterruptHistory.STATUS_SWITCH_DELETESWITCH);
		map.put("message", "删除成功");
		map.put("oc", 1);
		return map;
	}
	/**
	 * 保存svg
	 * @param switchId
	 * @param switchTitle
	 * @param svg 
	 * @param req
	 * @return
	 */
	public Map<String, Object> editText(String switchId, String switchTitle, String svg, HttpServletRequest req) {
		if(StringUtils.isNotBlank(switchId)){
			switchId = switchId.split("-")[1];
		}
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		User user = null;
		if (session != null) {
			Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
			user = (User) obj;
		}
		if (user == null) {
			map.put("message", "请重新登录");
			map.put("oc", -1);
			return map;
		}
		// 保存svg
		cableDiagramService.saveWithSvgOperaterId(svg, user.getId());
		cableSwitchService.updateWithSwitchIdSwitchTitle(switchId, switchTitle);
		
		interruptHistoryService.addInterruptHistory(user.getId(), switchId, InterruptHistory.STATUS_SWITCH_EDITSWITCHNAME);
		map.put("message", "修改成功");
		map.put("oc", 1);
		return map;
	}
	/**
	 * 保存svg
	 * @param switchId
	 * @param switchTitle
	 * @param svg 
	 * @param req
	 * @return
	 */
	public Map<String, Object> doEditText(String svg, HttpServletRequest req) {
		Map<String, Object> map = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		User user = null;
		if (session != null) {
			Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
			user = (User) obj;
		}
		if (user == null) {
			map.put("message", "请重新登录");
			map.put("oc", -1);
			return map;
		}
		// 保存svg
		cableDiagramService.saveWithSvgOperaterId(svg, user.getId());
		map.put("message", "修改成功");
		map.put("oc", 1);
		return map;
	}
	@Autowired
	private LineSwitchRelationService lineSwitchRelationService;
	@Autowired
	private InterruptHistoryService interruptHistoryService;
	@Autowired
	private CableLineService cableLineService;
	@Autowired
	private CableSwitchService cableSwitchService;
	@Autowired
	private CableDiagramService cableDiagramService;
	@Autowired
	private SwitchUpStreamService switchUpStreamService;
	@Autowired
	private SwitchDownStreamService switchDownStreamService;
	@Autowired
	private SwitchInfluencedStreamService switchInfluencedStreamService;
}