package com.xuan.comm.util;

import java.util.Properties;

import javax.servlet.ServletRequest;

/**
 * Request配合Properties处理
 * 
 * @author DarkXie
 * 
 */
public class PropertiesParamUtil {
	public static boolean getBoolean(Properties props, ServletRequest req,
			String param) {
		return getBoolean(props, req, param, GetterUtil.DEFAULT_BOOLEAN);
	}

	public static boolean getBoolean(Properties props, ServletRequest req,
			String param, boolean defaultValue) {

		String propsValue = props.getProperty(param, null);

		boolean getterUtilValue = GetterUtil.getBoolean(propsValue,
				defaultValue);

		return ParamUtil.get(req, param, getterUtilValue);
	}

	public static double getDouble(Properties props, ServletRequest req,
			String param) {

		return getDouble(props, req, param, GetterUtil.DEFAULT_DOUBLE);
	}

	public static double getDouble(Properties props, ServletRequest req,
			String param, double defaultValue) {

		String propsValue = props.getProperty(param, null);

		double getterUtilValue = GetterUtil.getDouble(propsValue, defaultValue);

		return ParamUtil.get(req, param, getterUtilValue);
	}

	public static int getInteger(Properties props, ServletRequest req,
			String param) {

		return getInteger(props, req, param, GetterUtil.DEFAULT_INTEGER);
	}

	public static int getInteger(Properties props, ServletRequest req,
			String param, int defaultValue) {

		String propsValue = props.getProperty(param, null);

		int getterUtilValue = GetterUtil.getInteger(propsValue, defaultValue);

		return ParamUtil.get(req, param, getterUtilValue);
	}

	public static long getLong(Properties props, ServletRequest req,
			String param) {

		return getLong(props, req, param, GetterUtil.DEFAULT_LONG);
	}

	public static long getLong(Properties props, ServletRequest req,
			String param, long defaultValue) {

		String propsValue = props.getProperty(param, null);

		long getterUtilValue = GetterUtil.getLong(propsValue, defaultValue);

		return ParamUtil.get(req, param, getterUtilValue);
	}

	public static String getString(Properties props, ServletRequest req,
			String param) {

		return getString(props, req, param, GetterUtil.DEFAULT_STRING);
	}

	public static String getString(Properties props, ServletRequest req,
			String param, String defaultValue) {

		String propsValue = props.getProperty(param, null);

		String getterUtilValue = GetterUtil.getString(propsValue, defaultValue);

		return ParamUtil.get(req, param, getterUtilValue);
	}
}
