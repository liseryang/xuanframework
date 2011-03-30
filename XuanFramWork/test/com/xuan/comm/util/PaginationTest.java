package com.xuan.comm.util;

import java.util.Collection;

import junit.framework.TestCase;

/**
 * The class <code>PaginationTest</code> contains tests for the class {@link <code>Pagination</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 11-2-12 �B 10:42
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class PaginationTest extends TestCase {

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public PaginationTest(String name) {
		super(name);
	}

	/**
	 * Run the long getTotal() method test
	 */
	public void testGetTotal() {
		// add test code here
		Pagination fixture = new Pagination();
		fixture.setTotal(1);
		long result = fixture.getTotal();
		assertTrue(result == 1);
	}

	/**
	 * Run the void setTotal(long) method test
	 */
	public void testSetTotal() {
		// add test code here
		Pagination fixture = new Pagination();
		long total = 0L;
		fixture.setTotal(total);
		assertTrue(total == fixture.getTotal());
	}

	/**
	 * Run the Collection<?> getRowSet() method test
	 */
	public void testGetRowSet() {
		Pagination fixture = new Pagination();
		fixture.setRowSet(null);
		Collection<?> result = fixture.getRowSet();
		assertTrue(result == null);
	}

	/**
	 * Run the void setRowSet(Collection<?>) method test
	 */
	public void testSetRowSet() {
		Pagination fixture = new Pagination();
		Collection<?> rowSet = null;
		fixture.setRowSet(rowSet);
		assertTrue(fixture.getRowSet() == null);
	}

	/**
	 * Run the String toString() method test
	 */
	public void testToString() {
		// add test code here
		Pagination fixture = new Pagination();
		String result = fixture.toString();
		if (result != null)
			assertTrue(true);
		else
			assertTrue(false);
	}

	/**
	 * Run the String getGridJSON() method test
	 */
	public void testGetGridJSON() {
		// add test code here
		Pagination fixture = new Pagination();
		String result = fixture.getGridJSON();
		if (result != null)
			assertTrue(true);
		else
			assertTrue(false);
	}
}
