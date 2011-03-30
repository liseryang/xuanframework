package com.xuan.comm.util;

import java.text.DateFormat;
import java.util.Date;

import junit.framework.TestCase;

/**
 * The class <code>GetterUtilTest</code> contains tests for the class {@link <code>GetterUtil</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 11-2-10
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class GetterUtilTest extends TestCase {

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public GetterUtilTest(String name) {
		super(name);
	}

	/**
	 * Run the boolean get(String, boolean) method test
	 */
	public void testGet() {
		String value = "1";
		boolean defaultValue = false;
		boolean result = GetterUtil.get(value, defaultValue);
		assertTrue(result);
	}

	/**
	 * Run the boolean getBoolean(String) method test
	 */
	public void testGetBoolean() {
		String value = "1";
		boolean result = GetterUtil.getBoolean(value);
		assertTrue(result);
	}

	/**
	 * Run the boolean[] getBooleanValues(String[]) method test
	 */
	public void testGetBooleanValues() {
		String[] values = { "1", "true" };
		boolean[] result = GetterUtil.getBooleanValues(values);
		for (boolean value : result) {
			if (!value)
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the Date getDate(String, DateFormat) method test
	 */
	public void testGetDate() {
		String value = "2011-02-10";
		DateFormat df = DateFormat.getDateInstance();
		Date result = GetterUtil.getDate(value, df);
		assertTrue(value.equals(FormatUtils.formatDate(result)));
	}

	/**
	 * Run the Date[] getDateValues(String[], DateFormat) method test
	 */
	public void testGetDateValues() {
		String[] values = { "2011-02-10", "2010-02-11" };
		DateFormat df = DateFormat.getDateInstance();
		Date[] result = GetterUtil.getDateValues(values, df);
		int i = 0;
		for (String value : values) {
			if (!value.equals(FormatUtils.formatDate(result[i])))
				assertTrue(false);
			i++;
		}
		assertTrue(true);
	}

	/**
	 * Run the double getDouble(String) method test
	 */
	public void testGetDouble() {
		String value = "1.111";
		double result = GetterUtil.getDouble(value);
		assertTrue(result == 1.111d);
	}

	/**
	 * Run the double[] getDoubleValues(String[]) method test
	 */
	public void testGetDoubleValues() {
		String[] values = { "1.1234567", "1.2234567" };
		double[] result = GetterUtil.getDoubleValues(values);
		String tmp = "";
		for (int i = 0; i < values.length; i++) {
			tmp = (new Double(result[i])).toString();
			if (!values[i].equals(tmp))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the float getFloat(String) method test
	 */
	public void testGetFloat() {
		// add test code here
		String value = "1.1234567";
		float result = GetterUtil.getFloat(value);
		System.out.println(result);
		assertTrue(result == 1.1234567f);
	}

	/**
	 * Run the float[] getFloatValues(String[]) method test
	 */
	public void testGetFloatValues() {
		// add test code here
		String[] values = { "1.234567", "1.2345456" };
		float[] result = GetterUtil.getFloatValues(values);
		String tmp = "";
		for (int i = 0; i < values.length; i++) {
			tmp = new Float(result[i]).toString();
			if (!tmp.equals(values[i]))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the int getInteger(String) method test
	 */
	public void testGetInteger() {
		String value = null;
		int result = GetterUtil.getInteger(value);
		assertTrue(result == 0);
	}

	/**
	 * Run the int[] getIntegerValues(String[]) method test
	 */
	public void testGetIntegerValues() {
		String[] values = null;
		int[] result = GetterUtil.getIntegerValues(values);
		assertTrue(result[0] == 0);
	}

	/**
	 * Run the long getLong(String) method test
	 */
	public void testGetLong() {
		String value = "123456789";
		long result = GetterUtil.getLong(value);
		assertTrue(value.equals(new Long(result).toString()));
	}

	/**
	 * Run the long[] getLongValues(String[]) method test
	 */
	public void testGetLongValues() {
		String[] values = { "123", "3456" };
		long[] result = GetterUtil.getLongValues(values);
		for (int i = 1; i < values.length; i++) {
			if (!values[i].equals(new Long(result[i]).toString()))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the short getShort(String) method test
	 */
	public void testGetShort() {
		String value = "123";
		short result = GetterUtil.getShort(value);

		assertTrue(value.equals(new Short(result).toString()));
	}

	/**
	 * Run the short[] getShortValues(String[]) method test
	 */
	public void testGetShortValues() {
		String[] values = { "123", "3456" };
		short[] result = GetterUtil.getShortValues(values);
		for (int i = 1; i < values.length; i++) {
			if (!values[i].equals(new Short(result[i]).toString()))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the String getString(String) method test
	 */
	public void testGetString() {
		String value = "string";
		String result = GetterUtil.getString(value);
		assertTrue(value.equals(result));
	}
}