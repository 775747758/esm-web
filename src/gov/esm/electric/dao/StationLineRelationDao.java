package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.StationLineRelation;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author XueLiang
 * @date 2014年12月1日
 */
@Component
public class StationLineRelationDao {

	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final String sql_insert = "insert into station_line_relation(stationId,lineId)values(?,?)";

	@Transactional(isolation = Isolation.SERIALIZABLE)
	public boolean insert(int stationId, int[] lineIds) {
		StationLineRelation entity = new StationLineRelation();
		int counter = 0;
		for (int i = 0; i < lineIds.length; i++) {
			entity.setStationId(stationId);
			entity.setLineId(lineIds[i]);
			this.insert(entity);
			if (entity.getId() > 0) {
				counter++;
			}
		}
		return counter == lineIds.length;
	}

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(StationLineRelation entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getStationId(),
						entity.getLineId());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		entity.setId(holder.getKey().intValue());
	}

	private static final String sql_delete = "delete from station_line_relation where stationId=?";

	@Transactional(propagation = Propagation.SUPPORTS)
	public int delete(int switchId) {
		return this.jdbcTemplate.update(sql_delete, switchId);
	}
}
