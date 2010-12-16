package com.xuan.comm.util;

import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * 操作数组工具类
 * 
 * @author DarkXie
 * 
 */
public class ArrayUtil {
	private static Log _log = LogFactory.getLog(ArrayUtil.class);

	public static Boolean[] append(Boolean[] array, Boolean obj) {
		Boolean[] newArray = new Boolean[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Double[] append(Double[] array, Double obj) {
		Double[] newArray = new Double[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Float[] append(Float[] array, Float obj) {
		Float[] newArray = new Float[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Integer[] append(Integer[] array, Integer obj) {
		Integer[] newArray = new Integer[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Long[] append(Long[] array, Long obj) {
		Long[] newArray = new Long[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Object[] append(Object[] array, Object obj) {
		Object[] newArray = new Object[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Object[][] append(Object[][] array, Object[] obj) {
		Object[][] newArray = new Object[array.length + 1][];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Short[] append(Short[] array, Short obj) {
		Short[] newArray = new Short[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static String[] append(String[] array, String obj) {
		String[] newArray = new String[array.length + 1];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static String[][] append(String[][] array, String[] obj) {
		String[][] newArray = new String[array.length + 1][];

		System.arraycopy(array, 0, newArray, 0, array.length);

		newArray[newArray.length - 1] = obj;

		return newArray;
	}

	public static Boolean[] append(Boolean[] array1, Boolean[] array2) {
		Boolean[] newArray = new Boolean[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static Double[] append(Double[] array1, Double[] array2) {
		Double[] newArray = new Double[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static Float[] append(Float[] array1, Float[] array2) {
		Float[] newArray = new Float[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static Integer[] append(Integer[] array1, Integer[] array2) {
		Integer[] newArray = new Integer[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static Long[] append(Long[] array1, Long[] array2) {
		Long[] newArray = new Long[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static Object[] append(Object[] array1, Object[] array2) {
		Object[] newArray = new Object[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static Object[][] append(Object[][] array1, Object[][] array2) {
		Object[][] newArray = new Object[array1.length + array2.length][];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static Short[] append(Short[] array1, Short[] array2) {
		Short[] newArray = new Short[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static String[] append(String[] array1, String[] array2) {
		String[] newArray = new String[array1.length + array2.length];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static String[][] append(String[][] array1, String[][] array2) {
		String[][] newArray = new String[array1.length + array2.length][];

		System.arraycopy(array1, 0, newArray, 0, array1.length);
		System.arraycopy(array2, 0, newArray, array1.length, array2.length);

		return newArray;
	}

	public static void combine(Object[] array1, Object[] array2,
			Object[] combinedArray) {
		System.arraycopy(array1, 0, combinedArray, 0, array1.length);
		System
				.arraycopy(array2, 0, combinedArray, array1.length,
						array2.length);
	}

	public static boolean contains(boolean[] array, boolean value) {
		if (array == null) {
			return false;
		} else {
			for (int i = 0; i < array.length; i++) {
				if (value == array[i]) {
					return true;
				}
			}
			return false;
		}
	}

	public static boolean contains(char[] array, char value) {
		if (array == null) {
			return false;
		} else {
			for (int i = 0; i < array.length; i++) {
				if (value == array[i]) {
					return true;
				}
			}

			return false;
		}
	}

	public static boolean contains(double[] array, double value) {
		if (array == null) {
			return false;
		} else {
			for (int i = 0; i < array.length; i++) {
				if (value == array[i]) {
					return true;
				}
			}
			return false;
		}
	}

	public static boolean contains(long[] array, long value) {
		if (array == null) {
			return false;
		} else {
			for (int i = 0; i < array.length; i++) {
				if (value == array[i]) {
					return true;
				}
			}
			return false;
		}
	}

	public static boolean contains(int[] array, int value) {
		if (array == null) {
			return false;
		} else {
			for (int i = 0; i < array.length; i++) {
				if (value == array[i]) {
					return true;
				}
			}

			return false;
		}
	}

	public static boolean contains(short[] array, short value) {
		if (array == null) {
			return false;
		} else {
			for (int i = 0; i < array.length; i++) {
				if (value == array[i]) {
					return true;
				}
			}

			return false;
		}
	}

	public static boolean contains(Object[] array, Object value) {
		if ((array == null) || (value == null)) {
			return false;
		} else {
			for (int i = 0; i < array.length; i++) {
				if (value.equals(array[i])) {
					return true;
				}
			}

			return false;
		}
	}

	/**
	 * 去除字符串数组中的冗余
	 * 
	 * @param array
	 * @return
	 */
	public static String[] distinct(String[] array) {
		return distinct(array, null);
	}

	/**
	 * 去除字符串数组中的冗余
	 * 
	 * @param array
	 * @param comparator
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static String[] distinct(String[] array, Comparator comparator) {
		if ((array == null) || (array.length == 0)) {
			return array;
		}
		Set<Object> set = null;
		if (comparator == null) {
			set = new TreeSet<Object>();
		} else {
			set = new TreeSet(comparator);
		}
		for (int i = 0; i < array.length; i++) {
			Object obj = array[i];
			if (!set.contains(obj)) {
				set.add(obj);
			}
		}
		return (String[]) set.toArray(new String[0]);
	}

	public static int getLength(Object[] array) {
		if (array == null) {
			return 0;
		} else {
			return array.length;
		}
	}

	public static Object getValue(Object[] array, int pos) {
		if ((array == null) || (array.length <= pos)) {
			return null;
		} else {
			return array[pos];
		}
	}

	public static Boolean[] toObjectArray(boolean[] array) {
		Boolean[] objArray = new Boolean[array.length];

		for (int i = 0; i < array.length; i++) {
			objArray[i] = Boolean.valueOf(array[i]);
		}

		return objArray;
	}

	public static Double[] toObjectArray(double[] array) {
		Double[] objArray = new Double[array.length];

		for (int i = 0; i < array.length; i++) {
			objArray[i] = new Double(array[i]);
		}

		return objArray;
	}

	public static Float[] toObjectArray(float[] array) {
		Float[] objArray = new Float[array.length];

		for (int i = 0; i < array.length; i++) {
			objArray[i] = new Float(array[i]);
		}

		return objArray;
	}

	public static Integer[] toObjectArray(int[] array) {
		Integer[] objArray = new Integer[array.length];

		for (int i = 0; i < array.length; i++) {
			objArray[i] = new Integer(array[i]);
		}

		return objArray;
	}

	public static Long[] toObjectArray(long[] array) {
		Long[] objArray = new Long[array.length];

		for (int i = 0; i < array.length; i++) {
			objArray[i] = new Long(array[i]);
		}

		return objArray;
	}

	public static Short[] toObjectArray(short[] array) {
		Short[] objArray = new Short[array.length];

		for (int i = 0; i < array.length; i++) {
			objArray[i] = new Short(array[i]);
		}

		return objArray;
	}

	public static void main(String[] args) {
		_log.info("==================");
	}
}
