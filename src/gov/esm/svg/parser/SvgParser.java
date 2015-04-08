package gov.esm.svg.parser;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class SvgParser {
	private static final ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(new String[] {
			"classpath*:dispatcher-servlet.xml", "classpath*:spring-jdbc.xml" });
	private static Logger logger = Logger.getLogger(SvgParser.class);
	private static JdbcTemplate jdbcTemplate = (JdbcTemplate) context.getBean("jdbcTemplate");
	private static final Pattern stationSwitchPattern = Pattern.compile("^[A-Za-z]+[0-9]+$");

	public static void main(String[] args) throws Exception, IOException {
		// begin("/home/xue/workspace/esm-web/trunk/WebContent/images/ele.svg");
		// String content =
		// getFileContent("/home/xue/workspace/esm-web/trunk/WebContent/WEB-INF/pages/circuit/diagram.jsp");

		// begin("/home/xue/下载/2015-1-20/ele.svg");
		// begin("/home/xue/diagrams/2015-01-24/ele.svg");
		begin();
	}

	private static void begin() throws Exception {
		
		String svgFilePath = "C:\\Users\\DengWenJie\\Desktop\\电力项目\\4-7-电路最新版\\ele.svg";
		//String switchRelations = "/home/xue/workspace/esm-web/diagrams/2015-02-11/开关与开关的关系.txt";
		//String stationAndSwitchRelation = "/home/xue/workspace/esm-web/diagrams/2015-02-11/变电站和开关的关系.txt";
		
		String fileContent = getFileContent(svgFilePath);
		Document doc = org.jsoup.Jsoup.parse(fileContent);

		//parseLine(doc);// 线路入库
		parseSwitch(doc);// 开关入库

		// 建立开关和开关之间的关系
		//createSwitchStream(switchRelations);

		//createStationSwitchRelation(stationAndSwitchRelation);//
		// 建立开关和变电站之间的关系

		//toJspFile(doc);// 得到jsp文件

		//updateBridgeSwitch(doc);// 确定握手开关
	}

	/**
	 * 确定握手开关
	 * 
	 * @param doc
	 */
	static void updateBridgeSwitch(Document doc) {
		String sql = "update cable_switch set type=3 where id=?";
		Elements es = doc.select("image");
		for (Element e : es) {
			String href = e.attr("xlink:href");
			if (href.contains("open.gif")) {
				String[] x = e.attr("id").split("-");
				if (x.length > 1) {
					System.out.println(x[1]);
					jdbcTemplate.update(sql, x[1]);
				}
			}
		}
	}

	static void toJspFile(Document doc) throws Exception {

		Elements lines = doc.select("line[id^=line-");
		for (Element line : lines) {
			String[] arr = line.attr("id").split("-");
			if (arr.length > 1) {
				line.attr("id", arr[0] + "-" + arr[arr.length - 1]);
				System.out.println(arr[0] + "-" + arr[arr.length - 1]);
			}
		}
		Elements switchs = doc.select("image");
		
		for (Element s : switchs) {
			String[] arr = s.attr("id").split("-");
			if (arr.length > 1) {
				s.attr("id", arr[0] + "-" + arr[1]);
				System.out.println(arr[0] + "-" + arr[1]);
			}

			String href = s.attr("xlink:href");
			href = "/" + href;

			String title = s.attr("title");
			if (StringUtils.isNotBlank(title)) {
				String[] titles = title.split("-");
				if (titles.length > 0) {
					title = arr[0].trim();
				}
				s.attr("title", title);
			}
			s.attr("xlink:href", href);
		}
		String content = doc.toString();
		try (FileOutputStream fos = new FileOutputStream(new File("/home/xue/workspace/esm-web/diagrams/2015-02-11/svg.jsp"))) {
			fos.write(content.getBytes("UTF-8"));
		}

	}

	static void parseLine(Document doc) {
		Elements lines = doc.select("line");
		for (Element line : lines) {
			System.out.println(line.attr("id"));
			insertLine(line.attr("id"), line.attr("title"));
		}
	}

	static void parseSwitch(Document doc) {

		String sql_insertSwitch = "insert into cable_switch(id,code,name,properties,status,type)values(?,?,?,?,?,2)";
		String sql_existsSwitch = "select count(1) from cable_switch where id=?";

		String sql_insertSwitchLines = "insert into line_switch_relation(switchId,lineId) values(?,?)";
		String sql_existsSwitchLInes = "select count(1) from line_switch_relation where switchId=? and lineId=?";
		Elements switchs = doc.select("img[id^=switch]");
		System.out.println(switchs.size());
		for (Element s : switchs) {
			System.out.println(s.attr("id"));
			String[] arr = s.attr("id").split("-");
			String switchId = null;
			String switchName = s.attr("title");

			if (arr.length > 1) {
				switchId = arr[1];
			}

			Integer count = jdbcTemplate.queryForObject(sql_existsSwitch, new Object[] { switchId }, Integer.class);
			if (count < 1) {
				String href = s.attr("xlink:href");
				int status = href.contains("open") ? 10 : 11;

				jdbcTemplate.update(sql_insertSwitch, switchId, switchId, switchName, "", status);
			}

			for (int i = 2; i < arr.length; i++) {
				count = jdbcTemplate.queryForObject(sql_existsSwitchLInes, new Object[] { switchId, arr[i] }, Integer.class);
				if (count < 1) {
					jdbcTemplate.update(sql_insertSwitchLines, switchId, arr[i]);
				}
			}
		}
	}

	static void createSwitchStream(String filePath) throws Exception {
		File file = new File(filePath);
		try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
			String line = null;
			String sql_upstream = "insert into switch_upstream(switchId,upstream)values(?,?)";
			String sql_downstream = "insert into switch_downstream(switchId,downstream)values(?,?)";
			StringBuilder bucket = new StringBuilder(512);
			Map<String, Integer> upMap = new HashMap<String, Integer>();
			Map<String, Integer> downMap = new HashMap<String, Integer>();
			while (null != (line = reader.readLine())) {
				System.out.println(line);
				if (StringUtils.isBlank(line)) {
					continue;
				}
				line = line.replace("，", ",");
				String[] arr = line.split(",");
				if (arr.length < 2) {
					continue;
				}
				for (int i = 0; i < arr.length; i++) {
					bucket.delete(0, bucket.length());
					String point = arr[i].trim();
					if (StringUtils.isBlank(point)) {
						continue;
					}
					// 得到当前开关的所有下游开关
					int j = i + 1;
					for (; j < arr.length - 1; j++) {
						bucket.append(arr[j].trim()).append(",");
					}
					if (j < arr.length) {
						bucket.append(arr[j]);
					}
					if (bucket.length() > 0) {
						String key = arr[i] + "," + bucket.toString();
						Integer count = downMap.get(key);
						if (count == null) {
							jdbcTemplate.update(sql_downstream, arr[i], bucket.toString());
							downMap.put(key, 1);
						} else {
							downMap.put(key, count + 1);
							logger.info("开关已存在下游开关:[" + arr[i] + "->" + bucket.toString() + "]");
						}
					}

					Matcher matcher = stationSwitchPattern.matcher(arr[0]);
					if (!matcher.find()) {
						continue;
					}
					// 得到当前开关的所有上游开关
					bucket.delete(0, bucket.length());
					j = i - 1;
					for (; j > 0; j--) {
						bucket.append(arr[j]).append(",");
					}
					if (j == 0) {
						bucket.append(arr[j]);
					}
					if (bucket.length() > 0) {
						String key = arr[i] + "," + bucket.toString();
						Integer count = upMap.get(key);
						if (count == null) {
							jdbcTemplate.update(sql_upstream, arr[i], bucket.toString());
							upMap.put(key, 1);
						} else {
							upMap.put(key, count + 1);
							logger.info("开关已存在上游开关:[" + arr[i] + "->" + bucket.toString() + "]");
						}
					}
				}

			}
		}
	}

	static void createStationSwitchRelation(String filePath) throws Exception {
		File file = new File(filePath);
		try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
			String line = null;
			String sql_insertTransformerStation = "insert into transformer_station(id,name,statusId)values(?,?,?)";
			String sql_insertStationSwitchRelation = "insert into station_switch_relation(stationId,switchId)values(?,?)";
			String sql_updateDaoZha = "update cable_switch set type=1 where id=?";

			String sql_existsStation = "select count(1) from transformer_station where id=?";
			String sql_existsStationSwitchRelation = "select count(1) from station_switch_relation where stationId=? and switchId=?";
			while (null != (line = reader.readLine())) {
				System.out.println(line);
				if (StringUtils.isBlank(line)) {
					continue;
				}
				line = line.replace("，", ",");
				String[] arr = line.split(",");
				if (arr.length < 2) {
					continue;
				}
				String stationId = arr[0];
				String name = arr[1];
				Integer count = jdbcTemplate.queryForObject(sql_existsStation, Integer.class, stationId);
				if (count < 1) {
					jdbcTemplate.update(sql_insertTransformerStation, stationId, name, 1);
				}
				for (int i = 2; i < arr.length; i++) {
					count = jdbcTemplate.queryForObject(sql_existsStationSwitchRelation, Integer.class, stationId, arr[i]);
					if (count < 1) {
						jdbcTemplate.update(sql_insertStationSwitchRelation, stationId, arr[i]);
					}
				}
				// 把开关设成刀闸
				if (arr.length > 2) {
					jdbcTemplate.update(sql_updateDaoZha, arr[2].trim());
				}
			}
		}
	}

	static void insertLine(String attributeId, String attributeTitle) {
		String[] ids = attributeId.split("-");
		String[] names = attributeTitle.split("-");

		for (int i = 2; i < ids.length; i++) {
			String id = ids[i];
			String name = null;
			if (ids.length == names.length) {
				name = names[i];
			} else if (names.length == 1) {
				name = names[0];
			}
			if (name == null) {
				name = "";
				System.out.println("没有填对啊," + "id:" + attributeId + ",title:" + attributeTitle);
			}
			if (StringUtils.isNotBlank(id)) {
				if (!exists(id)) {
					insert(id, name, i - 2 > 0 ? ids[i - 1] : "0");
				}
			}
		}
	}

	private static boolean exists(String id) {
		String sql = "select count(1) from cable_line where id=?";
		Integer count = jdbcTemplate.queryForObject(sql, Integer.class, id);
		return count > 0;
	}

	private static boolean insert(String id, String name, String parentId) {
		String sql = "insert into cable_line(id,code,name,parentId,status)values(?,?,?,?,4)";
		return 0 < jdbcTemplate.update(sql, id, id, name, parentId);
	}

	private static String getFileContent(String filePath) {
		File svg = new File(filePath);
		StringBuilder cup = new StringBuilder(2048);
		try (BufferedReader reader = new BufferedReader(new FileReader(svg))) {
			String line = null;
			while ((line = reader.readLine()) != null) {
				cup.append(line);
			}
		} catch (Exception e) {
			logger.error(e, e);
		}
		return cup.toString();
	}
}
