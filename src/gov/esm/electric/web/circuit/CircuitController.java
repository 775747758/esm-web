package gov.esm.electric.web.circuit;

import gov.esm.electric.cache.SwitchCache;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.Permission;
import gov.esm.electric.domain.Role;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchStream;
import gov.esm.electric.domain.SwitchUpStream;
import gov.esm.electric.domain.User;
import gov.esm.electric.service.CableLineService;
import gov.esm.electric.service.CableSwitchService;
import gov.esm.electric.service.InterruptHistoryService;
import gov.esm.electric.service.LineSwitchRelationService;
import gov.esm.electric.web.Constant;

import java.io.File;
import java.io.IOException;
import java.nio.channels.WritableByteChannel;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.apache.commons.lang.StringUtils;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/circuit")
public class CircuitController {

	@Resource
	private LineSwitchRelationService lineSwitchRelationService;

	@Resource
	private InterruptHistoryService interruptHistoryService;

	@Resource
	private CableLineService cableLineService;

	@Resource
	private CableSwitchService cableSwitchService;
	
	@Resource
	private SwitchCache switchCache;
	
	@RequestMapping(value = "/getSwitchByKeyword.do", method = RequestMethod.GET)
	@ResponseBody
	public Object getSwitchByKeyword(String keyword) {
		/*Map<String, Object> map = new HashMap<String, Object>();
		map.put("logined", user != null);
		map.put("isMonitor", isMonitor);*/
		List<Map<String, Object>> list=cableSwitchService.getSwitchByKeyword(keyword);
		return list;
	}

	
	@RequestMapping(value = "/sendMessage.do")
	@ResponseBody
	public JsonBean sendMessage(HttpServletRequest request,String message)  {
		JsonBean json = new JsonBean();
		request.getSession().getServletContext().setAttribute("msg", message);
		json.setMsg("success!");
		
		return json;
	}
	
	
	@RequestMapping(value = "/getMessage")
	@ResponseBody
	public JsonBean getMessage(HttpServletRequest request) {
		JsonBean json = new JsonBean();
		String message = (String) request.getSession().getServletContext()
				.getAttribute("msg");
		if(null!=message||!"".equals(message))
		{
			json.setSuccess(true);
		}
		
		json.setObj(message);
		return json;
	}
	
	@RequestMapping(value = "/removeMessage")
	@ResponseBody
	public JsonBean removeMessage(HttpServletRequest request) {
		JsonBean json = new JsonBean();
		request.getSession().getServletContext().setAttribute("msg", "");
		json.setSuccess(true);
		return json;
	}

	@RequestMapping("/diagram.do")
	public String diagram(HttpServletRequest req) {
		return "/circuit/diagram";
	}

	private static final ObjectMapper objectMapper = new ObjectMapper();
	private static final Logger logger = Logger.getLogger("stdout");

	/**
	 * 根据开关id得到该开关影响的线路集合
	 * 
	 * @param switchId
	 * @return
	 */
	@RequestMapping(value = "/getLinesBySwitchId.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getLinesBySwitchId(@RequestParam(value = "switchId", defaultValue = "0") String switchId,
			@RequestParam(value = "status") int status, HttpServletRequest req)
			throws Exception {
		
		
		
		CableSwitch currentSwitch = this.switchCache.getCableSwitch(switchId);
		logger.info("邓文杰："+status);
		if(currentSwitch.getType()==4)
		{
			List<SwitchStream> streams = this.cableSwitchService.getStationStreamSwitchs(switchId);
			for(int i=0;i<streams.size();i++)
			{
				System.out.println("邓文杰："+streams.get(i).getSwitchStream());
			}
			
			recordInterrupt(switchId, 1, req);
			
			return this.setStationSwitch(currentSwitch, streams,status);
		}
		else {
			// step 1.得到switchId的所有上游开关集合
			List<SwitchUpStream> upstreams = this.cableSwitchService.getUpstreamSwitchs(switchId);
			logger.info("step 1.上游开关集合");
			logger.info(objectMapper.writeValueAsString(upstreams));

			// step 2.得到switchId的所有下游开关集合
			List<SwitchDownStream> downstreams = this.cableSwitchService.getDownStreamSwitchs(switchId);
			
			//System.out.println("getLinesBySwitchIdeeee"+downstreams.toString());
			
			
			
			
			
			logger.info("step 2.下游开关集合");
			logger.info(objectMapper.writeValueAsString(downstreams));

			if (true) {// 如果当前开关状态是已断开，那么此次操作就是合闸
				recordInterrupt(switchId, 1, req);
				// this.cableSwitchService.updateStatus(11, currentSwitch.getId());
				if (currentSwitch.getType() == 3) {// 如果是握手开关
					return this.closeCommonSwitch(currentSwitch, upstreams, downstreams);
				} else if (currentSwitch.getType() == 1) {// 如果是变电站出来的第一开关
					return this.closeFirstSwitch(currentSwitch, downstreams);
				} else if (currentSwitch.getType() == 2) {
					return this.closeNormalSwitch(currentSwitch, upstreams, downstreams);
				}
			} else {// 如果当前开关是已闭合，那么断开开关,把闸拉兰，线上就没电兰
				recordInterrupt(switchId, 0, req);
				// this.cableSwitchService.updateStatus(10, currentSwitch.getId());
				if (currentSwitch.getType() == 3) {// 当前开关是握手开关
					return this.openCommonSwitch(currentSwitch, upstreams, downstreams);
				} else if (currentSwitch.getType() == 1) {// 当前开关是变电站第一开关
					//System.out.println(currentSwitch.getName());
					return this.openFirstSwitch(currentSwitch, downstreams);
				} else if (currentSwitch.getType() == 2) {// 当前开关是普通开关
					return this.openNormalSwitch(currentSwitch, upstreams, downstreams);
				}
			}
		}

		
		return null;
	}

	

