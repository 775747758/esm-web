package gov.esm.electric.web;

import javax.servlet.http.HttpServletRequest;

import gov.esm.electric.service.CableDiagramService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class IndexController {

	@Autowired
	private CableDiagramService cableDiagramService;
	
	@RequestMapping(value = "/index.do")
	public String index() {
		return "/index";
	}
	
	@RequestMapping("/monitor.do")
	public String monitor(HttpServletRequest req){
		req.getSession().setAttribute("cableDiagram", cableDiagramService.getRecentCableDiagram());
		return "/monitor";
	}
}
