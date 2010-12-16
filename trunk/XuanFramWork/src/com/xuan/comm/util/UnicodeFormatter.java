package com.xuan.comm.util;

import org.apache.log4j.Logger;

public class UnicodeFormatter {
	static Logger _log = Logger.getLogger(UnicodeFormatter.class);

	public static char HEX_DIGIT[] = { '0', '1', '2', '3', '4', '5', '6', '7',
			'8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };

	public static String byteToHex(byte b) {
		char[] array = { HEX_DIGIT[(b >> 4) & 0x0f], HEX_DIGIT[b & 0x0f] };

		return new String(array);
	}

	public static String charToHex(char c) {
		byte hi = (byte) (c >>> 8);
		byte lo = (byte) (c & 0xff);

		return byteToHex(hi) + byteToHex(lo);
	}

	public static String parseString(String hexString) {
		StringBuffer sm = new StringBuffer();

		char[] array = hexString.toCharArray();

		if ((array.length % 6) != 0) {
			_log.error("String is not in hex format");

			return hexString;
		}

		for (int i = 2; i < hexString.length(); i = i + 6) {
			String s = hexString.substring(i, i + 4);

			try {
				char c = (char) Integer.parseInt(s, 16);

				sm.append(c);
			} catch (Exception e) {
				_log.error(e, e);

				return hexString;
			}
		}

		return sm.toString();
	}

	public static String toString(char[] array) {
		StringBuffer sm = new StringBuffer();

		for (int i = 0; i < array.length; i++) {
			sm.append("\\u");
			sm.append(charToHex(array[i]));
		}

		return sm.toString();
	}

	public static String toString(String s) {
		if (s == null) {
			return null;
		}

		return toString(s.toCharArray());
	}
}
