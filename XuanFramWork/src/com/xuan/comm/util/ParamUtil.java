package com.xuan.comm.util;

import java.text.DateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletRequest;

import org.apache.log4j.Logger;

/**
 * 通过Requet对象获得参数的工具类
 * 
 * @author DarkXie
 * 
 */
public class ParamUtil {
	static Logger log = Logger.getLogger(ParamUtil.class);

	public static boolean get(ServletRequest req, String param,
			boolean defaultValue) {
		return GetterUtil.get(req.getParameter(param), defaultValue);
	}

	public static Date get(ServletRequest req, String param, DateFormat df,
			Date defaultValue) {
		return GetterUtil.get(req.getParameter(param), df, defaultValue);
	}

	public static double get(ServletRequest req, String param,
			double defaultValue) {
		return GetterUtil.get(req.getParameter(param), defaultValue);
	}

	public static float get(ServletRequest req, String param, float defaultValue) {
		return GetterUtil.get(req.getParameter(param), defaultValue);
	}

	public static int get(ServletRequest req, String param, int defaultValue) {
		return GetterUtil.get(req.getParameter(param), defaultValue);
	}

	public static long get(ServletRequest req, String param, long defaultValue) {
		return GetterUtil.get(req.getParameter(param), defaultValue);
	}

	public static short get(ServletRequest req, String param, short defaultValue) {
		return GetterUtil.get(req.getParameter(param), defaultValue);
	}

	public static String get(ServletRequest req, String param,
			String defaultValue) {
		String returnValue = GetterUtil.get(req.getParameter(param),
				defaultValue);
		if (returnValue != null) {
			return returnValue.trim();
		}
		return defaultValue;
	}

	// 处理Boolean
	public static boolean getBoolean(ServletRequest req, String param) {
		return GetterUtil.getBoolean(req.getParameter(param));
	}

	public static boolean getBoolean(ServletRequest req, String param,
			boolean defaultValue) {
		return get(req, param, defaultValue);
	}

	public static boolean[] getBooleanValues(ServletRequest req, String param) {
		return getBooleanValues(req, param, GetterUtil.DEFAULT_BOOLEAN_VALUES);
	}

	public static boolean[] getBooleanValues(ServletRequest req, String param,
			boolean[] defaultValue) {
		return GetterUtil.getBooleanValues(req.getParameterValues(param),
				defaultValue);
	}

	// 处理Date
	public static Date getDate(ServletRequest req, String param, DateFormat df) {
		return get(req, param, df, GetterUtil.DEFAULT_DATE);
	}

	public static Date getDate(ServletRequest req, String param, DateFormat df,
			Date defaultValue) {
		return get(req, param, df, defaultValue);
	}

	public static Date[] getDateValues(ServletRequest req, String param,
			DateFormat df) {
		return GetterUtil.getDateValues(req.getParameterValues(param), df,
				GetterUtil.DEFAULT_DATE_VALUES);
	}

	public static Date[] getDateValues(ServletRequest req, String param,
			DateFormat df, Date[] defaultValues) {
		return GetterUtil.getDateValues(req.getParameterValues(param), df,
				defaultValues);
	}

	// 处理Double
	public static Double getDouble(ServletRequest req, String param) {
		return getDouble(req, param, null);
	}

	public static Double getDouble(ServletRequest req, String param,
			Double defaultValue) {
		Double d = null;
		String str = req.getParameter(param);
		if (str != null && str.length() > 0) {
			d = new Double(str);
		} else {
			d = defaultValue;
		}
		return d;
	}

	public static Double[] getDoubleValues(ServletRequest req, String param) {
		return getDoubleValues(req, param, null);
	}

	public static Double[] getDoubleValues(ServletRequest req, String param,
			Double[] defaultValue) {
		String[] src = req.getParameterValues(param);
		if (src == null)
			return defaultValue;
		Double[] dest = new Double[src.length];
		if (src != null && src.length > 0) {
			for (int i = 0; i < src.length; i++) {
				Double dou = null;
				if (src[i] != null)
					dou = new Double(src[i]);
				dest[i] = dou;
			}
			return dest;
		} else {
			return defaultValue;
		}
	}

	// 处理Float
	public static Float getFloat(ServletRequest req, String param) {
		return getFloat(req, param, null);
	}

	public static Float getFloat(ServletRequest req, String param,
			Float defaultValue) {
		Float flo = null;
		String str = req.getParameter(param);
		if (str != null && str.length() > 0) {
			flo = new Float(str);
			return flo;
		} else {
			return defaultValue;
		}
	}

