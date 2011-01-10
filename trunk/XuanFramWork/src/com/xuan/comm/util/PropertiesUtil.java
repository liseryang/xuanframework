package com.xuan.comm.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.apache.commons.lang.StringUtils;

public class PropertiesUtil {
	/**
	 * 将一个Properties属性拷贝到另外一个
	 * 
	 * @param from
	 * @param to
	 */
	public static void copyProperties(Properties from, Properties to) {
		Iterator<?> itr = from.entrySet().iterator();

		while (itr.hasNext()) {
			@SuppressWarnings("rawtypes")
			Map.Entry entry = (Map.Entry) itr.next();

			to.setProperty((String) entry.getKey(), (String) entry.getValue());
		}
	}

	/**
	 * 将多个Properties文件属性合并为一个
	 * 
	 * @param map
	 * @return
	 */
	public static Properties fromMap(Map<?, ?> map) {
		if (map instanceof Properties) {
			return (Properties) map;
		}

		Properties p = new Properties();

		Iterator<?> itr = map.entrySet().iterator();

		while (itr.hasNext()) {
			@SuppressWarnings("rawtypes")
			Map.Entry entry = (Map.Entry) itr.next();

			String key = (String) entry.getKey();
			String value = (String) entry.getValue();

			if (value != null) {
				p.setProperty(key, value);
			}
		}

		return p;
	}

	/**
	 * 从Properties取出属性，放入Map中
	 * 
	 * @param p
	 * @param map
	 */
	public static void fromProperties(Properties p, Map<Object, Object> map) {
		map.clear();

		Iterator<?> itr = p.entrySet().iterator();

		while (itr.hasNext()) {
			@SuppressWarnings("rawtypes")
			Map.Entry entry = (Map.Entry) itr.next();

			map.put(entry.getKey(), entry.getValue());
		}
	}

	/**
	 * 将字符串变为转换为Properties
	 * 
	 * @param s
	 * @return
	 * @throws IOException
	 */
	public static Properties load(String s) throws IOException {
		Properties p = new Properties();

		load(p, s);

		return p;
	}

	/**
	 * 将字符串变为转换为Properties
	 * 
	 * @param p
	 * @param s
	 * @throws IOException
	 */
	public static void load(Properties p, String s) throws IOException {
		if (Validator.isNotNull(s)) {
			s = UnicodeFormatter.toString(s);

			s = StringUtils.replace(s, "\\u003d", "=");
			s = StringUtils.replace(s, "\\u000a", "\n");
			s = StringUtils.replace(s, "\\u0021", "!");
			s = StringUtils.replace(s, "\\u0023", "#");
			s = StringUtils.replace(s, "\\u0020", " ");
			s = StringUtils.replace(s, "\\u005c", "\\");

			p.load(new ByteArrayInputStream(s.getBytes()));

			List<?> propertyNames = Collections.list(p.propertyNames());

			for (int i = 0; i < propertyNames.size(); i++) {
				String key = (String) propertyNames.get(i);
				String value = p.getProperty(key);
				if (value != null) {
					value = value.trim();
					p.setProperty(key, value);
				}
			}
		}
	}

	/**
	 * 将p2放入p1
	 * 
	 * @param p1
	 * @param p2
	 */
	public static void merge(Properties p1, Properties p2) {
		Enumeration<?> enu = p2.propertyNames();

		while (enu.hasMoreElements()) {
			String key = (String) enu.nextElement();
			String value = p2.getProperty(key);

			p1.setProperty(key, value);
		}
	}

	/**
	 * 从Map里面取出所有的属性形成Properties形式
	 * 
	 * @param map
	 * @return
	 */
	public static String list(Map<?, ?> map) {
		Properties props = fromMap(map);
		ByteArrayOutputStream bam = new ByteArrayOutputStream();
		PrintStream ps = new PrintStream(bam);

		props.list(ps);

		return bam.toString();
	}

	/**
	 * 将Map的内容压入PrintStream中
	 * 
	 * @param map
	 * @param out
	 */
	public static void list(Map<?, ?> map, PrintStream out) {
		Properties props = fromMap(map);

		props.list(out);
	}

	/**
	 * 将Map的内容压入PrintWriter中
	 * 
	 * @param map
	 * @param out
	 */
	public static void list(Map<?, ?> map, PrintWriter out) {
		Properties props = fromMap(map);

		props.list(out);
	}

	/**
	 * toString方法
	 * 
	 * @param p
	 * @return
	 */
	public static String toString(Properties p) {
		StringBuffer sm = new StringBuffer();

		Enumeration<?> enu = p.propertyNames();

		while (enu.hasMoreElements()) {
			String key = (String) enu.nextElement();

			sm.append(key);
			sm.append(StringPool.EQUAL);
			sm.append(p.getProperty(key));
			sm.append("\n");
		}

		return sm.toString();
	}

	/**
	 * 剔除前后空格
	 * 
	 * @param p
	 */
	public static void trimKeys(Properties p) {
		
		Enumeration<?> enu = p.propertyNames();
		while (enu.hasMoreElements()) {
			String key = (String) enu.nextElement();
			String value = p.getProperty(key);

			String trimmedKey = key.trim();

			if (!key.equals(trimmedKey)) {
				p.remove(key);
				p.setProperty(trimmedKey, value);
			}
		}
	}

	public static void main(String[] args) throws IOException {
		

		// "com/xuan/jdbc.properties"
		InputStream in_1 = ClassLoader
				.getSystemResourceAsStream("jdbc.properties");// PropertiesUtil.class.getResourceAsStream("/jdbc.properties");
		Properties p_1 = new Properties();
		p_1.load(in_1);

		InputStream in_2 = ClassLoader
				.getSystemResourceAsStream("log4j.properties");// PropertiesUtil.class.getResourceAsStream("/jdbc.properties");
		Properties p_2 = new Properties();
		p_1.load(in_2);

		PropertiesUtil.copyProperties(p_1, p_2);

//		System.out.println(PropertiesUtil.toString(p_1));
	}
}
