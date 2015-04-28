package gov.esm.svg.parser;

import gov.esm.assistor.StringAssistor;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
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

	private static final ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
			new String[] { "classpath*:dispatcher-servlet.xml",
					"classpath*:spring-jdbc.xml" });
	private static Logger logger = Logger.getLogger(SvgParser.class);
	private static JdbcTemplate jdbcTemplate = (JdbcTemplate) context
			.getBean("jdbcTemplate");
	private static final Pattern stationSwitchPattern = Pattern
			.compile("^[A-Za-z]+[0-9]+$");

	public static void main(String[] args) throws Exception, IOException {
		begin();
	}

	private static void begin() throws Exception {

		String svgFilePath = "C:\\Users\\Administrator\\Desktop\\电力项目\\2015-2-11电路最新版\\ele-4-20.svg";
		String switchRelations = "C:\\Users\\Administrator\\Desktop\\电力项目\\2015-2-11电路最新版\\开关与开关的关系.txt";
		String stationAndSwitchRelation = "C:\\Users\\Administrator\\Desktop\\电力项目\\2015-2-11电路最新版\\变电站开关关系（全图）.txt";

		String stationAndFirstSwitch = "C:\\Users\\Administrator\\Desktop\\电力项目\\2015-2-11电路最新版\\变电站与刀闸.txt";
		String RolePermission="C:\\Users\\Administrator\\Desktop\\电力项目\\2015-2-11电路最新版\\权限关系表.txt";
		String fileContent = getFileContent(svgFilePath);
		Document doc = org.jsoup.Jsoup.parse(fileContent);

		//parseLine(doc);// 线路入库
		// parseSwitch(doc);// 开关入库

		// 建立开关和开关之间的关系
		 //createSwitchStream(switchRelations);

		// createStationSwitchRelation(stationAndSwitchRelation);//
		// 建立开关和变电站之间的关系

		 toJspFile(doc);// 得到jsp文件

		// createStationSwitchStream(stationAndFirstSwitch);
		//createRolePermission(RolePermission);

	}

	private static void createStationSwitchStream(String filePath) {
		File file = new File(filePath);
		try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
			String line = null;
			String sql_insertStationStreamRelation = "insert into station_switchstream_relation(stationId,switchStream)values(?,?)";
			while (null != (line = reader.readLine())) {
				// System.out.println(line);
				if (StringUtils.isBlank(line)) {
					continue;
				}
				line = line.replace("，", ",");
				String[] arr = line.split(",");
				if (arr.length < 2) {
					continue;
				}
				String stationId = arr[0];
				String stream = line.substring(line.indexOf(",") + 1);

				String sql_exists = "select count(1) from station_switchstream_relation where stationId=?";
				Integer count = jdbcTemplate.queryForObject(sql_exists,
						new Object[] { stationId }, Integer.class);
				if (count < 2) {
					jdbcTemplate.update(sql_insertStationStreamRelation,
							stationId, stream);
				}

			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	private static void createRolePermission(String filePath) {
		File file = new File(filePath);
		try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
			String line = null;
			String sql_insertRolePermissionRelation = "insert into role_permission_relation(roleId,permissionId)values(?,?)";
			while (null != (line = reader.readLine())) {
				// System.out.println(line);
				if (StringUtils.isBlank(line)) {
					continue;
				}
				line = line.replace("，", ",");
				String[] arr = line.split(":");
				if (arr.length < 2) {
					continue;
				}
				String roleId = arr[0];
				String permissionIdString = line.substring(line.indexOf(":") + 1);
				
				String[] permissionIdAry = permissionIdString.split(",");

				for(int i=0;i<permissionIdAry.length;i++){
					jdbcTemplate.update(sql_insertRolePermissionRelation,
							roleId, permissionIdAry[i]);
				}

			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	static void toJspFile(Document doc) throws Exception {
		Elements texts = doc.select("text");
		for (Element text : texts) {
			System.out.println(text.attr("x"));
			float oldX=Float.parseFloat(text.attr("x"));
			float newX=oldX-10f;
			text.attr("x",newX+"");
		}
		

		Elements lines = doc.select("line[id^=line-");
		for (Element line : lines) {
			String[] arr = line.attr("id").split("-");
			if (arr.length > 1) {
				line.attr("id", arr[0] + "-" + arr[arr.length - 1]);
				System.out.println(arr[0] + "-" + arr[arr.length - 1]);
			}
		}
		Elements switchs = doc.select("img");
		System.out.println(switchs.size());
		for (Element s : switchs) {
			String[] arr = s.attr("id").split("-");
			if (arr.length > 1) {
				String arr1=arr[1].replace("=", ",");
				System.out.println(arr[0] + "-" + arr1);
				String idString=arr[0] + "-" + arr1;
				String titleString="开关"+ arr1;
				s.attr("id", idString);
				s.attr("title", titleString);
			}

			String href = s.attr("xlink:href");
			href = "/" + href;
			s.attr("xlink:href", href);

			
			/* * String title = s.attr("title"); if
			 * (StringUtils.isNotBlank(title)) { String[] titles =
			 * title.split("-"); if (titles.length > 0) { title = arr[0].trim();
			 * } s.attr("title", title); }
			 */

			
		}
		String content = doc.toString();
		try (FileOutputStream fos = new FileOutputStream(
				new File(
						"C:\\Users\\Administrator\\Desktop\\电力项目\\2015-2-11电路最新版\\svgParser.svg"))) {
			fos.write(content.getBytes("UTF-8"));
		}

	}

	static void parseLine(Document doc) {
		Elements lines = doc.select("line");
		// System.out.println(lines.size());
		int i = 0;
		for (Element line : lines) {
			// 检查没有title的开关
			if (null == line.attr("title") || line.attr("title").equals("")) {
				// System.out.println("第"+i+"条没有title线路："+":::"+line.toString());
				// System.out.println();
			} else {
				i++;
				// System.out.println("第"+i+"条线路："+line.attr("id")+":::"+line.toString());
				insertLine(line.attr("id"), line.attr("title"));
			}
		}
		// System.out.println("没有id线路的条数："+i);
	}

	static void parseSwitch(Document doc) {

		String sql_insertSwitch = "insert into cable_switch(id,code,name,properties,status,type)values(?,?,?,?,?,2)";
		String sql_existsSwitch = "select count(1) from cable_switch where id=?";
		String sql_insertSwitchLines = "insert into line_switch_relation(switchId,lineId) values(?,?)";
		String sql_existsSwitchLInes = "select count(1) from line_switch_relation where switchId=? and lineId=?";

		// 识别变电站(默认状态为闭合11)
		Elements allImg = doc.select("img");
		for (Element s : allImg) {
			if (s.attr("id").startsWith("ST_")) {
				String sql_insertSwitchStation = "insert into cable_switch(id,code,name,properties,status,type)values(?,?,?,?,?,4)";
				jdbcTemplate.update(sql_insertSwitchStation, s.attr("id"),
						s.attr("id"), s.attr("title"), "", 11);
			}
		}

		Elements switchs = doc.select("img[id^=switch]");
		System.out.println(switchs.size());
		for (Element s : switchs) {
			// System.out.println(s.attr("id"));
			String[] arr = s.attr("id").split("-");
			String switchId = null;
			String switchName = s.attr("title");

			if (arr.length > 1) {
				switchId = arr[1];
				// 检查switch的id有无重复
				if (list.contains(switchId)) {
					System.out.println("重复的id：" + switchId);
				} else {
					list.add(switchId);
					// System.out.println(list.size());
				}
				// 确定握手开关
				if (switchId.startsWith("WS")) {
					sql_insertSwitch = "insert into cable_switch(id,code,name,properties,status,type)values(?,?,?,?,?,3)";
				}
				// 确定第一个开关
				else if (switchId.charAt(0) >= 'A' && switchId.charAt(0) <= 'Z'
						&& !switchId.contains("=") && !switchId.equals("C1")
						&& !switchId.equals("C2") && !switchId.equals("C3")) {
					sql_insertSwitch = "insert into cable_switch(id,code,name,properties,status,type)values(?,?,?,?,?,1)";
				} else {
					sql_insertSwitch = "insert into cable_switch(id,code,name,properties,status,type)values(?,?,?,?,?,2)";
				}

			}

			Integer count = jdbcTemplate.queryForObject(sql_existsSwitch,
					new Object[] { switchId }, Integer.class);

			if (count < 1) {
				String href = s.attr("xlink:href");
				int status = href.contains("OPEN") ? 10 : 11;
				jdbcTemplate.update(sql_insertSwitch, switchId, switchId,
						switchName, "", status);
			}

			for (int i = 2; i < arr.length; i++) {
				count = jdbcTemplate.queryForObject(sql_existsSwitchLInes,
						new Object[] { switchId, arr[i] }, Integer.class);
				if (count < 1) {
					jdbcTemplate
							.update(sql_insertSwitchLines, switchId, arr[i]);
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

							jdbcTemplate.update(sql_downstream, arr[i],
									bucket.toString());
							downMap.put(key, 1);
						} else {
							downMap.put(key, count + 1);
							// logger.info("开关已存在下游开关:[" + arr[i] + "->" +
							// bucket.toString() + "]");
						}
					}

					Matcher matcher = stationSwitchPattern.matcher(arr[0]);
					if (!matcher.find()) {
						continue;
					}

					if (arr[0].startsWith("WS")) {
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
							/*if (arr[i].equals("2156")) {
								System.out.println("2156:" + bucket.toString()
										+ "::::" + line);
							}*/
							jdbcTemplate.update(sql_upstream, arr[i],
									bucket.toString());
							upMap.put(key, 1);
						} else {
							upMap.put(key, count + 1);
							// logger.info("开关已存在上游开关:[" + arr[i] + "->" +
							// bucket.toString() + "]");
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
			// String sql_updateDaoZha =
			// "update cable_switch set type=1 where id=?";

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
				Integer count = jdbcTemplate.queryForObject(sql_existsStation,
						Integer.class, stationId);
				if (count < 1) {
					// jdbcTemplate.update(sql_insertTransformerStation,stationId,
					// name, 1);
				}
				for (int i = 2; i < arr.length; i++) {
					count = jdbcTemplate.queryForObject(
							sql_existsStationSwitchRelation, Integer.class,
							stationId, arr[i]);
					if (count < 1) {
						jdbcTemplate.update(sql_insertStationSwitchRelation,
								stationId, arr[i]);
					}
				}
			}
		}
	}

	public static int ii = 0;
	private static Set set = new HashSet();
	private static List<String> list = new ArrayList<String>();
	private static List<String> listAttr = new ArrayList<String>();

	static void insertLine(String attributeId, String attributeTitle) {
		String[] ids = attributeId.split("-");
		String[] names = attributeTitle.split("-");

		String temp = ids[ids.length - 1];

		// 检查
		if (list.contains("" + temp)) {
			System.out.println(attributeId + ":::"
					+ listAttr.get(list.indexOf(temp)));
		} else {
			list.add("" + temp);
			listAttr.add(attributeId);
			System.out.println(list.size());
		}

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
				System.out.println("没有填对啊," + "id:" + attributeId + ",title:"
						+ attributeTitle);
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
