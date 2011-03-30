package com.xuan.comm.util;

import junit.framework.TestCase;

/**
 * The class <code>MacMD5Test</code> contains tests for the class {@link
 * <code>MacMD5</code>}
 *
 * @pattern JUnit Test Case
 *
 * @generatedBy CodePro at 11-2-11 �*3:46
 *
 * @author DarkXie
 *
 * @version $Revision$
 */
public class MacMD5Test extends TestCase {

	/**
	 * Construct new test instance
	 *
	 * @param name the test name
	 */
	public MacMD5Test(String name) {
		super(name);
	}

	/**
	 * Run the String CalcMD5(String) method test
	 */
	public void testCalcMD5() {
		MacMD5 fixture = new MacMD5();
		assertTrue("d41d8cd98f00b204e9800998ecf8427e".equals(fixture.CalcMD5("")));
		assertTrue("0cc175b9c0f1b6a831c399e269772661".equals(fixture.CalcMD5("a")));
		assertTrue("900150983cd24fb0d6963f7d28e17f72".equals(fixture.CalcMD5("abc")));
		assertTrue("f96b697d7cb7938d525a2f31aaf161d0".equals(fixture.CalcMD5("message digest")));
		assertTrue("c3fcd3d76192e4007dfb496cca67e13b".equals(fixture.CalcMD5("abcdefghijklmnopqrstuvwxyz")));
	}
}