	/**
	 * 断开变电站第一开关
	 * 
	 * @param currentSwitch
	 * @param downstreams
	 * @return
	 */
	private Object openFirstSwitch(CableSwitch currentSwitch, List<SwitchDownStream> downstreams) {
		// 拿到此开关影响的所有线
		Set<String> lines = lineSwitchRelationService.getLinesBySwitchId(currentSwitch.getId());
		for (SwitchDownStream item : downstreams) {
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);
			//System.out.println(switchs.toString());
			for (CableSwitch s : switchs) {
				//System.out.println(s.getName()+":"+s.getId());
				if (s.getStatus() == 10) {
					if (s.getType() == 2) {
						Set<String> set = lineSwitchRelationService.getLinesBySwitchId(s.getId());
						lines.removeAll(set);
					}
				} else {
					if (s.getType() == 3) {
						lines = lineSwitchRelationService.getLinesBySwitchId(s.getId());
						break;
					}
				}
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("tip", "");
		result.put("lines", lines);
		this.cableSwitchService.updateStatus(10, currentSwitch.getId());
		this.cableLineService.updateLineStatus(5, lines);
		return result;

	}

	/**
	 * 断开一个普通开关
	 * 
	 * @param currentSwitch
	 * @param upstreams
	 * @param downstreams
	 * @return
	 */
	private Object openNormalSwitch(CableSwitch currentSwitch, List<SwitchUpStream> upstreams,
			List<SwitchDownStream> downstreams) {
		// 1.上游是否有电
		int count = 0;
		for (Iterator<SwitchUpStream> it = upstreams.iterator(); it.hasNext();) {
			boolean upstreamHasCurrent = this.upstreamHasCurrent(currentSwitch, it.next());
			if (upstreamHasCurrent) {
				count++;
				it.remove();
			}
		}
		if (count == 1) {
			Set<String> lines = lineSwitchRelationService.getLinesBySwitchId(currentSwitch.getId());
			for (SwitchDownStream item : downstreams) {
				List<CableSwitch> switchs = this.getDownStreamSwitch(item);
				for (CableSwitch s : switchs) {
					if (s.getType() == 2 && s.getStatus() == 10) {
						Set<String> set = lineSwitchRelationService.getLinesBySwitchId(s.getId());
						lines.removeAll(set);
					} else if (s.getType() == 3 && s.getStatus() == 11) {
						Map<String, Object> result = new HashMap<String, Object>();
						result.put("oc", -1);
						result.put("tip", "握手开关正在工作,系统拒绝本次操作.");
						result.put("lines", null);
					}
				}
			}

			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", 1);
			result.put("tip", "");
			result.put("lines", lines);
			this.cableSwitchService.updateStatus(10, currentSwitch.getId());
			this.cableLineService.updateLineStatus(5, lines);
			return result;
		} else {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", -1);
			result.put("tip", "上游没电,本次操作无效!");
			result.put("lines", null);
			return result;
		}
	}

	/**
	 * 断开一个握手开关
	 * 
	 * @return
	 */
	private Object openCommonSwitch(CableSwitch currentSwitch, List<SwitchUpStream> upstreams,
			List<SwitchDownStream> downstreams) {
		// 1.上游给否有电
		int count = 0;
		for (Iterator<SwitchUpStream> it = upstreams.iterator(); it.hasNext();) {
			boolean upstreamHasCurrent = this.upstreamHasCurrent(currentSwitch, it.next());
			if (upstreamHasCurrent) {
				count++;
				it.remove();
			}
		}
		if (count > 1) {// 如果握手开关电流冲突
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", -2);
			result.put("tip", "握手开关电流冲突,系统拒绝本次操作!");
			result.put("lines", null);
			return result;
		} else if (count == 1) {// 上游有一条线有电
			Set<String> lines = new HashSet<String>();
			for (Iterator<SwitchUpStream> it = upstreams.iterator(); it.hasNext();) {
				SwitchUpStream up = it.next();
				String[] switchs = up.getUpstream().split(",");
				String upFirstSwitch = switchs[switchs.length - 1];
				Set<String> upLines = lineSwitchRelationService.getLinesBySwitchId(upFirstSwitch);
				for (SwitchDownStream item : downstreams) {
					List<CableSwitch> ss = this.getDownStreamSwitch(item);
					for (CableSwitch s : ss) {
						if (s.getStatus() == 10) {
							if (s.getType() != 1 && s.getType() != 3) {
								Set<String> set = lineSwitchRelationService.getLinesBySwitchId(s.getId());
								//upLines.removeAll(set);
								upLines=set;
							}
						}
					}
				}
				lines.addAll(upLines);
			}
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", 1);
			result.put("tip", "");
			result.put("lines", lines);
			this.cableSwitchService.updateStatus(10, currentSwitch.getId());
			this.cableLineService.updateLineStatus(5, lines);
			return result;
		} else {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", -1);
			result.put("tip", "握手开关没找到上游开关.");
			result.put("lines", null);
			return result;
		}
	}

	/**
	 * 合上一个变电站开关
	 * 
	 * @param currentSwitch
	 * @param downstreams
	 * @return
	 */
	private Object closeFirstSwitch(CableSwitch currentSwitch, List<SwitchDownStream> downstreams) {
		// 拿到此开关影响的所有线
		Set<String> lines = lineSwitchRelationService.getLinesBySwitchId(currentSwitch.getId());
		for (SwitchDownStream item : downstreams) {
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);
			for (CableSwitch s : switchs) {
				if (s.getStatus() == 10) {
					if (s.getType() == 2) {
						Set<String> set = lineSwitchRelationService.getLinesBySwitchId(s.getId());
						lines.removeAll(set);
					}
				} else if (s.getType() == 3) {
					// 检查对面变电站开关是否闭合
					List<SwitchUpStream> ups = this.cableSwitchService.getUpstreamSwitchs(s.getId());
					for (SwitchUpStream up : ups) {
						String[] us = up.getUpstream().split(",");
						CableSwitch last = this.switchCache.getCableSwitch(us[us.length - 1]);
						if (last.getId().equals(currentSwitch.getId())) {
							continue;
						} else if (last.getStatus() == 11) {
							Map<String, Object> result = new HashMap<String, Object>();
							result.put("oc", -1);
							result.put("tip", "电流冲突,本次操作无效!");
							result.put("lines", null);
							return result;
						} else if (last.getStatus() == 10) {
							Set<String> ls = this.lineSwitchRelationService.getLinesBySwitchId(last.getId());
							List<CableSwitch> ds = this.cableSwitchService.getDownStreamByStatus(last.getId(), 10);
							Set<String> set = this.lineSwitchRelationService.getLinesBySwitchs(ds);
							ls.removeAll(set);
							ls.addAll(lines);

							Map<String, Object> result = new HashMap<String, Object>();
							result.put("oc", 1);
							result.put("tip", "");
							result.put("lines", ls);
							this.cableSwitchService.updateStatus(11, currentSwitch.getId());
							this.cableLineService.updateLineStatus(4, ls);
							return result;
						}
					}
				}
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("tip", "");
		result.put("lines", lines);
		this.cableSwitchService.updateStatus(11, currentSwitch.getId());
		this.cableLineService.updateLineStatus(4, lines);
		return result;
	}

	/**
	 * 合上一个普通开关
	 * 
	 * @param currentSwitch
	 * @param upstreams
	 * @param downstreams
	 * @return
	 */
	private Object closeNormalSwitch(CableSwitch currentSwitch, List<SwitchUpStream> upstreams,
			List<SwitchDownStream> downstreams) {
		// 1.上游给否有电
		int count = 0;
		for (Iterator<SwitchUpStream> it = upstreams.iterator(); it.hasNext();) {
			boolean upstreamHasCurrent = this.upstreamHasCurrent(currentSwitch, it.next());
			if (upstreamHasCurrent) {
				count++;
			} else {
				it.remove();
			}
		}
		if (count == 1) {
			Set<String> lines = lineSwitchRelationService.getLinesBySwitchId(currentSwitch.getId());
			for (SwitchDownStream item : downstreams) {
				List<CableSwitch> switchs = this.getDownStreamSwitch(item);
				for (CableSwitch s : switchs) {
					if (s.getStatus() == 10 && s.getType() != 3 && s.getType() != 1) {
						Set<String> set = lineSwitchRelationService.getLinesBySwitchId(s.getId());
						lines.removeAll(set);
					}
				}
			}
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", 1);
			result.put("tip", "");
			result.put("lines", lines);
			this.cableSwitchService.updateStatus(11, currentSwitch.getId());
			this.cableLineService.updateLineStatus(4, lines);
			return result;
		} else {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", -1);
			result.put("tip", "上游没电,本次操作无效.");
			result.put("lines", null);
			return result;
		}
	}

	private Object closeCommonSwitch(CableSwitch currentSwitch, List<SwitchUpStream> upstreams,
			List<SwitchDownStream> downstreams) {
		// 1.上游给否有电
		int count = 0;
		for (Iterator<SwitchUpStream> it = upstreams.iterator(); it.hasNext();) {
			boolean upstreamHasCurrent = this.upstreamHasCurrent(currentSwitch, it.next());
			if (upstreamHasCurrent) {
				count++;
				it.remove();
			}
		}
		//两边都有电
		if (count > 1) {// 如果握手开关电流冲突
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", -2);
			result.put("lines", null);
			result.put("tip", "握手开关电流冲突,系统拒绝本次操作!");
			return result;
		} else if (count == 1) {// 上游有一条线有电
			Set<String> lines = new HashSet<String>();
			for (Iterator<SwitchUpStream> it = upstreams.iterator(); it.hasNext();) {
				SwitchUpStream up = it.next();
				System.out.println("测试:"+up.getUpstream());
				String[] switchs = up.getUpstream().split(",");
				/*Set<String> upLines =null;
				for(int i=0;i<switchs.length;i++)
				{
					String upSwitch = switchs[i];
					System.out.println("测试:"+"第"+i+1+"个  "+upSwitch);
					upLines = lineSwitchRelationService.getLinesBySwitchId(upSwitch);
					List<CableSwitch> ds = this.cableSwitchService.getDownStreamByStatus(upSwitch, 10);
					Set<String> ls = this.lineSwitchRelationService.getLinesBySwitchs(ds);
					upLines.removeAll(ls);
				}*/
				String upFirstSwitch = switchs[switchs.length - 1];
				//System.out.println("测试:"+upFirstSwitch);
				// 拿到upFirstSwitch下游开关影响的线的集合
				Set<String> upLines = lineSwitchRelationService.getLinesBySwitchId(upFirstSwitch);

				List<CableSwitch> ds = this.cableSwitchService.getDownStreamByStatus(upFirstSwitch, 10);
				Set<String> ls = this.lineSwitchRelationService.getLinesBySwitchs(ds);

				upLines.removeAll(ls);
				//upLines=ls;

				/*for (SwitchDownStream item : downstreams) {
					List<CableSwitch> ss = this.getDownStreamSwitch(item);
					for (CableSwitch s : ss) {
						//System.out.println("qwe"+s.getName());
						if (s.getStatus() == 10) {
							if (s.getType() != 1 && s.getType() != 3) {
								//System.out.println("hr"+s.getName());
								Set<String> set = lineSwitchRelationService.getLinesBySwitchId(s.getId());
								upLines.removeAll(set);
							}
						}
					}
				}*/
				lines.addAll(upLines);
			}

			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", 1);
			result.put("tip", "操作成功");
			result.put("lines", lines);
			this.cableSwitchService.updateStatus(11, currentSwitch.getId());
			this.cableLineService.updateLineStatus(4, lines);
			return result;
		} else {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("oc", -1);
			result.put("lines", null);
			result.put("tip", "握手开关没有发现可用的上游开关,本次操作无效");
			return result;
		}
	}
	
	
	/**
	 * 设置所有变电站所影响的所有线路状态
	 * 
	 * @param currentSwitch
	 * @param upstreams
	 * @param downstreams
	 * @return
	 */
	private Object setStationSwitch(CableSwitch currentSwitch, List<SwitchStream> streams,int status) {
		
		Set<String> lines = new HashSet<String>();
		for(int i=0;i<streams.size();i++)
		{
			String[] switchs = streams.get(i).getSwitchStream().split(",");
			for(int j=0;j<switchs.length;j++)
			{
				CableSwitch s = this.cableSwitchService.getCableSwitch(switchs[j]);
				System.out.println(s.getId());
				if(s.getType()==1)
				{
					System.out.println(s.getId());
					Set<String> singleLines = lineSwitchRelationService.getLinesBySwitchId(s.getId());
					lines.addAll(singleLines);
				}
			}
		}
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("tip", "操作成功");
		result.put("lines", lines);
		//this.cableSwitchService.updateStatus(11, currentSwitch.getId());
		int newStatus=11;
		if(status==1)
		{
			newStatus=11;
		}
		else if(status==2){
			newStatus=10;
		}
		else if(status==3){
			newStatus=12;
		}
		else if(status==4){
			newStatus=13;
		}
		System.out.println(newStatus+"ffff");
		this.cableSwitchService.setStationStatus(currentSwitch.getId(),newStatus);
		this.cableLineService.updateLineStatus(3+status, lines);
		return result;
	}
	
	

	/**
	 * 分析上游开关是否有电
	 * 
	 * @param cableSwitch
	 *            当前开关
	 * @param upstreams
	 *            上游所有开关集合
	 * @return
	 */
	private boolean upstreamHasCurrent(CableSwitch cableSwitch, SwitchUpStream upstreams) {
		if (cableSwitch.getType() == 1) {
			return true;
		}
		String[] switchIds = upstreams.getUpstream().split(",");
		for (int i = 0; i < switchIds.length; i++) {
			CableSwitch s = this.cableSwitchService.getCableSwitch(switchIds[i]);
			if (s.getStatus() == 10) {
				return false;
			}
		}
		return true;
	}

	/**
	 * 
	 * 
	 * @param downstream
	 * @return
	 */
	private List<CableSwitch> getDownStreamSwitch(SwitchDownStream downstream) {
		return this.getDownStreamSwitch(downstream.getDownstream());
	}

	private List<CableSwitch> getDownStreamSwitch(String stream) {
		//System.out.println("getDownStreamSwitch"+stream);
		String[] ids = stream.split(",");
		//System.out.println("getDownStreamSwitch"+"ids:"+ids.length);
		if (ids.length < 1) {
			return null;
		}
		List<CableSwitch> lst = new LinkedList<CableSwitch>();
		for (String id : ids) {
			CableSwitch s = this.switchCache.getCableSwitch(id);
			//System.out.println("哈哈哈哈id"+id);
			//System.out.println("哈哈哈哈"+s.getName());
			
			lst.add(s);
		}
		//System.out.println("getDownStreamSwitch"+"lst:"+lst.toString());
		return lst;
	}

	/**
	 * 获得电路图上所有线和开关的id和状态
	 * 
	 * @return
	 */
	@RequestMapping("/getAllLinesAndSwitchs.do")
	@ResponseBody
	public Object getLinesAndSwitchs() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<Map<String, Object>> lines = cableLineService.getAll();
		map.put("lines", lines);
		List<Map<String, Object>> switchs = cableSwitchService.getAll();
		map.put("switchs", switchs);
		map.put("message", "开关状态: 10 表示断开,11表示闭合; 线路状态:4表示有电，５表示没电，６表示闲置，７表示备用");
		
		return map;
	}

	/**
	 * 记录线路断电历史
	 * 
	 * @param switchId
	 *            开关id
	 * @param status
	 *            1:合闸　　０:断闸
	 * @param req
	 * @return
	 */
	private boolean recordInterrupt(String switchId, int status, HttpServletRequest req) {
		boolean success = false;
		if (StringUtils.isNotBlank(switchId)) {
			Calendar now = Calendar.getInstance(Locale.PRC);
			HttpSession session = req.getSession();
			User user = null;
			if (session != null) {
				Object obj = session.getAttribute(Constant.SESSION_KEY_USER);
				user = (User) obj;
				if (user != null) {
					InterruptHistory entity = new InterruptHistory();
					entity.setInterruptTime(now.getTime());
					entity.setOperater(user.getId());
					entity.setSwitchId(switchId);
					entity.setOperate(status);
					success &= this.interruptHistoryService.insert(entity);
				}
			}
		}
		return success;
	}
}
