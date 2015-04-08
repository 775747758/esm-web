package gov.esm.assistor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

/**
 * spring-jdbc 辅助类.
 * 
 * @author XueLiang
 * @date 2014年11月26日
 */
public class SpringJdbcAssistor {
	public static PreparedStatementCreator getPreparedStatementCreator(
			final String sql, final Object... parameters) {
		return new PreparedStatementCreator() {
			public PreparedStatement createPreparedStatement(Connection con)
					throws SQLException {
				PreparedStatement ps = con.prepareStatement(sql,
						Statement.RETURN_GENERATED_KEYS);
				for (int i = 0; i < parameters.length; i++) {
					ps.setObject(i + 1, parameters[i]);
				}
				return ps;
			}
		};
	}

	public static KeyHolder getGeneratedKeyHolder() {
		return new GeneratedKeyHolder();
	}

	public static <T> RowMapper<T> getRowMapper(Class<T> clazz) {
		return new BeanPropertyRowMapper<T>(clazz);
	}
}
