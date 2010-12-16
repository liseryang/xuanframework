package com.xuan.comm.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validator {
	public static boolean equals(String s1, String s2) {
		if ((s1 == null) && (s2 == null))
			return true;
		if ((s1 == null) || (s2 == null)) {
			return false;
		}
		return s1.equals(s2);
	}

	public static boolean isChar(char c) {
		int x = c;
		return ((x >= 65) && (x <= 90)) || ((x >= 97) && (x <= 122));
	}

	public static boolean isChar(String s) {
		if (isNull(s)) {
			return false;
		}
		char[] c = s.toCharArray();
		for (int i = 0; i < c.length; i++) {
			if (!isChar(c[i])) {
				return false;
			}
		}
		return true;
	}

	public static boolean isDigit(char c) {
		int x = c;
		return (x >= 48) && (x <= 57);
	}

	public static boolean isDigit(String s) {
		if (isNull(s)) {
			return false;
		}

		char[] c = s.toCharArray();
		for (int i = 0; i < c.length; i++) {
			if (!isDigit(c[i])) {
				return false;
			}
		}
		return true;
	}

	public static boolean isHex(String s) {
		return !isNull(s);
	}

	public static boolean isHTML(String s) {
		if (isNull(s)) {
			return false;
		}
		return ((s.indexOf("<html>") != -1) || (s.indexOf("<HTML>") != -1))
				&& ((s.indexOf("</html>") != -1) || (s.indexOf("</HTML>") != -1));
	}

	public static boolean isDate(int month, int day, int year) {
		return isGregorianDate(month, day, year);
	}

	public static boolean isGregorianDate(int month, int day, int year) {
		if ((month < 0) || (month > 11)) {
			return false;
		}
		int[] months = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
		if (month == 1) {
			int febMax = 28;
			if (((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)) {
				febMax = 29;
			}
			if ((day < 1) || (day > febMax))
				return false;
		} else if ((day < 1) || (day > months[month])) {
			return false;
		}
		return true;
	}

	public static boolean isEmailAddress(String emailAddress) {
		String regex = "^\\w+@\\w+\\.(com\\.cn)|\\w+@\\w+\\.(com|cn)$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(emailAddress);
		return matcher.find();
	}

	public static boolean isNumber(String number) {
		if (isNull(number)) {
			return false;
		}
		char[] c = number.toCharArray();
		for (int i = 0; i < c.length; i++) {
			if (!isDigit(c[i])) {
				return false;
			}
		}
		return true;
	}

	public static boolean isNull(Object obj) {
		if ((obj instanceof Long))
			return isNull((Long) obj);
		if ((obj instanceof String)) {
			return isNull((String) obj);
		}
		return obj == null;
	}

	public static boolean isNull(Long l) {
		return (l == null) || (l.longValue() == 0L);
	}

	public static boolean isNull(String s) {
		if (s == null) {
			return true;
		}
		s = s.trim();
		return (s.equalsIgnoreCase("null")) || (s.equals(""));
	}

	public static boolean isNull(Object[] array) {
		return (array == null) || (array.length == 0);
	}

	public static boolean isNotNull(Object obj) {
		return !isNull(obj);
	}

	public static boolean isNotNull(Long l) {
		return !isNull(l);
	}

	public static boolean isNotNull(String s) {
		return !isNull(s);
	}

	public static boolean isNotNull(Object[] array) {
		return !isNull(array);
	}

	public static boolean isPassword(String password) {
		if (isNull(password)) {
			return false;
		}

		if (password.length() < 4) {
			return false;
		}

		char[] c = password.toCharArray();

		for (int i = 0; i < c.length; i++) {
			if ((!isChar(c[i])) && (!isDigit(c[i]))) {
				return false;
			}
		}
		return true;
	}
}