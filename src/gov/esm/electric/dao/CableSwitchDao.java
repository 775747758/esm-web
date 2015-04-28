package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.CableSwitch;
import gov.esm.electric.domain.SwitchDownStream;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年11月27日
 */
@Component
public class CableSwitchDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	@Resource
	private SwitchDownStreamDao switchDownStreamDao;

	private static final RowMapper<CableSwitch> rowMapper = new BeanPropertyRowMapper<CableSwitch>(CableSwitch.class);

	private static final String sql_insert = "insert into cable_switch(id, code,name,properties,status, type) values (?,?,?,?,?,?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(CableSwitch entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor.getPreparedStatementCreator(sql_insert, entity.getId(), entity.getCode(), entity.getName(), entity.getProperties(), entity.getStatus(), entity.getType());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
	}

	private static final String sql_update = "update cable_switch set code=?,name=?,properties=?,status=? where id=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int update(CableSwitch entity) {
		return this.jdbcTemplate.update(sql_update, entity.getCode(), entity.getName(), entity.getProperties(),
				entity.getStatus(), entity.getId());
	}

	private static final String sql_updateStatus = "update cable_switch set status=? where id=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int updateStatus(int status, String id) {
		return this.jdbcTemplate.update(sql_updateStatus, status, id);
	}

	private static final String sql_getCableSwitch = "select id,code,name,properties,status,type from cable_switch where id=?";

	/**
	 * 得到一个开关
	 * 
	 * @param id
	 * @return
	 */
	@Transactional(propagation = Propagation.SUPPORTS)
	public CableSwitch getCableSwitch(String id) {
		//System.out.println("开关"+id+"size"+id.length());
		List<CableSwitch> list=jdbcTemplate.query(sql_getCableSwitch, rowMapper, id.trim());
		if(list.size()==0){
			System.out.println("出错:"+id);
		}
		//return this.jdbcTemplate.queryForObject(sql_getCableSwitch, rowMapper, id);
		return list.get(0); 
	}

	private static final String sql_getAll = "select id,status,type from cable_switch";

	/**
	 * 得到所有开关
	 * 
	 * @return
	 */
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<Map<String, Object>> getAll() {
		return this.jdbcTemplate.queryForList(sql_getAll);
	}

	private static final String sql_getAllSwitch = "select * from cable_switch";

	/**
	 * 得到所有开关
	 * 
	 * @return
	 */
	@Transactional(propagation = Propagation.SUPPORTS)
	public List<CableSwitch> getAllSwitch() {
		return this.jdbcTemplate.query(sql_getAllSwitch, rowMapper);
	}
	private static  String sql_getSwitchByKeyword = "select id from cable_switch where id like";
	
	/**
	 * 得到所有以keyword开头的开关
	 * 
	 * @return
	 */
	public List<Map<String, Object>> getSwitchByKeyword(String keyword) {
		//return this.jdbcTemplate.query(sql_getAllSwitch, rowMapper);
		StringBuilder temp=new StringBuilder(sql_getSwitchByKeyword);
		temp.append(" ").append("'"+keyword+"%'");
		System.out.println(temp.toString());
		return jdbcTemplate.queryForList(temp.toString());
	}
	
	/**
	 * 得到所有name包含以keyword的开关
	 * 
	 * @return
	 */
	
	private static  String sql_getSwitchNameByKeyword = "select name from cable_switch where name like";
	
	public List<Map<String, Object>> getSwitchNameByKeyword(String keyword) {
		//return this.jdbcTemplate.query(sql_getAllSwitch, rowMapper);
		StringBuilder temp=new StringBuilder(sql_getSwitchNameByKeyword);
		temp.append(" ").append("'%").append(keyword).append("%'");
		System.out.println(temp.toString());
		return jdbcTemplate.queryForList(temp.toString());
	}

	private static final String sql_getOpendSwitchs = "select count(1) from cable_switch where id in(?) and status=10";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int getOpendSwitchs(String[] switchIds) {
		StringBuilder ids = new StringBuilder(switchIds.length * 4 + switchIds.length * 3 - 1);
		int i = 0;
		for (; i < switchIds.length - 1; i++) {
			ids.append("'").append(switchIds[i]).append("',");
		}
		if (switchIds.length > 0) {
			ids.append("'").append(switchIds[i]).append("'");
		}
		if (ids.length() > 0) {
			return this.jdbcTemplate.queryForObject(sql_getOpendSwitchs, new Object[] { ids.toString() }, Integer.class);
		} else {
			return BigDecimal.ZERO.intValue();
		}
	}

	private static final String sql_getDownstreamByStatus = "select * from cable_switch where id in(?) and status=? and type<>1";

	/**
	 * 得到一个开关所有指定状态的下游开关集合
	 * 
	 * @param switchId
	 * @param status
	 * @return
	 */
	public List<CableSwitch> getDownStreamByStatus(String switchId, int status) {
		List<SwitchDownStream> downstreams = switchDownStreamDao.getDownstream(switchId);
		StringBuilder ids = new StringBuilder(512);
		int i = 0;
		for (; i < downstreams.size() - 1; i++) {
			String[] items = downstreams.get(i).getDownstream().split(",");
			int j = 0;
			for (; j < items.length - 1; j++) {
				ids.append("'").append(items[j]).append("',");
			}
			if (items.length > 0) {
				ids.append("'").append(items[j]).append("'");
			}
		}
		return this.jdbcTemplate.query(sql_getDownstreamByStatus, new Object[] { ids.toString(), status }, rowMapper);
	}
}
