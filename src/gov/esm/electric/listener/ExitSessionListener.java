package gov.esm.electric.listener;

import gov.esm.assistor.SpringContextHolder;
import gov.esm.electric.dao.UserLogDao;
import gov.esm.electric.domain.User;
import gov.esm.electric.domain.UserLog;
import gov.esm.electric.web.Constant;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

public class ExitSessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent arg0) {
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent arg0) {
		UserLogDao userLogDao=(UserLogDao)SpringContextHolder.getBeanOneOfType(UserLogDao.class);
		User user = (User) arg0.getSession().getAttribute(Constant.SESSION_KEY_USER);
		if(null!=user){
			Date loginDate=(Date) arg0.getSession().getAttribute(Constant.SESSION_KEY_LOGIN_TIME);
			Calendar now = Calendar.getInstance(Locale.PRC);
			UserLog entity=new UserLog();
			entity.setLoginTime(loginDate);
			entity.setLogoutTime(now.getTime());
			entity.setUserId(user.getId());
			userLogDao.insert(entity);
		}
	}
}
