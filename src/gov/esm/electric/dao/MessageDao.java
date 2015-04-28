package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.Message;
import gov.esm.electric.domain.UserLog;
import gov.esm.electric.entity.InterruptHistoryVo;
import gov.esm.electric.entity.MessageVo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * 
 * @author XueLiang
 * @date 2014年11月28日
 */
@Component
public class MessageDao {
	
	private static int counter = 0;  
	@Resource
	private JdbcTemplate jdbcTemplate;
	private static final RowMapper<UserLog> rowMapper = new BeanPropertyRowMapper<UserLog>(
			UserLog.class);
	
	private static final RowMapper<MessageVo> rowMapperMessageVo = new BeanPropertyRowMapper<MessageVo>(
			MessageVo.class);

	private static final DateFormat formater = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");
	
	private static final DateFormat formaterDate = new SimpleDateFormat(
			"yyyy-MM-dd");

	private static final String sql_insert = "insert into message(userId,message) values (?,?)";

	public boolean insert(Message entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getUserId(),
						entity.getMessage());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		int affected = this.jdbcTemplate.update(creator, holder);
		boolean success = false;
		if (success = affected > 0) {
			entity.setId(holder.getKey().intValue());
		}
		return success;
	}
	
	

	private static final String sql_messages = ""
			+ "select message.id,name,message,loginTime,logoutTime  "
			+ "FROM user,user_log,message "
			+ "where user.id=user_log.userId "
			+ "and user.id=message.userId "
			+ "and message.time>user_log.loginTime "
			+ "and message.time<user_log.logoutTime";

	public List<MessageVo> getMessage(int index, int size) {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_messages);
		sql.append(" limit ").append((index - 1) * size).append(",").append(size);
		return this.jdbcTemplate.query(sql.toString(), rowMapperMessageVo);
	}
	
	public List<MessageVo> getTodayMessage() {
		Calendar cal=Calendar.getInstance();
	    Date today=cal.getTime();
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_messages);
		sql.append(" and loginTime>=").append("'").append(formaterDate.format(today)+" 08:00:00").append("'")
		.append(" and ").append("logoutTime<=").append("'")
		.append(formaterDate.format(new Date())+" 18:00:00").append("'");
		return this.jdbcTemplate.query(sql.toString(), rowMapperMessageVo);
	}
	
	private static final String sql_messagesTotal = ""
			+ "select count(1)  "
			+ "FROM user,user_log,message "
			+ "where user.id=user_log.userId "
			+ "and user.id=message.userId "
			+ "and message.time>user_log.loginTime "
			+ "and message.time<user_log.logoutTime";
	
	public int getMessageTotal(){
		return this.jdbcTemplate.queryForObject(sql_messagesTotal, Integer.class);
	}
	/*
	
	public List<InterruptHistoryVo> getYestadayHistories() {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistories);
		
		Calendar cal=Calendar.getInstance();
        cal.add(Calendar.DATE,-1);
        Date yesDate=cal.getTime();
			sql.append(" where interruptTime>=").append("'").append(formaterDate.format(yesDate)+" 00:00:00").append("'")
					.append(" and ").append("interruptTime<").append("'")
					.append(formaterDate.format(new Date())+" 00:00:00").append("'");
		return this.jdbcTemplate.query(sql.toString(), rowMapper);
	}
	
	public List<InterruptHistoryVo> getAllHistories(Date start, Date end) {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistories);
		if (start != null && end != null) {
			sql.append(" where interruptTime>=").append(formater.format(start))
					.append(" and ").append("interruptTime<=")
					.append(formater.format(end));
		}
		return this.jdbcTemplate.query(sql.toString(), rowMapper);
	}

	private static final String sql_getHistoryTotal = "select count(1) from ("
			+ "select " + "h.id,h.switchId,interruptTime,"
			+ "u.realName as operatorName," + "cw.name as switchName,"
			+ "case  h.operate " + " when 1 then '闭闸' " + " when 0 then '开闸' "
			+ " end as operate " + " from interrupt_history as h "
			+ " left join user as u " + " on h.operater=u.id "
			+ " left join cable_switch as cw " + " on h.switchId=cw.id "
			+ " order by h.id desc) as V ";

	public int getHistoryTotal(Date start, Date end,String switchId,String operate, String operatorName) {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistoryTotal);
		if (start != null && end != null) {
			sql.append(" where interruptTime>=").append("'").append(formater.format(start)).append("'")
					.append(" and ").append("interruptTime<=").append("'")
					.append(formater.format(end)).append("'");
		}
		
		if(null!=switchId&&!"".equals(switchId))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where switchId =").append("'"+switchId+"'");
			}
			else {
				sql.append(" AND switchId =").append("'"+switchId+"'");
			}
				
		}
		if(null!=operate&&!"".equals(operate)&&!"2".equals(operate))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where operate =").append("'"+operate+"'");
			}
			else {
				sql.append(" AND operate =").append("'"+operate+"'");
			}
			
		}
		if(null!=operatorName&&!"".equals(operatorName))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where operatorName =").append("'"+operatorName+"'");
			}
			else {
				sql.append(" AND operatorName =").append("'"+operatorName+"'");
			}
			
		}
		
		return this.jdbcTemplate.queryForObject(sql.toString(), Integer.class);
	}
	
	//按开关名称搜索
	public List<InterruptHistoryVo> searchHistories(String switchId,String operate, String operatorName, int index, int size, Date begindate, Date enddate) {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistories);
		if (begindate != null && enddate != null) {
			sql.append(" where interruptTime>=").append("'").append(formaterDate.format(begindate)).append("'")
					.append(" and ").append("interruptTime<=").append("'")
					.append(formaterDate.format(enddate)).append("'");
		}
		if(null!=switchId&&!"".equals(switchId))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where switchId =").append("'"+switchId+"'");
			}
			else {
				sql.append(" AND switchId =").append("'"+switchId+"'");
			}
				
		}
		if(null!=operate&&!"".equals(operate)&&!"2".equals(operate))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where operate =").append("'"+operate+"'");
			}
			else {
				sql.append(" AND operate =").append("'"+operate+"'");
			}
			
		}
		if(null!=operatorName&&!"".equals(operatorName))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where operatorName =").append("'"+operatorName+"'");
			}
			else {
				sql.append(" AND operatorName =").append("'"+operatorName+"'");
			}
			
		}
		
		sql.append(" limit ").append((index - 1) * size).append(",").append(size);
		
		System.out.println(sql.toString());
		return this.jdbcTemplate.query(sql.toString(), rowMapper); 
	}
	
	*//** 
     * 判断str1中包含str2的个数 
      * @param str1 
     * @param str2 
     * @return counter 
     *//*  
    public static int countStr(String str1, String str2) {
    	
        if (str1.indexOf(str2) == -1) {  
            return 0;  
        } else if (str1.indexOf(str2) != -1) {  
            counter++;
            countStr(str1.substring(str1.indexOf(str2) +  
                   str2.length()), str2);  
               return counter;  
        }  
            return 0;  
    } */
}