	public static Float[] getFloatValues(ServletRequest req, String param) {
		return getFloatValues(req, param, null);
	}

	public static Float[] getFloatValues(ServletRequest req, String param,
			Float[] defaultValue) {
		String[] src = req.getParameterValues(param);
		if (src == null)
			return defaultValue;
		Float[] dest = new Float[src.length];
		if (src != null && src.length > 0) {
			for (int i = 0; i < src.length; i++) {
				Float flo = null;
				if (src[i] != null)
					flo = new Float(src[i]);
				dest[i] = flo;
			}
			return dest;
		} else {
			return defaultValue;
		}
	}

	// 处理Integer
	public static Integer getInteger(ServletRequest req, String param) {
		return getInteger(req, param, null);
	}

	public static Integer getInteger(ServletRequest req, String param,
			Integer defaultValue) {
		Integer inte = null;
		String str = req.getParameter(param);
		if (str != null && str.length() > 0) {
			inte = new Integer(str);
			return inte;
		} else {
			return defaultValue;
		}
	}

	public static Integer[] getIntegerValues(ServletRequest req, String param) {
		return getIntegerValues(req, param, null);
	}

	public static Integer[] getIntegerValues(ServletRequest req, String param,
			Integer[] defaultValue) {
		String[] src = req.getParameterValues(param);
		if (src == null)
			return defaultValue;
		Integer[] dest = new Integer[src.length];
		if (src != null && src.length > 0) {
			for (int i = 0; i < src.length; i++) {
				Integer inte = null;
				if (src[i] != null && src[i].length() > 0)
					inte = new Integer(src[i]);
				dest[i] = inte;
			}
			return dest;
		} else {
			return defaultValue;
		}
	}

	// 处理Long
	public static Long getLong(ServletRequest req, String param) {
		return getLong(req, param);
	}

	public static Long getLong(ServletRequest req, String param,
			Long defaultValue) {
		Long lo = null;
		String str = req.getParameter(param);
		if (str != null && str.length() > 0) {
			lo = new Long(str);
			return lo;
		} else {
			return defaultValue;
		}
	}

	public static Long[] getLongValues(ServletRequest req, String param) {
		return getLongValues(req, param, null);
	}

	public static Long[] getLongValues(ServletRequest req, String param,
			Long[] defaultValue) {
		String[] src = req.getParameterValues(param);
		if (src == null)
			return defaultValue;
		Long[] dest = new Long[src.length];
		if (src != null && src.length > 0) {
			for (int i = 0; i < src.length; i++) {
				Long lon = null;
				if (src[i] != null)
					lon = new Long(src[i]);
				dest[i] = lon;
			}
			return dest;
		} else {
			return defaultValue;
		}
	}

	// 处理Short
	public static Short getShort(ServletRequest req, String param) {
		return getShort(req, param, null);
	}

	public static Short getShort(ServletRequest req, String param,
			Short defaultValue) {
		Short sho = null;
		String str = req.getParameter(param);
		if (str != null && str.length() > 0) {
			sho = new Short(str);
			return sho;
		} else {
			return defaultValue;
		}
	}

	public static Short[] getShortValues(ServletRequest req, String param) {
		return getShortValues(req, param, null);
	}

	public static Short[] getShortValues(ServletRequest req, String param,
			Short[] defaultValue) {
		String[] src = req.getParameterValues(param);
		if (src == null)
			return defaultValue;
		Short[] dest = new Short[src.length];
		if (src != null && src.length > 0) {
			for (int i = 0; i < src.length; i++) {
				Short sho = null;
				if (src[i] == null)
					sho = new Short(src[i]);
				dest[i] = sho;
			}
			return dest;
		} else {
			return defaultValue;
		}
	}

	// 处理String
	public static String getString(ServletRequest req, String param) {
		return getString(req, param, null);
	}

	public static String getString(ServletRequest req, String param,
			String defaultValue) {
		String str = req.getParameter(param);
		if (str != null && str.length() > 0) {
			return str.trim();
		} else {
			return defaultValue;
		}
	}

	public static String[] getStringValues(ServletRequest req, String param) {
		return req.getParameterValues(param);
	}

	/**
	 * 输出当前Request里面全部参数与值<br>
	 * 仅供调试使用
	 * 
	 * @param req
	 */
	public static void print(ServletRequest req) {
		Enumeration<?> e = req.getParameterNames();
		while (e.hasMoreElements()) {
			String param = (String) e.nextElement();
			String[] values = req.getParameterValues(param);
			for (int i = 0; i < values.length; i++) {
				log.info(param + "[" + i + "] = " + values[i]);
			}
		}
	}
}
