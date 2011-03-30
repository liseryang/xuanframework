package com.xuan.comm.util;

import junit.framework.Test;
import junit.framework.TestSuite;

public class CommUtilAllTests {

	public static Test suite() {
		TestSuite suite = new TestSuite(CommUtilAllTests.class.getName());
		// $JUnit-BEGIN$
		suite.addTestSuite(ParamUtilTest.class);
		suite.addTestSuite(GetterUtilTest.class);
		suite.addTestSuite(PropertiesUtilTest.class);
		suite.addTestSuite(MacMD5Test.class);
		suite.addTestSuite(FormatUtilsTest.class);
		suite.addTestSuite(PaginationTest.class);
		suite.addTestSuite(BeanUtilTest.class);
		suite.addTestSuite(RandomizerTest.class);
		// $JUnit-END$
		return suite;
	}

}
