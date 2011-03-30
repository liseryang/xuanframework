package com.xuan.comm.util;

import junit.framework.TestCase;

/**
 * The class <code>RandomizerTest</code> contains tests for the class {@link <code>Randomizer</code>}
 * 
 * @pattern JUnit Test Case
 * 
 * @generatedBy CodePro at 11-2-15 �B 11:39
 * 
 * @author DarkXie
 * 
 * @version $Revision$
 */
public class RandomizerTest extends TestCase {

	/**
	 * Construct new test instance
	 * 
	 * @param name
	 *            the test name
	 */
	public RandomizerTest(String name) {
		super(name);
	}

	/**
	 * Run the Randomizer getInstance() method test
	 */
	public void testGetInstance() {
		Randomizer result = Randomizer.getInstance();
		assertTrue(result != null);
	}

	/**
	 * Run the int[] nextInt(int, int) method test
	 */
	public void testNextInt() {
		Randomizer fixture = new Randomizer();
		int n = 1000;
		int size = 5;
		int[] result = fixture.nextInt(n, size);
		for (int value : result) {
			if (value > n)
				assertTrue(false);
		}
		assertTrue(true);
	}

	/**
	 * Run the void randomize(char[]) method test
	 */
	public void testRandomize() {
		Randomizer fixture = new Randomizer();
		char[] array = { 'a', 'b', 'c' };
		char[] array2 = { 'a', 'b', 'c' };
		fixture.randomize(array);
		assertTrue(!((array[0] == array2[0]) && (array[1] == array2[1])
				&& (array[2] == array2[2])));
	}
}