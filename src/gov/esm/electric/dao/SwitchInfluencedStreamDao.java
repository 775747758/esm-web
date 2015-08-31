package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.SwitchDownStream;
import gov.esm.electric.domain.SwitchInfluencedStream;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;

@Component
public class SwitchInfluencedStreamDao {

	@Resource
	JdbcTemplate jdbcTemplate;

	private static RowMapper<SwitchInfluencedStream> rowMapper = new BeanPropertyRowMapper<SwitchInfluencedStream>(
			SwitchInfluencedStream.class);
	private static final String sql_getSwitchInfluencedStream = "select * from switch_influenced_stream where switchId=?";

	public List<SwitchInfluencedStream> getSwitchInfluencedStream(String switchId) {
		return this.jdbcTemplate.query(sql_getSwitchInfluencedStream, rowMapper,switchId);
	}

	private static final String sql_insert = "insert into switch_influenced_stream(switchId,stream) values(?,?)";
	
	public int insert(SwitchInfluencedStream newSwitchInfluencedStream) {
		PreparedStatementCreator creator = SpringJdbcAssistor.getPreparedStatementCreator(sql_insert, newSwitchInfluencedStream.getSwitchId(), newSwitchInfluencedStream.getStream());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		return holder.getKey().intValue();
	}

	
	private static final String sql_getALLInfluencedStream = "select id,switchId,stream from switch_influenced_stream";
	public List<SwitchInfluencedStream> getAll() {
		return this.jdbcTemplate.query(sql_getALLInfluencedStream, new BeanPropertyRowMapper<SwitchInfluencedStream>(SwitchInfluencedStream.class));
	}
	
	private static final String sql_getWithStreamSwitchId = "select id,switchId,stream from switch_influenced_stream where stream like %?%";
	public List<SwitchInfluencedStream> getWithStreamSwitchId(String switchId) {
		return this.jdbcTemplate.query(sql_getWithStreamSwitchId, rowMapper, switchId);
	}
	
	
	private static final String sql_update = "update switch_influenced_stream set switchId=?,stream=? where id=?";
	public int update(SwitchInfluencedStream switchInfluencedStream) {
		return this.jdbcTemplate.update(sql_update, switchInfluencedStream.getSwitchId(), switchInfluencedStream.getStream(), switchInfluencedStream.getId());
		
	}
	
	private static final String sql_deleteBySwitchId = "delete from switch_influenced_stream where switchId=?";

	public int deleteWithSwitchId(String switchId) {
		return this.jdbcTemplate.update(sql_deleteBySwitchId, switchId);
	}

	private static final String sql_deleteById = "delete from switch_influenced_stream where id=?";
	public int deleteWithId(String id) {
		return this.jdbcTemplate.update(sql_deleteById, id);
	}
}
