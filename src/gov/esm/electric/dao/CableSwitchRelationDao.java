package gov.esm.electric.dao;

import gov.esm.assistor.SpringJdbcAssistor;
import gov.esm.electric.domain.CableSwitchRelation;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public class CableSwitchRelationDao {
	@Resource
	private JdbcTemplate jdbcTemplate;

	private static final String sql_insert = "insert into cable_switch_relation(switchId,childSwitchId,seq)values(?,?,?)";

	@Transactional(propagation = Propagation.SUPPORTS)
	public void insert(CableSwitchRelation entity) {
		PreparedStatementCreator creator = SpringJdbcAssistor
				.getPreparedStatementCreator(sql_insert, entity.getSwitchId(),
						entity.getSwitchId(), entity.getSeq());
		KeyHolder holder = SpringJdbcAssistor.getGeneratedKeyHolder();
		this.jdbcTemplate.update(creator, holder);
		int id = holder.getKey().intValue();
		if (id > 0) {
			entity.setId(id);
		}

	}

}