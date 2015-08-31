package gov.esm.electric.web.filter;

import gov.esm.assistor.StringAssistor;
import gov.esm.electric.domain.Permission;
import gov.esm.electric.domain.User;
import gov.esm.electric.web.Constant;

import java.io.IOException;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 访问控制，未登录跳转到登录页面
 * 
 * @author xue
 *
 */
public class AccessFilter implements Filter {

	private static final Logger logger = Logger.getLogger("web");

	@Override
	public void init(FilterConfig fc) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		
		
		
		HttpServletRequest request = (HttpServletRequest) req;
		String path = request.getServletPath();
		HttpSession session = request.getSession();
		
		if("/monitor.do".equals(path))
		{
			request.getRequestDispatcher("/monitor.do").forward(req, resp);
			return;
		}
		if("/circuit/getMessage.do".equals(path)||"/circuit/getAllLinesAndSwitchs.do".equals(path)||"/circuit/removeMessage.do".equals(path)){
			chain.doFilter(req, resp);
			return;
		}
		
		if (session != null) {
			User user = (User) session.getAttribute("user");
			if (user == null) {
				request.getRequestDispatcher("/login.do").forward(req, resp);
				return;
			} else {
				@SuppressWarnings("unchecked")
				List<Permission> permissions = (List<Permission>) session
						.getAttribute(Constant.SESSION_KEY_PERMISSIONS);
				if (permissions == null || permissions.size() < 1) {
					request.getRequestDispatcher("/login.do")
							.forward(req, resp);
				} else {
					logger.info("context path is :" + path);
					
				}
			}
		} else {
			request.getRequestDispatcher("/login.do").forward(req, resp);
		}
		chain.doFilter(req, resp);
	}

	@Override
	public void destroy() {

	}

	private boolean hasPermission(String uri, List<Permission> permissions) {
		if (StringAssistor.isBlank(uri)) {
			return false;
		}
		for (Permission p : permissions) {
			if (p != null) {
				String url = p.getUrl();
				if (StringAssistor.isNotBlank(url)) {
					if (url.equals(uri)) {
						return true;
					}
				}
			}
		}
		return false;
	}
}
