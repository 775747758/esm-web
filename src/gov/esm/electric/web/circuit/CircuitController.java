
package gov.esm.electric.web.circuit;

import gov.esm.assistor.ListUtils;
import gov.esm.electric.cache.SwitchCache;
import gov.esm.electric.dao.SwitchOperationDao;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchOperation;
import gov.esm.electric.domain.SwitchStream;
import gov.esm.electric.domain.SwitchUpStream;
import gov.esm.electric.domain.User;
import gov.esm.electric.service.CableDiagramService;
import gov.esm.electric.service.CableLineService;
import gov.esm.electric.service.CableSwitchService;
import gov.esm.electric.service.InterruptHistoryService;
import gov.esm.electric.service.LineSwitchRelationService;
import gov.esm.electric.service.SwitchInfluencedStreamService;
import gov.esm.electric.service.SwitchOperationService;
import gov.esm.electric.web.Constant;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
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
import javax.servlet.http.HttpSession;

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
	private SwitchInfluencedStreamService switchInfluencedStreamService;

	@Resource
	private SwitchCache switchCache;

	@Resource
	private SwitchOperationService switchOperationService;
	@Autowired
	private CableDiagramService cableDiagramService;

	@RequestMapping(value = "/getSwitchOrLineByKeyword.do", method = RequestMethod.GET)
	@ResponseBody
	public Object getSwitchByKeyword(String searchType, String keyword) {
		if (searchType != null) {
			if (searchType.equals("line")) {
				List<Map<String, Object>> list = cableLineService
						.getLinesByKeyword(keyword);
				return list;
			} else {
				List<Map<String, Object>> list = cableSwitchService.getSwitchNameByKeyword(keyword);
				System.out.println("最后"+list.size()+"ddd");
				return list;
			}
		}
		return null;

	}

	@RequestMapping(value = "/sendMessage.do")
	@ResponseBody
	public JsonBean sendMessage(HttpServletRequest request, String message) {
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
		if (null != message || !"".equals(message)) {
			json.setSuccess(true);
		}

		json.setObj(message);
		return json;
	}

	@RequestMapping(value = "/removeMessage")
	@ResponseBody
	public JsonBean removeMessage(HttpServletRequest request) {
		JsonBean json = new JsonBean();
		request.getSession().getServletContext().removeAttribute("msg");
		request.getSession().invalidate();
		json.setSuccess(true);
		return json;
	}

	@RequestMapping("/diagram.do")
	public String diagram(HttpServletRequest req) {
		req.getSession().setAttribute("cableDiagram", cableDiagramService.getRecentCableDiagram());
		return "/circuit/diagram";
	}

	private static final ObjectMapper objectMapper = new ObjectMapper();
	private static final Logger logger = Logger.getLogger("stdout");

	// /circuit/getSwitchsBySwitchId.do
	/**
	 * 根据开关id得到该开关影响的开关集合
	 * 
	 * @param switchId
	 * @return
	 */
	@RequestMapping(value = "/getSwitchsBySwitchId.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getSwitchsBySwitchId(String switchId, HttpServletRequest req) {
		CableSwitch currentSwitch = cableSwitchService.getCableSwitch(switchId);
		List<SwitchDownStream> downstreams = this.cableSwitchService
				.getDownStreamSwitchs(switchId);
		return req;
	}

	/**
	 * 根据开关id得到该开关影响的线路集合
	 * 
	 * @param switchId
	 * @return
	 */
	@RequestMapping(value = "/getLinesBySwitchId.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getLinesBySwitchId(
			@RequestParam(value = "switchId", defaultValue = "0") String switchId,
			@RequestParam(value = "status") int status, HttpServletRequest req)
			throws Exception {
		
		logger.info(switchId + "  " + status);
		CableSwitch currentSwitch = cableSwitchService.getCableSwitch(switchId);
		recordInterrupt(currentSwitch, status, req);
		if (currentSwitch.getType() == 4) {
			List<SwitchStream> streams = this.cableSwitchService
					.getStationStreamSwitchs(switchId);
			return this.setStationSwitch(currentSwitch, streams, status);
		} else {
			// step 1.得到switchId的所有上游开关集合
			List<SwitchUpStream> upstreams = this.cableSwitchService
					.getUpstreamSwitchs(switchId);

			logger.info("step 1.上游开关集合");
			logger.info(objectMapper.writeValueAsString(upstreams));

			// step 2.得到switchId的所有下游开关集合
			List<SwitchDownStream> downstreams = this.cableSwitchService
					.getDownStreamSwitchs(switchId);

			// System.out.println("getLinesBySwitchIdeeee"+downstreams.toString());

			logger.info("step 2.下游开关集合");
			logger.info(objectMapper.writeValueAsString(downstreams));
			// 开闸
			if (status == 10) {
				logger.info("开闸");
				switchOperationService.recordSwitchOpertion(currentSwitch,
						status, req);
				// this.cableSwitchService.updateStatus(10,
				// currentSwitch.getId());
				if (currentSwitch.getType() == 3) {// 当前开关是握手开关
					logger.info("开闸:握手开关");
					return this.openCommonSwitch(currentSwitch, upstreams,
							downstreams);
				} else if (currentSwitch.getType() == 1) {// 当前开关是变电站第一开关
					logger.info("开闸:第一开关");
					return this.openNormalSwitch(currentSwitch, upstreams,
							downstreams);
				} else if (currentSwitch.getType() == 2) {// 当前开关是普通开关
					logger.info("开闸:普通开关");

					return this.openNormalSwitch(currentSwitch, upstreams,
							downstreams);
				}
			}
			// 合闸
			else if (status == 11) {
				switchOperationService.recordSwitchOpertion(currentSwitch,
						status, req);
				// this.cableSwitchService.updateStatus(11,
				// currentSwitch.getId());
				if (currentSwitch.getType() == 3) {// 如果是握手开关
					logger.info("合闸:握手开关");
					return this.closeCommonSwitch(currentSwitch, upstreams,
							downstreams);
				} else if (currentSwitch.getType() == 1) {// 如果是变电站出来的第一开关
					logger.info("合闸:第一开关");
					return this.closeNormalSwitch(currentSwitch, upstreams,
							downstreams);
				} else if (currentSwitch.getType() == 2) {
					logger.info("合闸:普通开关");
					return this.closeNormalSwitch(currentSwitch, upstreams,
							downstreams);
				}
			} else if (status == 12 || status == 13) {
				logger.info("备用或者闲置");
				switchOperationService.recordSwitchOpertion(currentSwitch,
						status, req);
				if (currentSwitch.getType() == 1
						|| currentSwitch.getType() == 2) {
					return this.unUseOrReserve(currentSwitch, upstreams,
							downstreams,status);
				}

			}

		}

		return null;
	}

	private Object unUseOrReserve(CableSwitch currentSwitch,
			List<SwitchUpStream> upstreams, List<SwitchDownStream> downstreams,int status) {
		// 拿到此开关影响的所有线
		Set<String> lines = lineSwitchRelationService
				.getLinesBySwitchId(currentSwitch.getId());
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("tip", "");
		result.put("lines", lines);
		this.cableSwitchService.updateStatus(status, currentSwitch.getId());
		this.cableLineService.updateLineStatus(status-6, lines);
		return result;
	}

	/**
	 * 断开变电站第一开关
	 * 
	 * @param currentSwitch
	 * @param downstreams
	 * @return
	 */
	private Object openFirstSwitch(CableSwitch currentSwitch,
			List<SwitchDownStream> downstreams) {
		// 拿到此开关影响的所有线
		Set<String> lines = lineSwitchRelationService
				.getLinesBySwitchId(currentSwitch.getId());
		for (SwitchDownStream item : downstreams) {
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);

			for (CableSwitch s : switchs) {
				System.out.println(s.getName() + ":" + s.getId());
				if (s.getStatus() == 10) {
					if (s.getType() == 2) {
						Set<String> set = lineSwitchRelationService
								.getLinesBySwitchId(s.getId());
						lines.removeAll(set);
					}
				} else {
					if (s.getType() == 3) {
						lines = lineSwitchRelationService.getLinesBySwitchId(s
								.getId());
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
	private Object openNormalSwitch(CableSwitch currentSwitch,
			List<SwitchUpStream> upstreams, List<SwitchDownStream> downstreams) {
		/*
		 * // 1.上游是否有电 int count = 0; for (Iterator<SwitchUpStream> it =
		 * upstreams.iterator(); it.hasNext();) { boolean upstreamHasCurrent =
		 * this.upstreamHasCurrent(currentSwitch, it.next()); if
		 * (upstreamHasCurrent) { count++; it.remove(); } }
		 */
		Set<String> lines = lineSwitchRelationService
				.getLinesBySwitchId(currentSwitch.getId());
		for (SwitchDownStream item : downstreams) {
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);
			for (CableSwitch s : switchs) {
			System.out.println(s.getId());
			if(s.getStatus()==12||s.getStatus()==13){
				Set<String> set = lineSwitchRelationService
						.getLinesBySwitchId(s.getId());
				lines.removeAll(set);
			}
				if (s.getType() == 2 && s.getStatus() == 10) {
				
					Set<String> set = lineSwitchRelationService
							.getLinesBySwitchId(s.getId());
					lines.removeAll(set);
				} else if (s.getType() == 3 && s.getStatus() == 11) {
					Map<String, Object> result = new HashMap<String, Object>();
					result.put("oc", -1);
					result.put("tip", "握手开关正在工作,系统拒绝本次操作.");
					result.put("lines", null);
				}
			}
		}

		// 获取开关所影响的开关id集合
		List<String> switchsStr = new ArrayList<String>();
		List<CableSwitch> switchs = switchInfluencedStreamService.getSwitchsInfluenced(currentSwitch.getId());
		if(switchs!=null){

			for (CableSwitch cableSwitch : switchs) {
				if(cableSwitch.getStatus()!=10){
					this.cableSwitchService.updateStatus(14, cableSwitch.getId());
					switchsStr.add(cableSwitch.getId());
				}
			}
		}
		System.out.println(switchsStr.toString());
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("tip", "");
		result.put("lines", lines);
		result.put("switchs", switchsStr);
		result.put("action", "DEBUG");
		this.cableSwitchService.updateStatus(10, currentSwitch.getId());
		this.cableLineService.updateLineStatus(5, lines);
		return result;

	}

	/**
	 * 断开一个握手开关
	 * 
	 * @return
	 */
	private Object openCommonSwitch(CableSwitch currentSwitch,
			List<SwitchUpStream> upstreams, List<SwitchDownStream> downstreams) {

		Set<String> lines = new HashSet<String>();
		for (SwitchDownStream item : downstreams) {
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);
			System.out.println("下游开关集合：：："
					+ switchs.get(switchs.size() - 1).getId());
			String fistOpenSwitchId = null;
			String secondOpenSwitchId = null;
			int i = 0;
			int l = 0;
			int index = 0;
			// 方向
			boolean isContains = true;
			List<CableSwitch> listInfluenced = null;
			for (CableSwitch s : switchs) {
				l++;
				if (s.getStatus() == 10) {
					i++;

					if (i == 1) {
						listInfluenced = switchInfluencedStreamService.getSwitchsInfluenced(s.getId());
						fistOpenSwitchId = s.getId();
						index = l;
					}

					if (i == 2) {
						secondOpenSwitchId = s.getId();
					}
				}
				if (l > index) {

					if (listInfluenced != null) {
						System.out.println("第一个断开的开关后面的开关：" + s.getId());
						if (!listInfluenced.contains(s)) {
							System.out
									.println("第一个断开的开关所影响的开关不包含：" + s.getId());
							isContains = false;
						}
					}

				}

			}
			boolean isUpStreamHaveOpenedSwitch = false;
			String upstreamFirstOpenedSwitchid = null;
			if (i == 0) {
				System.out.println("下游开关集合中没有断开的开关");
				List<SwitchUpStream> listUp = this.cableSwitchService
						.getUpstreamSwitchs(switchs.get(0).getId());
				for (SwitchUpStream up : listUp) {
					String[] us = up.getUpstream().split(",");
					for (int k = 0; k < us.length; k++) {
						if (us[k].equals(currentSwitch.getId())) {
							break;
						}
						CableSwitch cs = this.cableSwitchService
								.getCableSwitch(us[k]);
						//修改：
						if (cs.getStatus() == 10) {
							upstreamFirstOpenedSwitchid = cs.getId();
							isUpStreamHaveOpenedSwitch = true;
						}
					}
				}
				if (isUpStreamHaveOpenedSwitch) {
					Set<String> set = lineSwitchRelationService
							.getLinesBySwitchId(upstreamFirstOpenedSwitchid);
					System.out.println("上游有断开的开关，所以要取消反带" + set.toString());
					lines.addAll(set);
				} else {
					System.out.println("上游无断开的开关，所以不取消反带");
				}

			}
			if (fistOpenSwitchId != null) {
				// 流出握手
				if (isContains) {
					System.out.println("判断方向：流出握手");
					if (isUpStreamHaveOpenedSwitch) {
						Set<String> setFirstOpenSwitch = lineSwitchRelationService
								.getLinesBySwitchId(fistOpenSwitchId);
						Set<String> setUpOpen = lineSwitchRelationService
								.getLinesBySwitchId(upstreamFirstOpenedSwitchid);
						setUpOpen.removeAll(setFirstOpenSwitch);
						System.out.println("取消反带：：" + setUpOpen.toString());
						lines.addAll(setUpOpen);
					}
				}
				// 流入握手
				else {
					System.out.println("判断方向：流入握手");
					Set<String> set = lineSwitchRelationService
							.getLinesBySwitchId(fistOpenSwitchId);
					lines.addAll(set);

				}
			}

		}
		
		System.out.println("闭合一个握手所影响的线路：" + lines.toString());
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("tip", "");
		result.put("action", "OPEN");
		result.put("lines", lines);
		this.cableSwitchService.updateStatus(10, currentSwitch.getId());
		this.cableLineService.updateLineStatus(5, lines);
		return result;
	}

	/**
	 * 合上一个变电站开关
	 * 
	 * @param currentSwitch
	 * @param downstreams
	 * @return
	 */
	private Object closeFirstSwitch(CableSwitch currentSwitch,
			List<SwitchDownStream> downstreams) {
		// 拿到此开关影响的所有线
		Set<String> lines = lineSwitchRelationService
				.getLinesBySwitchId(currentSwitch.getId());
		for (SwitchDownStream item : downstreams) {
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);
			for (CableSwitch s : switchs) {
				if (s.getStatus() == 10) {
					if (s.getType() == 2) {
						Set<String> set = lineSwitchRelationService
								.getLinesBySwitchId(s.getId());
						lines.removeAll(set);
					}
				} else if (s.getType() == 3) {
					// 检查对面变电站开关是否闭合
					List<SwitchUpStream> ups = this.cableSwitchService
							.getUpstreamSwitchs(s.getId());
					for (SwitchUpStream up : ups) {
						String[] us = up.getUpstream().split(",");
						CableSwitch last = cableSwitchService.getCableSwitch(us[us.length - 1]);
						if (last.getId().equals(currentSwitch.getId())) {
							continue;
						} /*
						 * else if (last.getStatus() == 11) { Map<String,
						 * Object> result = new HashMap<String, Object>();
						 * result.put("oc", -1); result.put("tip",
						 * "电流冲突,本次操作无效!"); result.put("lines", null); return
						 * result; }
						 */else if (last.getStatus() == 10) {
							Set<String> ls = this.lineSwitchRelationService
									.getLinesBySwitchId(last.getId());
							List<CableSwitch> ds = this.cableSwitchService
									.getDownStreamByStatus(last.getId(), 10);
							Set<String> set = this.lineSwitchRelationService
									.getLinesBySwitchs(ds);
							ls.removeAll(set);
							ls.addAll(lines);

							Map<String, Object> result = new HashMap<String, Object>();
							result.put("oc", 1);
							result.put("tip", "");
							result.put("lines", ls);
							this.cableSwitchService.updateStatus(11,
									currentSwitch.getId());
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
	private Object closeNormalSwitch(CableSwitch currentSwitch,
			List<SwitchUpStream> upstreams, List<SwitchDownStream> downstreams) {

		Set<String> lines = lineSwitchRelationService
				.getLinesBySwitchId(currentSwitch.getId());
		List<CableSwitch> switchsInfluenced = switchInfluencedStreamService.getSwitchsInfluenced(currentSwitch.getId());
		List<CableSwitch> copy =null;
		if(switchsInfluenced==null){
			copy=new ArrayList<CableSwitch>();
		}
		else{
			copy=new ArrayList<CableSwitch>(switchsInfluenced);
		}
		 
		for (SwitchDownStream item : downstreams) {
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);

			for (CableSwitch s : switchs) {
				if(s.getStatus()==12||s.getStatus()==13){
					Set<String> set = lineSwitchRelationService
							.getLinesBySwitchId(s.getId());
					lines.removeAll(set);
				}
				if (s.getStatus() == 10 && s.getType() != 3 && s.getType() != 1) {
					Set<String> set = lineSwitchRelationService
							.getLinesBySwitchId(s.getId());
					// 去除那些已经断开的开关所影响的线路
					lines.removeAll(set);
					// 去除那些已经断开的开关所影响的开关
					List<CableSwitch> switchsInfluencedFirst = switchInfluencedStreamService.getSwitchsInfluenced(s.getId());
					if(copy!=null&&switchsInfluencedFirst!=null){
						copy.removeAll(switchsInfluencedFirst);
					}
					
				}

			}

		}

		if(switchsInfluenced!=null){
			for (CableSwitch cableSwitch : switchsInfluenced) {
				if (cableSwitch.getStatus() != 14) {
					if(copy!=null){
						copy.remove(cableSwitch);
					}
				}
			}
		}
		

		// 获取开关所影响的开关id集合
		List<String> switchsStr = new ArrayList<String>();
		if(copy!=null){
			for (CableSwitch cableSwitch : copy) {
				this.cableSwitchService.updateStatus(11, cableSwitch.getId());
				switchsStr.add(cableSwitch.getId());
			}
		}
		
		System.out.println(switchsStr.toString());
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("action", "CLOSE");
		result.put("tip", "");
		result.put("lines", lines);
		result.put("switchs", switchsStr);
		this.cableSwitchService.updateStatus(11, currentSwitch.getId());
		this.cableLineService.updateLineStatus(4, lines);
		return result;

	}

	/*
	 * 合上一个握手开关发
	 */

	private Object closeCommonSwitch(CableSwitch currentSwitch,
			List<SwitchUpStream> upstreams, List<SwitchDownStream> downstreams) {
		Map<String, Object> result = new HashMap<String, Object>();
		int state = isCommonSwitchOk(currentSwitch, upstreams);
		if (state == 1) {
			Set<String> lines = lineSwitchRelationService
					.getLinesBySwitchId(currentSwitch.getId());
			for (SwitchDownStream item : downstreams) {
				List<CableSwitch> switchs = this.getDownStreamSwitch(item);
				System.out.println("下游开关集合：：："
						+ switchs.get(switchs.size() - 1).getId());
				String fistOpenSwitchId = null;
				String secondOpenSwitchId = null;
				int i = 0;
				int l = 0;
				int index = 0;
				boolean isContains = true;
				List<CableSwitch> listInfluenced = null;
				for (CableSwitch s : switchs) {
					l++;
					if (s.getStatus() == 10) {
						i++;

						if (i == 1) {
							listInfluenced = switchInfluencedStreamService.getSwitchsInfluenced(s.getId());
							fistOpenSwitchId = s.getId();
							index = l;
						}

						if (i == 2) {
							secondOpenSwitchId = s.getId();
						}
					}
					if (l > index) {
						System.out.println("第一个断开的开关后面的开关：" + s.getId());
						if (listInfluenced != null) {
							if (!listInfluenced.contains(s)) {
								System.out.println("第一个断开的开关所影响的开关不包含："
										+ s.getId());
								isContains = false;
							}
						}
						if (l == switchs.size() - 1) {
							isContains = false;
						}
					}

				}
				if (i == 0) {
					System.out.println("下游开关集合中没有断开的开关");
					boolean isUpStreamHaveOpenedSwitch = false;
					List<SwitchUpStream> listUp = this.cableSwitchService
							.getUpstreamSwitchs(switchs.get(0).getId());
					for (SwitchUpStream up : listUp) {
						String[] us = up.getUpstream().split(",");
						for (int k = 0; k < us.length; k++) {
							if (us[k].equals(currentSwitch.getId())) {
								break;
							}
							CableSwitch cs = this.cableSwitchService
									.getCableSwitch(us[k]);
							
							//修改
							if (cs.getStatus() == 10) {
								isUpStreamHaveOpenedSwitch = true;
							}
						}
					}
					if (!isUpStreamHaveOpenedSwitch) {
						for (CableSwitch cableSwitch : switchs) {
							Set<String> set = lineSwitchRelationService
									.getLinesBySwitchId(cableSwitch.getId());
							lines.removeAll(set);
							System.out.println("上游没有断开的开关，所以不反带："
									+ set.toString());
						}

					} else {
						System.out.println("上游有断开的开关所以反带");
					}

				}
				if (fistOpenSwitchId != null) {
					System.out.println("下游第一个开关断开");

					if (isContains) {
						System.out.println("判断方向：流出握手");
						Set<String> set = lineSwitchRelationService
								.getLinesBySwitchId(fistOpenSwitchId);
						System.out.println("不反带：：" + set.toString());
						lines.removeAll(set);
					} else {
						System.out.println("判断方向：流入握手");
						Set<String> setFirstSwitch = lineSwitchRelationService
								.getLinesBySwitchId(switchs.get(
										switchs.size() - 1).getId());
						Set<String> setOpen = lineSwitchRelationService
								.getLinesBySwitchId(fistOpenSwitchId);
						setFirstSwitch.removeAll(setOpen);
						System.out.println("不反带：：" + setFirstSwitch.toString());
						lines.removeAll(setFirstSwitch);
					}
				}

			}
			System.out.println("闭合握手所影响的线路：" + lines.toString());

			result.put("oc", 1);
			result.put("tip", "");
			result.put("lines", lines);
			this.cableSwitchService.updateStatus(11, currentSwitch.getId());
			this.cableLineService.updateLineStatus(4, lines);
			return result;
		} else {
			result.put("oc", 1);
			result.put("state", state);
			result.put("tip", "");
			this.cableSwitchService.updateStatus(11, currentSwitch.getId());
			return result;
		}

	}

	/**
	 * 设置所有变电站所影响的所有线路状态
	 * 
	 * @param currentSwitch
	 * @param streams
	 * @param status
	 * @return Object
	 */
	private Object setStationSwitch(CableSwitch currentSwitch,
			List<SwitchStream> streams, int status) {
		Set<String> lines = new HashSet<String>();
		for (int i = 0; i < streams.size(); i++) {
			String[] switchs = streams.get(i).getSwitchStream().split(",");
			for (int j = 0; j < switchs.length; j++) {
				CableSwitch s = this.cableSwitchService
						.getCableSwitch(switchs[j]);
				System.out.println(s.getId());
				if (s.getType() == 1) {
					Set<String> singleLines = lineSwitchRelationService
							.getLinesBySwitchId(s.getId());
					lines.addAll(singleLines);
				}
			}
		}
		System.out.println("线路：" + lines.toString());
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("oc", 1);
		result.put("tip", "操作成功");
		result.put("lines", lines);
		// this.cableSwitchService.updateStatus(11, currentSwitch.getId());
		System.out.println("状态：" + status);
		int LineStatus = 0;
		if (status == 10) {
			LineStatus = 5;
		} else if (status == 11) {
			LineStatus = 4;
		} else if (status == 12) {
			LineStatus = 6;
		} else if (status == 13) {
			LineStatus = 7;
		}
		this.cableSwitchService.setStationStatus(currentSwitch.getId(), status);
		this.cableLineService.updateLineStatus(LineStatus, lines);
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
	private boolean upstreamHasCurrent(CableSwitch cableSwitch,
			SwitchUpStream upstreams) {
		if (cableSwitch.getType() == 1) {
			return true;
		}
		String[] switchIds = upstreams.getUpstream().split(",");
		for (int i = 0; i < switchIds.length; i++) {
			CableSwitch s = this.cableSwitchService
					.getCableSwitch(switchIds[i]);
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
		// System.out.println("getDownStreamSwitch"+stream);
		String[] ids = stream.split(",");
		// System.out.println("getDownStreamSwitch"+"ids:"+ids.length);
		if (ids.length < 1) {
			return null;
		}
		List<CableSwitch> lst = new LinkedList<CableSwitch>();
		for (String id : ids) {
			CableSwitch s = cableSwitchService.getCableSwitch(id);
			// System.out.println("哈哈哈哈id"+id);
			// System.out.println("哈哈哈哈"+s.getName());

			lst.add(s);
		}
		// System.out.println("getDownStreamSwitch"+"lst:"+lst.toString());
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
	private boolean recordInterrupt(CableSwitch cableSwitch, int status,
			HttpServletRequest req) {
		boolean success = false;
		if (StringUtils.isNotBlank(cableSwitch.getId())) {
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
					entity.setSwitchId(cableSwitch.getId());
					entity.setOperate(status);
					success &= this.interruptHistoryService.insert(entity);
				}
			}
		}
		return success;
	}

	/*
	 * 获取一个开关所影响的开关
	 */
	public List<CableSwitch> getSwitchsInfluenced(CableSwitch cableSwitch,
		List<SwitchUpStream> upstreams, List<SwitchDownStream> downstreams) {
		String idString=cableSwitch.getId();
		//改动：针对于紧挨着握手的开关:21DZ201在我握手旁边
		if(idString.equals("21DZ201")){
			return null;
		}
		if(!idString.equals("22DZ201_2")){
			if(idString.split("_").length>1){
				if(idString.split("_")[1].equals("1")||idString.split("_")[1].equals("2")){
					return null;
				}
			}
			
		}
		List<CableSwitch> copy = new ArrayList<CableSwitch>();
		List<SwitchDownStream> copyDownStreams = new ArrayList<SwitchDownStream>(
				downstreams);
		SwitchDownStream haveWSDownStream=null; 
		if(copyDownStreams.size()>1){
			for (int i = 0; i < downstreams.size(); i++) {
				for (int j = 0; j < upstreams.size(); j++) {
					if (downstreams.get(i).getDownstream()
							.equals(upstreams.get(j).getUpstream())) {
						System.out.println("相同的线路："
								+ downstreams.get(i).getDownstream());
						copyDownStreams.remove(downstreams.get(i));
					}
				}
				//如果下游有握手记录下来，以备后面使用
				if(downstreams.get(i).getDownstream().contains("WS")){
					haveWSDownStream=downstreams.get(i);
				}
			}
		}
		//如果最后下游剩下的线路中没有WS开关，那么我们把握手开关加进去
		boolean isHaveWS=false;
		for (SwitchDownStream item : copyDownStreams) {
			if(item.getDownstream().contains("WS")){
				isHaveWS=true;
			}
		}
		if(!isHaveWS){
			System.out.println("警告：：没有握手开关："+cableSwitch.getId());
			SwitchDownStream downStream=new SwitchDownStream();
			String[] ary=haveWSDownStream.getDownstream().split(","+cableSwitch.getId()+",");
			if(ary.length>1){
				System.out.println("警告：：带有本身："+ary[1]);
				downStream.setDownstream(ary[1]);
				copyDownStreams.add(downStream);
			}
			else{
				System.out.println("警告：：不带有本身："+cableSwitch.getId());
				//copyDownStreams.clear();
				copyDownStreams.add(haveWSDownStream);
			}
			
		}
		
		for (SwitchDownStream item : copyDownStreams) {
			boolean isContinue = false;
			List<CableSwitch> switchs = this.getDownStreamSwitch(item);
			// 去除带有握手开关stream中之后的开关
			for (CableSwitch s : switchs) {
				if (s.getType() == 3) {
					System.out.println("是握手开关：所以跳过去"+s.getId());
					isContinue = true;
					break;
				}
				else{
					//添加有握手开关的线路之前的开关
					copy.add(s);
					System.out.println("添加不是握手的开关："+s.getId());
				}
			}
			if (isContinue) {
				continue;
			}
			//测试
			for(CableSwitch s : switchs){
				System.out.println("中间添加"+s.getId());
			}
			copy.addAll(switchs);
			for (CableSwitch s : switchs) {
				if (s.getType() == 2 && s.getStatus() == 10) {
					System.out.println("排除普通并且是断开的开关："+s.getId());
					copy.remove(s);
				}
				
			}
		}
		
		ListUtils.removeDuplicate(copy);
		//测试
		Iterator<CableSwitch> iterator = copy.iterator(); 
		
		while (iterator.hasNext()) {  
			CableSwitch  s= iterator.next();  
			if(s.getStatus()==12||s.getStatus()==13){
				iterator.remove();
			}
	    }
		return copy;
	}

	/*
	 * 判断握手上游开关的情况 0：两边都断开；1：正常（有一边断开）2：两边都有电
	 */
	public int isCommonSwitchOk(CableSwitch currentSwitch,
			List<SwitchUpStream> upstreams) {
		List<SwitchUpStream> listUp = this.cableSwitchService
				.getUpstreamSwitchs(currentSwitch.getId());
		// 存储每条上游开闭情况 1：闭合 0：断开
		List<Integer> list = new ArrayList<Integer>();
		for (SwitchUpStream up : listUp) {
			boolean isStreamHaveOpenedSwitch = false;
			String[] us = up.getUpstream().split(",");
			for (int k = 0; k < us.length; k++) {
				CableSwitch cs = this.cableSwitchService.getCableSwitch(us[k]);
				if (cs.getStatus() == 10) {
					isStreamHaveOpenedSwitch = true;
				}
			}
			if (isStreamHaveOpenedSwitch) {
				list.add(1);
			} else {
				list.add(0);
			}
		}
		if (list.size() > 2) {
			System.out.println("错误：：：握手开关上游多余两条");
			return 0;
		} else {
			if (list.get(0).intValue() == 0 && list.get(1).intValue() == 0) {
				return 0;// 都断开
			} else if (list.get(0).intValue() == 1
					&& list.get(1).intValue() == 1) {
				return 2;// 都闭合
			} else {
				return 1;// 只有一端有断开开关
			}
		}
	}

}

