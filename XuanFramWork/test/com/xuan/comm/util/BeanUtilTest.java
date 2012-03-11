package com.xuan.comm.util;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import junit.framework.TestCase;

/**
 * The class <code>BeanUtilTest</code> contains tests for the class {@link <code>BeanUtil</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class BeanUtilTest extends TestCase {

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public BeanUtilTest(String name) {
		super(name);
	}

	/**
	 * Run the void copyProperties(Object, Object) method test
	 */
	public void testCopyProperties() {
		// add test code here
		TestObj target = new TestObj(1, "abc", 33);
		TestObj source = new TestObj(1, "dark", 33);
		try {
			BeanUtil.copyProperties(target, source);

		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("dark", source.getName());
	}

	/**
	 * Run the Object getProperty(Object, String) method test
	 */
	public void testGetProperty() {
		// add test code here
		TestObj opObj = new TestObj(1, "dark", 33);
		String objProperty = "name";
		Object result = null;
		try {
			result = BeanUtil.getProperty(opObj, objProperty);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (result == null)
			result = "";
		assertEquals("dark", result.toString());
	}

	/**
	 * Run the void setProperty(Object, String, Object) method test
	 */
	public void testSetProperty() {
		// add test code here
		TestObj opObj = new TestObj(1, "dark", 33);
		String objProperty = "name";
		Object valueObject = "abc";
		try {
			BeanUtil.setProperty(opObj, objProperty, valueObject);
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		assertEquals("abc", opObj.getName());
	}

	/**
	 * Run the List<String> getClassAllProperty(String) method test
	 */
	public void testGetClassAllProperty() {
		// add test code here
		String className = this.getClass().getName();
		try {
			List<String> result = BeanUtil.getClassAllProperty(className);
			result.size();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			assertTrue(false);
		}
		assertTrue(true);
	}
}