package com.xuan.comm.util;

import java.text.DateFormat;
import java.util.Date;

import junit.framework.TestCase;

import org.springframework.mock.web.MockHttpServletRequest;

/**
 * The class <code>ParamUtilTest</code> contains tests for the class {@link <code>ParamUtil</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 11-2-11 �* 4:35
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class ParamUtilTest extends TestCase {

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public ParamUtilTest(String name) {
		super(name);
	}

	/**
	 * Run the boolean get(ServletRequest, String, boolean) method test
	 */
	public void testGet() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		req.addParameter(param, "true");
		boolean defaultValue = false;
		boolean result = ParamUtil.get(req, param, defaultValue);
		assertTrue(result);
	}

	/**
	 * Run the boolean getBoolean(ServletRequest, String) method test
	 */
	public void testGetBoolean() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		req.addParameter(param, "true");
		boolean result = ParamUtil.getBoolean(req, param);
		assertTrue(result);
	}

	/**
	 * Run the boolean[] getBooleanValues(ServletRequest, String) method test
	 */
	public void testGetBooleanValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "1", "true" };
		req.addParameter(param, values);
		boolean[] result = ParamUtil.getBooleanValues(req, param);
		for (boolean val : result) {
			if (!val)
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the Date getDate(ServletRequest, String, DateFormat) method test
	 */
	public void testGetDate() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String value = "2010-01-01";
		req.addParameter(param, value);
		DateFormat df = DateFormat.getDateInstance();
		Date result = ParamUtil.getDate(req, param, df);
		assertTrue(value.equals(FormatUtils.formatDate(result)));
	}

	/**
	 * Run the Date[] getDateValues(ServletRequest, String, DateFormat) method
	 * test
	 */
	public void testGetDateValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "2011-02-10", "2010-02-11" };
		req.addParameter(param, values);
		DateFormat df = DateFormat.getDateInstance();
		Date[] result = ParamUtil.getDateValues(req, param, df);
		int i = 0;
		for (String value : values) {
			if (!value.equals(FormatUtils.formatDate(result[i])))
				assertTrue(false);
			i++;
		}
		assertTrue(true);
	}

	/**
	 * Run the Double getDouble(ServletRequest, String) method test
	 */
	public void testGetDouble() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String value = "1.111";
		req.addParameter(param, value);
		Double result = ParamUtil.getDouble(req, param);
		assertTrue(value.equals(result.toString()));
	}

	/**
	 * Run the Double[] getDoubleValues(ServletRequest, String) method test
	 */
	public void testGetDoubleValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "1.1234567", "1.2234567" };
		req.addParameter(param, values);
		Double[] result = ParamUtil.getDoubleValues(req, param);
		for (int i = 0; i < values.length; i++) {
			if (!values[i].equals(result[i].toString()))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the Float getFloat(ServletRequest, String) method test
	 */
	public void testGetFloat() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String values = "1.1234567";
		req.addParameter(param, values);
		Float result = ParamUtil.getFloat(req, param);
		assertTrue(values.equals(result.toString()));
	}

	/**
	 * Run the Float[] getFloatValues(ServletRequest, String) method test
	 */
	public void testGetFloatValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "1.1234567", "1.2234567" };
		req.addParameter(param, values);
		Float[] result = ParamUtil.getFloatValues(req, param);
		for (int i = 0; i < values.length; i++) {
			if (!values[i].equals(result[i].toString()))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the Integer getInteger(ServletRequest, String) method test
	 */
	public void testGetInteger() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String values = "1234";
		req.addParameter(param, values);
		Integer result = ParamUtil.getInteger(req, param);
		assertTrue(values.equals(result.toString()));
	}

	/**
	 * Run the Integer[] getIntegerValues(ServletRequest, String) method test
	 */
	public void testGetIntegerValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "1234" };
		req.addParameter(param, values);
		Integer[] result = ParamUtil.getIntegerValues(req, param);
		for (int i = 0; i < values.length; i++) {
			if (!values[i].equals(result[i].toString()))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the Long getLong(ServletRequest, String) method test
	 */
	public void testGetLong() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String values = "1234";
		req.addParameter(param, values);
		Long result = ParamUtil.getLong(req, param);
		assertTrue(values.equals(result.toString()));
	}

	/**
	 * Run the Long[] getLongValues(ServletRequest, String) method test
	 */
	public void testGetLongValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "1234" };
		req.addParameter(param, values);
		Long[] result = ParamUtil.getLongValues(req, param);
		for (int i = 0; i < values.length; i++) {
			if (!values[i].equals(result[i].toString()))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the Short getShort(ServletRequest, String) method test
	 */
	public void testGetShort() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String values = "1234";
		req.addParameter(param, values);
		Short result = ParamUtil.getShort(req, param);
		assertTrue(values.equals(result.toString()));
	}

	/**
	 * Run the Short[] getShortValues(ServletRequest, String) method test
	 */
	public void testGetShortValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "123" };
		req.addParameter(param, values);
		Short[] result = ParamUtil.getShortValues(req, param);
		for (int i = 0; i < values.length; i++) {
			if (!values[i].equals(result[i].toString()))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the String getString(ServletRequest, String) method test
	 */
	public void testGetString() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String values = "1234";
		req.addParameter(param, values);
		String result = ParamUtil.getString(req, param);
		assertTrue(values.equals(result));
	}

	/**
	 * Run the String[] getStringValues(ServletRequest, String) method test
	 */
	public void testGetStringValues() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "1234" };
		req.addParameter(param, values);
		String[] result = ParamUtil.getStringValues(req, param);
		for (int i = 0; i < values.length; i++) {
			if (!values[i].equals(result[i]))
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the void print(ServletRequest) method test
	 */
	public void testPrint() {
		String param = "param1";
		MockHttpServletRequest req = new MockHttpServletRequest();
		String[] values = { "1234" };
		req.addParameter(param, values);
		ParamUtil.print(req);
		assertTrue(true);
	}
}