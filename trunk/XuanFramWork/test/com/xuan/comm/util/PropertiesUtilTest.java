package com.xuan.comm.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import junit.framework.TestCase;

/**
 * The class <code>PropertiesUtilTest</code> contains tests for the class
 * {@link <code>PropertiesUtil</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 11-2-12 �* 3:45
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class PropertiesUtilTest extends TestCase {

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public PropertiesUtilTest(String name) {
		super(name);
	}

	/**
	 * Run the void copyProperties(Properties, Properties) method test
	 * 
	 * @throws IOException
	 */
	public void testCopyProperties() throws IOException {
		String strFrom = "abc=123";
		Properties from = PropertiesUtil.load(strFrom);
		String strTo = "def=456";
		Properties to = PropertiesUtil.load(strTo);
		PropertiesUtil.copyProperties(from, to);
		assertTrue(from.getProperty("abc").equals(to.getProperty("abc")));
	}

	/**
	 * Run the Properties fromMap(Map<?,?>) method test
	 * 
	 * @throws IOException
	 */
	public void testFromMap() throws IOException {
		Map<String, String> map = new HashMap<String, String>();
		map.put("abc", "123");
		map.put("def", "456");
		map.put("null", "");
		Properties result = PropertiesUtil.fromMap(map);
		assertTrue(result.getProperty("abc").equals("123"));
		assertTrue(result.getProperty("def").equals("456"));
		assertTrue(result.getProperty("null").equals(""));
	}

	/**
	 * Run the void fromProperties(Properties, Map<Object,Object>) method test
	 * 
	 * @throws IOException
	 */
	public void testFromProperties() throws IOException {
		String strFrom = "abc=123";
		Properties p = PropertiesUtil.load(strFrom);
		Map<Object, Object> map = new HashMap<Object, Object>();
		PropertiesUtil.fromProperties(p, map);
		assertTrue(map.get("abc").equals("123"));
	}

	/**
	 * Run the Properties load(String) method test
	 * 
	 * @throws IOException
	 */
	public void testLoad() throws IOException {
		String s = "abc=123";
		Properties result = PropertiesUtil.load(s);
		assertTrue(result.getProperty("abc").equals("123"));
	}

	/**
	 * Run the void merge(Properties, Properties) method test
	 * 
	 * @throws IOException
	 */
	public void testMerge() throws IOException {
		String strFrom = "abc=123";
		Properties p1 = PropertiesUtil.load(strFrom);
		String strTo = "def=456";
		Properties p2 = PropertiesUtil.load(strTo);
		PropertiesUtil.merge(p1, p2);
		assertTrue(p1.getProperty("def").equals("456"));
	}

	/**
	 * Run the String list(Map<?,?>) method test
	 */
	public void testList() {
		// add test code here
		Map<String, String> map = new HashMap<String, String>();
		map.put("abc", "123");
		map.put("def", "456");
		String result = PropertiesUtil.list(map);
		assertTrue(result != null);
	}

	/**
	 * Run the String toString(Properties) method test
	 * @throws IOException 
	 */
	public void testToString() throws IOException {
		String strFrom = "abc=123";
		Properties p1 = PropertiesUtil.load(strFrom);
		String result = PropertiesUtil.toString(p1);
		assertTrue(result.equals(strFrom+"\n"));
	}

	/**
	 * Run the void trimKeys(Properties) method test
	 * @throws IOException 
	 */
	public void testTrimKeys() throws IOException {
		String strFrom = " abc =123";
		Properties p1 = PropertiesUtil.load(strFrom);
		PropertiesUtil.trimKeys(p1);
		assertTrue(p1.getProperty("abc").equals("123"));
	}
}

/*
 * $CPS$ This comment was generated by CodePro. Do not edit it. patternId =
 * com.instantiations.assist.eclipse.pattern.testCasePattern strategyId =
 * com.instantiations.assist.eclipse.pattern.testCasePattern.junitTestCase
 * additionalTestNames = assertTrue = false callTestMethod = true createMain =
 * false createSetUp = false createTearDown = false createTestFixture = false
 * createTestStubs = true methods = package = com.xuan.comm.util
 * package.sourceFolder = XuanFramWork/test superclassType =
 * junit.framework.TestCase testCase = PropertiesUtilTest testClassType =
 * com.xuan.comm.util.PropertiesUtil
 */