package gov.esm.electric.web.circuit;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import gov.esm.electric.dao.MessageDao;
import gov.esm.electric.domain.Message;
import gov.esm.electric.domain.User;
import gov.esm.electric.entity.MessageVo;
import gov.esm.electric.entity.UserVo;
import gov.esm.electric.web.Constant;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/message")
public class MessageController {
	
	@Resource
	private MessageDao messageDao;
	
	@RequestMapping(value = "/sendMessage.do")
	@ResponseBody
	public JsonBean sendMessage(HttpServletRequest request,String message)  {
		JsonBean json = new JsonBean();
		request.getSession().getServletContext().setAttribute("msg", message);
		json.setMsg("success!");
		User user = (User) request.getSession().getAttribute(Constant.SESSION_KEY_USER);
		
		//将message存入数据库
		Message messageV=new Message();
		
		messageV.setUserId(user.getId());
		messageV.setMessage(message);
		Calendar now = Calendar.getInstance(Locale.PRC);
		messageV.setTime(now.getTime());
		messageDao.insert(messageV);
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
	
	@RequestMapping(value = "/getMessageTable.do", method = RequestMethod.GET)
	public String getInterruptHistories(HttpServletRequest req) {
		return "/report/message";
	}
	
	@RequestMapping(value = "/getMessageTable.do", method = RequestMethod.POST)
	@ResponseBody
	public Object getMessageTable(
			@RequestParam(value = "page", defaultValue = "1") int pageNo,
			@RequestParam(value = "rows", defaultValue = "10") int pageSize) {
		Map<String, Object> map = new HashMap<String, Object>();
		List<MessageVo> messages = messageDao.getMessage(pageNo, pageSize);
		map.put("rows", messages);
		Integer total = messageDao.getMessageTotal();
		map.put("total", total);
		return map;
	}

}
