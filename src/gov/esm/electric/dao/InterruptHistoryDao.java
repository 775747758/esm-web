package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.InterruptHistory;
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

import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * 
 * @author XueLiang
 * @date 2014年11月28日
 */
@Component
public class InterruptHistoryDao {
	
	private static int counter = 0;  
	@Resource
	private JdbcTemplate jdbcTemplate;
	private static final RowMapper<InterruptHistoryVo> rowMapper = new BeanPropertyRowMapper<InterruptHistoryVo>(
			InterruptHistoryVo.class);

	private static final DateFormat formater = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");
	
	private static final DateFormat formaterDate = new SimpleDateFormat(
			"yyyy-MM-dd");

	private static final String sql_insert = "insert into interrupt_history(switchId,interruptTime,operater,operate) values (?,?,?,?)";

	public boolean insert(InterruptHistory entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getSwitchId(),
						entity.getInterruptTime(), entity.getOperater(),
						entity.getOperate());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		int affected = this.jdbcTemplate.update(creator, holder);
		boolean success = false;
		if (success = affected > 0) {
			entity.setId(holder.getKey().intValue());
		}
		return success;
	}

	private static final String sql_getHistories = "select * from ("
			+ "select " + "h.id,h.switchId,interruptTime,"
			+ "u.realName as operatorName," + "cw.name as switchName,"
			+ "case  h.operate " + " when 10 then '断开' " + " when 11 then '闭合' "+" when 12 then '闲置' "+" when 13 then '备用' "
			+ " end as operate " + " from interrupt_history as h "
			+ " left join user as u " + " on h.operater=u.id "
			+ " left join cable_switch as cw " + " on h.switchId=cw.id "
			+ "  order by interruptTime desc) as V ";
	

	public List<InterruptHistoryVo> getHistories(Date start, Date end,
			int index, int size) {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistories);
		if (start != null && end != null) {
			sql.append(" where interruptTime>=").append(formater.format(start))
					.append(" and ").append("interruptTime<=")
					.append(formater.format(end));
		}
		sql.append(" limit ").append((index - 1) * size).append(",")
				.append(size);
		System.out.println(sql.toString());
		return this.jdbcTemplate.query(sql.toString(), rowMapper);
	}
	
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
	
	public List<InterruptHistoryVo> getToDayHistories() {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistories);
		
		Calendar cal=Calendar.getInstance();
       // cal.add(Calendar.DATE,0);
        Date today=cal.getTime();
        System.out.println(formaterDate.format(today)+"");
			sql.append(" where interruptTime>=").append("'").append(formaterDate.format(today)+" 08:00:00").append("'")
					.append(" and ").append("interruptTime<=").append("'")
					.append(formaterDate.format(new Date())+" 18:00:00").append("'");
			System.out.println(sql.toString());
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
			+ "case  h.operate " + " when 1 then '闭合' " + " when 0 then '断开' "
			+ " end as operate " + " from interrupt_history as h "
			+ " left join user as u " + " on h.operater=u.id "
			+ " left join cable_switch as cw " + " on h.switchId=cw.id "
			+ " order by interruptTime desc) as V ";

	public int getHistoryTotal(Date start, Date end,String switchId,String operate, String operatorName) {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistoryTotal);
		if(start != null){
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where interruptTime>=").append("'").append(formaterDate.format(start)).append("'");
			}
			else {
				sql.append(" and interruptTime>=").append("'").append(formaterDate.format(start)).append("'");
			}
			
		}
		
		if(end!=null){
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where ").append("interruptTime<=").append("'")
				.append(formaterDate.format(end)).append("'");
			}
			else {
				sql.append(" and ").append("interruptTime<=").append("'")
				.append(formaterDate.format(end)).append("'");
			}
			
		}
		
		
		if(null!=switchId&&!"".equals(switchId))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where switchId like").append("'%"+switchId+"%'");
			}
			else {
				sql.append(" AND switchId like").append("'%"+switchId+"%'");
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
	
	public List<InterruptHistoryVo> searchHistories(String switchId,String operate, String operatorName, int index, int size, Date begindate, Date enddate) {
		
		
		//System.out.println("日期不为空");
		
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistories);
		
		if(begindate != null){
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where interruptTime>=").append("'").append(formaterDate.format(begindate)).append("'");
			}
			else {
				sql.append(" and interruptTime>=").append("'").append(formaterDate.format(begindate)).append("'");
			}
			
		}
		
		if(enddate!=null){
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where ").append("interruptTime<=").append("'")
				.append(formaterDate.format(enddate)).append("'");
			}
			else {
				sql.append(" and ").append("interruptTime<=").append("'")
				.append(formaterDate.format(enddate)).append("'");
			}
			
		}
		
		/*if (begindate != null && enddate != null) {
			System.out.println("日期不为空");
			sql.append(" where interruptTime>=").append("'").append(formaterDate.format(begindate)).append("'")
					.append(" and ").append("interruptTime<=").append("'")
					.append(formaterDate.format(enddate)).append("'");
		}*/
		if(null!=switchId&&!"".equals(switchId))
		{
			if(countStr(sql.toString(),"where")==0)
			{
				sql.append(" where switchId like").append("'%"+switchId+"%'");
			}
			else {
				sql.append(" AND switchId like").append("'%"+switchId+"%'");
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
		if(index!=-1&&size!=-1){
			sql.append(" limit ").append((index - 1) * size).append(",").append(size);
		}
		System.out.println("test::"+sql.toString());
		return this.jdbcTemplate.query(sql.toString(), rowMapper); 
	}
	
	
	
	
	public List<InterruptHistoryVo> searchHistoriesByOperator(String operatorName,Date begindate, Date enddate) {
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getHistories);
		if(null!=operatorName&&!"".equals(operatorName))
		{
			sql.append(" where operatorName =").append("'"+operatorName+"'");
		}
		
		if (begindate != null && enddate != null) {
			sql.append(" and interruptTime>=").append("\"").append(formater.format(begindate)).append("\"")
					.append(" and ").append("interruptTime<=").append("\"")
					.append(formater.format(enddate)).append("\"");
		}

		return this.jdbcTemplate.query(sql.toString(), rowMapper); 
	}
	
	/** 
     * 判断str1中包含str2的个数 
      * @param str1 
     * @param str2 
     * @return counter 
     */  
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
    } 
}
