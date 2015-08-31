package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.UserLog;
import gov.esm.electric.entity.InterruptHistoryVo;

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
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * 
 * @author XueLiang
 * @date 2014年11月28日
 */
@Component
public class UserLogDao {
	
	private static int counter = 0;  
	@Resource
	private JdbcTemplate jdbcTemplate;
	private static final RowMapper<UserLog> rowMapper = new BeanPropertyRowMapper<UserLog>(
			UserLog.class);

	private static final DateFormat formater = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");
	
	private static final DateFormat formaterDate = new SimpleDateFormat(
			"yyyy-MM-dd");

	private static final String sql_insert = "insert into user_log(userId,loginTime,logoutTime) values (?,?,?)";

	public boolean insert(UserLog entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getUserId(),
						entity.getLoginTime(), entity.getLogoutTime());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		int affected = this.jdbcTemplate.update(creator, holder);
		boolean success = false;
		if (success = affected > 0) {
			entity.setId(holder.getKey().intValue());
		}
		return success;
	}

	
	
	private static final String sql_log="select * from user_log ";

	public List<UserLog> getUserLog( int index, int size) {
		StringBuilder builder=new StringBuilder();
		builder.append(sql_log).append(" order by id desc ").append(" limit ").append((index - 1) * size).append(",").append(size);
		System.out.println(builder.toString());
		return this.jdbcTemplate.query(builder.toString(), rowMapper);
	}
	
	public List<UserLog> getTodayUserLog() {
		Calendar cal=Calendar.getInstance();
	    Date today=cal.getTime();
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_log);
		sql.append(" where loginTime>=").append("'").append(formaterDate.format(today)+" 00:00:00").append("'")
		.append(" and ").append("logoutTime<=").append("'")
		.append(formaterDate.format(new Date())+" 24:00:00").append("'");
		sql.append(" order by id desc");
		return this.jdbcTemplate.query(sql.toString(), rowMapper);
	}
	
	
	private static final String sql_getUserLogTotal = "select count(1) from user_log ";
	@Transactional(propagation = Propagation.SUPPORTS)
	public Integer getUserTotal() {
		return this.jdbcTemplate
				.queryForObject(sql_getUserLogTotal, Integer.class);

	}
	
}
