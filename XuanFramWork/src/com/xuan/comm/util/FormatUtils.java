package com.xuan.comm.util;

import java.text.DecimalFormat;
import java.text.Format;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class FormatUtils {
	/**
	 * 获得yyyyMMddHHmmss日期
	 * 
	 * @return
	 */
	public static String getCurrTime() {
		return formatDateByFormatStr(new Date(), "yyyyMMddHHmmss");
	}

	/**
	 * 获得yyyy-MM-dd日期
	 * 
	 * @param date
	 * @return
	 */
	public static String formatDate(Date date) {
		return formatDateByFormatStr(date, "yyyy-MM-dd");
	}

	/**
	 * 获得yyyy-MM-dd HH:mm:ss日期
	 * 
	 * @param date
	 * @return
	 */
	public static String formatDateTime(Date date) {
		return formatDateByFormatStr(date, "yyyy-MM-dd HH:mm:ss");
	}

	/**
	 * 根据格式化串格式化日期 formatDateByFormatStr(myDate, "yyyy-MM-dd HH:mm");
	 * 
	 * @param myDate
	 *            当前日期
	 * @param formatStr
	 *            格式化字符串
	 * @return
	 */
	public static String formatDateByFormatStr(Date myDate, String formatStr) {
		if (myDate == null)
			return "";
		SimpleDateFormat formatter = new SimpleDateFormat(formatStr);
		return formatter.format(myDate);
	}

	/**
	 * 根据格式化串格式化日期 formatDateByFormatStr(myDate, "yyyy-MM-dd HH:mm");
	 * 
	 * @param myDate
	 * @param formatStr
	 * @return
	 */
	public static String formatDateByFormatStr(Object myDate, String formatStr) {
		if (myDate == null)
			return "";
		SimpleDateFormat formatter = new SimpleDateFormat(formatStr);
		return formatter.format(myDate);
	}

	/**
	 * 格式化float类型，只有10位精度
	 * 
	 * @param f
	 * @param formatStr
	 * @return
	 */
	public static String formatFloat(float f, String formatStr) {
		return formatFloat(new Float(f), formatStr);
	}

	/**
	 * 格式化float类型，只有10位精度
	 * 
	 * @param f
	 * @param formatStr
	 * @return
	 */
	public static String formatFloat(Object f, String formatStr) {
		if (f == null)
			return "";
		DecimalFormat format = new DecimalFormat(formatStr);
		return format.format(f);
	}

	/**
	 * 格式化double
	 * 
	 * @param d
	 * @param formatStr
	 * @return
	 */
	public static String formatDouble(double d, String formatStr) {
		DecimalFormat format = new DecimalFormat(formatStr);
		return format.format(d);
	}

	/**
	 * 获得当前年份
	 * 
	 * @return
	 */
	public static int getYear() {
		Calendar cld = Calendar.getInstance();
		cld.setTime(new Date());
		return cld.get(1);
	}

	/**
	 * 获得当前月份
	 * 
	 * @return
	 */
	public static int getMonth() {
		Calendar cld = Calendar.getInstance();
		cld.setTime(new Date());
		return cld.get(2) + 1;
	}

	/**
	 * 获得当前日
	 * 
	 * @return
	 */
	public static int getDay() {
		Calendar cld = Calendar.getInstance();
		cld.setTime(new Date());
		return cld.get(5);
	}

	/**
	 * 格式化对象<br>
	 * 支持Date，Number 超过这个范围则返回toString()
	 * 
	 * @param valueToFormat
	 * @param formatStr
	 * @return
	 */
	public static String formatValue(Object valueToFormat, String formatStr) {
		if (valueToFormat == null)
			return null;
		Object value = valueToFormat;
		if ((value instanceof String)) {
			return (String) value;
		}
		if (Validator.isNull(formatStr)) {
			return valueToFormat.toString();
		}
		Format format = null;
		if ((value instanceof Number)) {
			format = NumberFormat.getNumberInstance();
			((DecimalFormat) format).applyLocalizedPattern(formatStr);
		} else if ((value instanceof Date)) {
			format = new SimpleDateFormat(formatStr);
		}
		if (format == null)
			return valueToFormat.toString();
		else
			return format.format(valueToFormat);
	}

	/**
	 * 反转字符串
	 * 
	 * @param s
	 * @return
	 */
	public static String reverse(String s) {
		if (s == null) {
			return null;
		}
		char[] c = s.toCharArray();
		char[] reverse = new char[c.length];
		for (int i = 0; i < c.length; i++) {
			reverse[i] = c[(c.length - i - 1)];
		}
		return new String(reverse);
	}
}
