package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.InterruptHistory;
import gov.esm.electric.domain.SwitchOperation;
import gov.esm.electric.domain.User;
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
public class SwitchOperationDao {
	
	private static int counter = 0;  
	@Resource
	private JdbcTemplate jdbcTemplate;
	private static final RowMapper<SwitchOperation> rowMapper = new BeanPropertyRowMapper<SwitchOperation>(
			SwitchOperation.class);

	private static final DateFormat formater = new SimpleDateFormat(
			"yyyy-MM-dd HH:mm:ss");
	
	private static final DateFormat formaterDate = new SimpleDateFormat(
			"yyyy-MM-dd");

	private static final String sql_insert = "insert into switch_operation(switchName,startTime,operate) values (?,?,?)";

	public boolean insert(SwitchOperation entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getSwitchName(),
						formater.format(entity.getStartTime()),entity.getOperate());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		int affected = this.jdbcTemplate.update(creator, holder);
		boolean success = false;
		if (success = affected > 0) {
			entity.setId(holder.getKey().intValue());
		}
		return success;
	}

	
	
	private static final String sql_getswitchOperationBySwitchId="select * from switch_operation where endTime is null  and switchName=? order by id desc";

	public  SwitchOperation   getswitchOperationBySwitchId(String switchName) {
		
		List<SwitchOperation> list= this.jdbcTemplate.query(sql_getswitchOperationBySwitchId,rowMapper,switchName);
		if(list==null||list.size()==0){
			System.out.println("没有搜索到");
			return null;
		}
		else{
			System.out.println("搜索到"+list.get(0).getSwitchName()+"::"+list.get(0).getEndTime());
			return list.get(0);
		}
	}
	
	
	private static final String sql_updateswitchOperation = "update switch_operation set endTime=?,operate=? where id=? order by id desc";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateCableLineStatus(int id,Date endTime,String operate) {
		return this.jdbcTemplate.update(sql_updateswitchOperation,formater.format(endTime), operate, id);
	}
	
	private static final String sql_switchOperation="select * from switch_operation ";

	public List<SwitchOperation> getSwitchOperation( int index, int size) {
		StringBuilder builder=new StringBuilder();
		builder.append(sql_switchOperation).append(" order by id desc").append(" limit ").append((index - 1) * size).append(",").append(size);
		System.out.println(builder.toString());
		return this.jdbcTemplate.query(builder.toString(), rowMapper);
	}
	
	public List<SwitchOperation> getTodaySwitchOperation() {
		Calendar cal=Calendar.getInstance();
	    Date today=cal.getTime();
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_switchOperation);
		sql.append(" where startTime>=").append("'").append(formaterDate.format(today)+" 00:00:00").append("'")
		.append(" and ").append("endTime<=").append("'")
		.append(formaterDate.format(new Date())+" 24:00:00").append("'");
		sql.append(" order by id desc");
		return this.jdbcTemplate.query(sql.toString(), rowMapper);
	}
	
	
	private static final String sql_getSwitchOperation = "select count(1) from switch_operation ";
	@Transactional(propagation = Propagation.SUPPORTS)
	public Integer getSwitchOperationTotal() {
		Calendar cal=Calendar.getInstance();
	    Date today=cal.getTime();
		StringBuilder sql = new StringBuilder(128);
		sql.append(sql_getSwitchOperation);
		/*sql.append(" where startTime>=").append("'").append(formaterDate.format(today)+" 00:00:00").append("'")
		.append(" and ").append("endTime<=").append("'")
		.append(formaterDate.format(new Date())+" 24:00:00").append("'");*/
		return this.jdbcTemplate
				.queryForObject(sql.toString(), Integer.class);

	}
	
	private static final String sql_update_switchOperation = "update switch_operation set dispatcher=? where id=? ";
	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateswitchOperation(SwitchOperation switchOperation) {
		return this.jdbcTemplate.update(sql_update_switchOperation, switchOperation.getDispatcher(),switchOperation.getId());
	}
}
