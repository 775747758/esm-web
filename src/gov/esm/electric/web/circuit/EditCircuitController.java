package gov.esm.electric.web.circuit;

import gov.esm.electric.domain.CableDiagram;
import gov.esm.electric.domain.CableLine;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.SwitchUpStream;
import gov.esm.electric.domain.User;
import gov.esm.electric.service.CableDiagramService;
import gov.esm.electric.service.CableLineService;
import gov.esm.electric.service.CableSwitchService;
import gov.esm.electric.service.InterruptHistoryService;
import gov.esm.electric.service.LineSwitchRelationService;
import gov.esm.electric.web.Constant;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EditCircuitController {
	@Resource
	private LineSwitchRelationService lineSwitchRelationService;

	@Resource
	private InterruptHistoryService interruptHistoryService;

	@Resource
	private CableLineService cableLineService;

	@Resource
	private CableSwitchService cableSwitchService;

	@Resource
	private CableDiagramService cableDiagramService;
	
	private static final Logger logger = Logger.getLogger("stdout");

	/**
	 * 显示编辑电路图页面
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping("/circuit/edit.do")
	public String editDiagram(HttpServletRequest req) {
		return "/circuit/edit-diagram";
	}

	/**
	 * 在编辑线路页面中，当用户画完一条线，弹出填写线路基本信息对话框， 用户填写完后，点保存按钮，就会把数据提交到这里.
	 * 
	 * @param req
	 * @return
	 */
	@RequestMapping("/circuit/addLineForm.do")
	@ResponseBody
	public Object addLineForm(HttpServletRequest req) {
		String lineName = req.getParameter("lineName");
		String lineId = req.getParameter("lineId");
		String parentLineId = req.getParameter("parentLineId");
		String upstreamSwitchIds = req.getParameter("upstreamSwitchIds");
		String svg = req.getParameter("svg");
		Map<String, Object> map = new HashMap<String, Object>();

		// TODO 文杰，你在这里写一下,检查客户端的数据是否合法

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
		CableDiagram cableDiagram = new CableDiagram();
		cableDiagram.setHtml(svg);
		cableDiagram.setOperater(user.getId());
		cableDiagram.setCreateTime(Calendar.getInstance(Locale.PRC).getTime());
		cableDiagramService.insert(cableDiagram);

		// 构造一个CableLine实例，保存起来
		CableLine line = new CableLine();
		line.setId(lineId);
		line.setCode(lineId);
		line.setParentId(parentLineId);
		line.setName(lineName);
		line.setStatus(1);
		this.cableLineService.insert(line);

		// 找到上游的所有开关，这些上游开关和这条线建立关联
		if (StringUtils.isNotBlank(upstreamSwitchIds)) {
			String[] ids = upstreamSwitchIds.split(",");
			for (int i = 0; i < ids.length; i++) {
				if (StringUtils.isNotBlank(ids[i])) {
					ids[i] = ids[i].trim();
					CableSwitch cs = this.cableSwitchService.getCableSwitch(ids[i]);
					if (cs == null) {
						logger.info("上游开关:" + ids[i] + "无效。");
					} else {
						// 您画的线，和这些开关建立关系,这样开关就能影响到这条线了。
						this.lineSwitchRelationService.insert(lineId, ids[i]);
						List<SwitchUpStream> upstreamSwitchs = this.cableSwitchService.getUpstreamSwitchs(ids[i]);

						if (!CollectionUtils.isEmpty(upstreamSwitchs)) {
							for (SwitchUpStream sus : upstreamSwitchs) {
								this.lineSwitchRelationService.insert(lineId, sus.getSwitchId());
							}
						}
					}
				}
			}
		}
		map.put("message", "保存成功!");
		map.put("oc", 1);
		return line;
	}
}
