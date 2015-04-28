package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchStream;

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

@Component
public class StationSwitchStreamDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<SwitchStream> rowMapper = new BeanPropertyRowMapper<SwitchStream>(
			SwitchStream.class);

	private static final String sql_getDownstream = "select id,stationId,switchStream from station_switchstream_relation where stationId=?";

	/**
	 * 得到一个变电站所影响的所有开关（不包括握手开关）
	 * 
	 * @param switchId
	 * @return
	 */
	public List<SwitchStream> getStationStream(String switchId) {
		return this.jdbcTemplate.query(sql_getDownstream, new Object[] { switchId }, rowMapper);
	}
	
	private static final String sql_setStationStatus = "UPDATE cable_switch set status=? where id=?";
	/**
	 * 设置变电站状态
	 * 
	 * @param switchId
	 * @return
	 */
	public int setStationStatus(String switchId,int status) {
		return this.jdbcTemplate.update(sql_setStationStatus, status, switchId);
	}
	
	
}
