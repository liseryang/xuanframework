package com.xuan.comm.util;

import java.util.Calendar;
import java.util.Date;

import junit.framework.TestCase;

/**
 * The class <code>FormatUtilsTest</code> contains tests for the class {@link <code>FormatUtils</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 11-1-5 �B 10:20
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class FormatUtilsTest extends TestCase {

	private int year = Calendar.getInstance().get(1);

	private int month = Calendar.getInstance().get(2) + 1;

	private int day = Calendar.getInstance().get(5);

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public FormatUtilsTest(String name) {
		super(name);
	}

	/**
	 * Launch the test.
	 * 
	 * @param args
	 *            String[]
	 */
	public static void main(String[] args) {
	}

	/**
	 * Perform pre-test initialization
	 * 
	 * @throws Exception
	 * 
	 * @see TestCase#setUp()
	 */
	protected void setUp() throws Exception {
		super.setUp();
		// Add additional set up code here
	}

	/**
	 * Perform post-test clean up
	 * 
	 * @throws Exception
	 * 
	 * @see TestCase#tearDown()
	 */
	protected void tearDown() throws Exception {
		super.tearDown();
		// Add additional tear down code here
	}

	private Calendar getTheCalendarString() {
		Calendar calendar = Calendar.getInstance();
		calendar.set(2011, 0, 5, 12, 12, 12);
		return calendar;
	}

	/**
	 * Run the String getCurrTime() method test
	 */
	public void testGetCurrTime() {
		// add test code here
		String result = FormatUtils.getCurrTime();
		assertTrue(result.length() == 14);
	}

	/**
	 * Run the String formatDate(Date) method test
	 */
	public void testFormatDate() {
		Date date = new Date(this.getTheCalendarString().getTimeInMillis());
		String result = FormatUtils.formatDate(date);
		assertEquals("2011-01-05", result);
	}

	/**
	 * Run the String formatDateTime(Date) method test
	 */
	public void testFormatDateTime() {
		Date date = new Date(this.getTheCalendarString().getTimeInMillis());
		String result = FormatUtils.formatDateTime(date);
		assertEquals("2011-01-05 12:12:12", result);
	}

	/**
	 * Run the String formatDateByFormatStr(Date, String) method test
	 */
	public void testFormatDateByFormatStr() {
		Date myDate = new Date(this.getTheCalendarString().getTimeInMillis());
		String formatStr = "yyyyMMddhhmmss";
		String result = FormatUtils.formatDateByFormatStr(myDate, formatStr);
		assertEquals("20110105121212", result);
	}

	/**
	 * Run the String formatFloat(float, String) method test
	 */
	public void testFormatFloat() {
		// float只有10位精度
		float f = 45678.141F;
		String formatStr = "$#,###.##";
		String result = FormatUtils.formatFloat(f, formatStr);
		assertEquals("$45,678.14", result);
	}

	/**
	 * Run the String formatDouble(double, String) method test
	 */
	public void testFormatDouble() {
		// add test code here
		double d = 12345678.141156;
		String formatStr = "$#,###.##";
		String result = FormatUtils.formatDouble(d, formatStr);
		assertEquals("$12,345,678.14", result);
	}

	/**
	 * Run the int getYear() method test
	 */
	public void testGetYear() {
		int result = FormatUtils.getYear();
		assertTrue(year == result);
	}

	/**
	 * Run the int getMonth() method test
	 */
	public void testGetMonth() {
		// add test code here
		int result = FormatUtils.getMonth();
		assertTrue(month == result);
	}

	/**
	 * Run the int getDay() method test
	 */
	public void testGetDay() {
		// add test code here
		int result = FormatUtils.getDay();
		assertTrue(day == result);
	}

	/**
	 * Run the String formatValue(Object, String) method test
	 */
	public void testFormatValue() {
		// add test code here
		Object valueToFormat = new Double(12345678.141156);
		String formatStr = "$#,###.##";
		String result = FormatUtils.formatValue(valueToFormat, formatStr);
		assertEquals("$12,345,678.14", result);
	}

	/**
	 * Run the String reverse(String) method test
	 */
	public void testReverse() {
		// fail("Newly generated method - fix or disable");
		// add test code here
		String s = null;
		String result = FormatUtils.reverse(s);
		if (result == null) {
			assertEquals("4321", FormatUtils.reverse("1234"));
		} else
			assertTrue(false);
	}
}