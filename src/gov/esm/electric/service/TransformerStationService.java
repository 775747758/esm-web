package gov.esm.electric.service;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.TransformerStation;

import javax.annotation.Resource;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Service;

/**
 * 
 * @author XueLiang
 * @date 2014年11月29日
 */
@Service
public class TransformerStationService {

	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final RowMapper<TransformerStation> rowMapper = new BeanPropertyRowMapper<TransformerStation>(
			TransformerStation.class);

	private static final String sql_insert = "insert into transformer_station(code,name,parentId,addressId,statusId) values(?,?,?,?,?)";

	public void insert(TransformerStation entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getCode(),
						entity.getName(), entity.getParentId(),
						entity.getAddressId(), entity.getStatusId());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		entity.setId(holder.getKey().intValue());
	}

	private static final String sql_update = "update transformer_station set code=?,name=?,parentId=?,addressId=?,statusId=? where id=?";

	public int update(TransformerStation entity) {
		return this.jdbcTemplate.update(sql_update, entity.getCode(),
				entity.getName(), entity.getParentId(), entity.getAddressId(),
				entity.getStatusId(), entity.getId());
	}

	private static final String sql_getTransformerStation = "select id,code,name,parentId,addressId,statusId from transformer_station where id=?";

	public TransformerStation getTransformerStationById(int id) {
		return this.jdbcTemplate.queryForObject(sql_getTransformerStation,
				rowMapper, id);
	}
}
