package com.xuan.comm.util;

import junit.framework.TestCase;

/**
 * The class <code>UnicodeFormatterTest</code> contains tests for the class
 * {@link <code>UnicodeFormatter</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 11-2-15 �B 11:50
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class UnicodeFormatterTest extends TestCase {

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public UnicodeFormatterTest(String name) {
		super(name);
	}

	/**
	 * Run the String byteToHex(byte) method test
	 */
	public void testByteToHex() {
		byte b = 0;
		String result = UnicodeFormatter.byteToHex(b);
		assertTrue(result.equals("00"));
	}

	/**
	 * Run the String charToHex(char) method test
	 */
	public void testCharToHex() {
		char c = 0;
		String result = UnicodeFormatter.charToHex(c);
		assertTrue(result.equals("0000"));
	}

	/**
	 * Run the String parseString(String) method test
	 */
	public void testParseString() {
		String init = "abcd";
		String hexString = UnicodeFormatter.toString(init.toCharArray());
		String result = UnicodeFormatter.parseString(hexString);
		assertTrue(result.equals(init));
	}

	/**
	 * Run the String toString(char[]) method test
	 */
	public void testToString() {
		String init = "abcd";
		char[] array = init.toCharArray();
		String hexString = UnicodeFormatter.toString(init.toCharArray());
		String result = UnicodeFormatter.toString(array);
		assertTrue(hexString.equals(result));
	}
}