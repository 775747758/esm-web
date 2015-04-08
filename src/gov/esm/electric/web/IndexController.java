package gov.esm.electric.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class IndexController {

	@RequestMapping(value = "/index.do")
	public String index() {
		return "/index";
	}
	
	@RequestMapping("/monitor.do")
	public String monitor(){
		return "/monitor";
	}
}
