package gov.esm.assistor;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 
 * @author XueLiang
 * @date 2014年11月27日
 */
public class StringAssistor {
	private static final String empty = "";

	public static <T> String join(Collection<T> c, String separator) {
		if (c == null || c.size() < 1) {
			return empty;
		}
		if (separator == null) {
			separator = empty;
		}
		int capacity = (c.size() << 3);
		capacity += (c.size() - 1) * separator.length();
		StringBuilder cup = new StringBuilder(capacity);
		Iterator<T> it = c.iterator();
		int i = 0;
		while (it.hasNext()) {
			T t = it.next();
			cup.append(t == null ? empty : t.toString());
			if (++i < c.size()) {
				cup.append(separator);
			}
		}
		return cup.toString();
	}

	/**
	 * 把一个数据的每个元素用指定的分隔符隔开，拼接成一个字符串
	 * 
	 * @param numbers
	 *            整型数组
	 * @param separator
	 *            分隔符
	 * @return
	 */
	public static String join(int[] numbers, String separator) {
		if (numbers == null || numbers.length < 1) {
			return empty;
		}
		if (separator == null) {
			separator = empty;
		}
		int capacity = (numbers.length << 3);
		capacity += (numbers.length - 1) * separator.length();
		StringBuilder cup = new StringBuilder(capacity);
		int i = 0;
		for (; i < numbers.length - 1; i++) {
			cup.append(numbers[i]).append(separator);
		}
		cup.append(numbers[i]);
		return cup.toString();
	}

	public static boolean isNumeric(CharSequence cs) {
		if (isBlank(cs)) {
			return false;
		}
		int sz = cs.length();
		for (int i = 0; i < sz; ++i) {
			if (!(Character.isDigit(cs.charAt(i)))) {
				return false;
			}
		}
		return true;
	}

	public static boolean isNotNumeric(CharSequence cs) {
		return !isNumeric(cs);
	}

	public static boolean isEmpty(CharSequence cs) {
		return ((cs == null) || (cs.length() == 0));
	}

	public static boolean isNotEmpty(CharSequence cs) {
		return !isEmpty(cs);
	}

	public static boolean isBlank(CharSequence cs) {
		int len;
		if ((cs == null) || ((len = cs.length()) == 0))
			return true;
		for (int i = 0; i < len; ++i) {
			if (!(Character.isWhitespace(cs.charAt(i)))) {
				return false;
			}
		}
		return true;
	}

	public static boolean isNotBlank(CharSequence cs) {
		return !isBlank(cs);
	}

	public static int toInteger(String input) {
		if (isNumeric(input)) {
			try {
				return Integer.parseInt(input);
			} catch (Exception e) {
			}
		}
		return BigDecimal.ZERO.intValue();
	}

	public static long toLong(String input) {
		if (isNumeric(input)) {
			try {
				return Long.parseLong(input);
			} catch (Exception e) {
			}
		}
		return BigDecimal.ZERO.longValue();
	}

	public static float toFloat(String input) {
		if (isNumeric(input)) {
			try {
				return Float.parseFloat(input);
			} catch (Exception e) {
			}
		}
		return BigDecimal.ZERO.floatValue();
	}

	public static double toDouble(String input) {
		if (isNumeric(input)) {
			try {
				return Double.parseDouble(input);
			} catch (Exception e) {
			}
		}
		return BigDecimal.ZERO.doubleValue();
	}

	public static List<Integer> toIntegerList(String input, String separator) {
		List<Integer> lst = new LinkedList<Integer>();
		if (input != null) {
			String[] items = input.split(separator);
			for (int i = 0; i < items.length; i++) {
				lst.add(toInteger(items[i]));
			}
		}
		return lst;
	}

	public static List<Long> toLongList(String input, String separator) {
		List<Long> lst = new LinkedList<Long>();
		if (input != null) {
			String[] items = input.split(separator);
			for (int i = 0; i < items.length; i++) {
				lst.add(toLong(items[i]));
			}
		}
		return lst;
	}

	public static List<Float> toFloatList(String input, String separator) {
		List<Float> lst = new LinkedList<Float>();
		if (input != null) {
			String[] items = input.split(separator);
			for (int i = 0; i < items.length; i++) {
				lst.add(toFloat(items[i]));
			}
		}
		return lst;
	}

	public static List<Double> toDoubleList(String input, String separator) {
		List<Double> lst = new LinkedList<Double>();
		if (input != null) {
			String[] items = input.split(separator);
			for (int i = 0; i < items.length; i++) {
				lst.add(toDouble(items[i]));
			}
		}
		return lst;
	}

	
	// 判断一个字符串是否都为数字
	public static boolean isDigit(String strNum) {
		Pattern pattern = Pattern.compile("[0-9]{1,}");
		Matcher matcher = pattern.matcher((CharSequence) strNum);
		return matcher.matches();
	}

	// 截取数字
	public static String getNumbers(String content) {
		Pattern pattern = Pattern.compile("\\d+");
		Matcher matcher = pattern.matcher(content);
		while (matcher.find()) {
			return matcher.group(0);
		}
		return "";
	}

	// 截取非数字
	public static String splitNotNumber(String content) {
		Pattern pattern = Pattern.compile("\\D+");
		Matcher matcher = pattern.matcher(content);
		while (matcher.find()) {
			return matcher.group(0);
		}
		return "";
	}

	// 判断一个字符串是否含有数字

	public static boolean hasDigit(String content) {

		boolean flag = false;

		Pattern p = Pattern.compile(".*\\d+.*");

		Matcher m = p.matcher(content);

		if (m.matches())

			flag = true;

		return flag;

	}
}
