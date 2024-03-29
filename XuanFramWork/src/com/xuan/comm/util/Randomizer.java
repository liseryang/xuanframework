package com.xuan.comm.util;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

/**
 * 随机数
 * 
 * @author DarkXie
 * 
 */
@SuppressWarnings("serial")
public class Randomizer extends Random {

	public static Randomizer getInstance() {
		return _instance;
	}

	public Randomizer() {
		super();
	}

	public Randomizer(long seed) {
		super(seed);
	}

	/**
	 * 随机生成size个N以内的正整数
	 * 
	 * @param n
	 * @param size
	 * @return
	 */
	public int[] nextInt(int n, int size) {
		if (size > n) {
			size = n;
		}
		Set<Integer> set = new LinkedHashSet<Integer>();
		for (int i = 0; i < size; i++) {
			while (true) {
				Integer value = new Integer(nextInt(n));
				if (!set.contains(value)) {
					set.add(value);
					break;
				}
			}
		}
		int[] array = new int[set.size()];
		Iterator<Integer> itr = set.iterator();
		for (int i = 0; i < array.length; i++) {
			array[i] = ((Integer) itr.next()).intValue();
		}
		return array;
	}

	/**
	 * 将数组乱序
	 * 
	 * @param array
	 */
	public void randomize(char array[]) {
		int length = array.length;

		for (int i = 0; i < length - 1; i++) {
			int x = nextInt(length);
			char y = array[i];

			array[i] = array[i + x];
			array[i + x] = y;

			length--;
		}
	}

	/**
	 * 将数组乱序
	 * 
	 * @param array
	 */
	public void randomize(int array[]) {
		int length = array.length;

		for (int i = 0; i < length - 1; i++) {
			int x = nextInt(length);
			int y = array[i];

			array[i] = array[i + x];
			array[i + x] = y;

			length--;
		}
	}

	/**
	 * 将数组乱序
	 * 
	 * @param list
	 */
	public void randomize(List<Object> list) {
		int size = list.size();

		for (int i = 0; i <= size; i++) {
			int j = nextInt(size);
			Object obj = list.get(i);

			list.set(i, list.get(i + j));
			list.set(i + j, obj);

			size--;
		}
	}

	/**
	 * 将数组乱序
	 * 
	 * @param array
	 */
	public void randomize(Object array[]) {
		int length = array.length;

		for (int i = 0; i < length - 1; i++) {
			int x = nextInt(length);
			Object y = array[i];

			array[i] = array[i + x];
			array[i + x] = y;

			length--;
		}
	}

	/**
	 * 将字符串乱序
	 * 
	 * @param s
	 * @return
	 */
	public String randomize(String s) {
		if (s == null) {
			return null;
		}
		char[] array = s.toCharArray();
		randomize(array);
		return new String(array);
	}

	private static Randomizer _instance = new Randomizer();
}