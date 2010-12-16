package com.xuan.comm.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.PropertyUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class BeanUtil {
	private static Log _log = LogFactory.getLog(BeanUtil.class);

	/**
	 * 拷贝属性
	 * 
	 * @param target
	 * @param source
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	public static void copyProperties(Object target, Object source)
			throws IllegalAccessException, InvocationTargetException {
		BeanUtils.copyProperties(target, source);
	}

	/**
	 * 获得对象属性，支持点记符
	 * 
	 * @param opObj
	 * @param objProperty
	 * @return
	 * @throws NoSuchMethodException
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 * @throws NumberFormatException
	 */
	public static Object getProperty(Object opObj, String objProperty)
			throws NumberFormatException, IllegalAccessException,
			InvocationTargetException, NoSuchMethodException {
		if (opObj.getClass().isArray()) {
			Object[] objs = (Object[]) opObj;
			if (objProperty.indexOf(".") <= 0) {
				return objs[java.lang.Integer.parseInt(objProperty)];
			}
			return PropertyUtils.getProperty(objs[java.lang.Integer
					.parseInt(objProperty
							.substring(0, objProperty.indexOf(".")))],
					objProperty.substring(objProperty.indexOf(".") + 1));
		}
		return PropertyUtils.getProperty(opObj, objProperty);
	}

	/**
	 * 设置对象属性 支持点记符号
	 * 
	 * @param opObj
	 *            目标对象
	 * @param objProperty
	 *            目标属性
	 * @param valueObject
	 *            值
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 * @throws NoSuchMethodException
	 */
	public static void setProperty(Object opObj, String objProperty,
			Object valueObject) throws IllegalAccessException,
			InvocationTargetException, NoSuchMethodException {
		if (opObj.getClass().isArray()) {
			Object[] objs = (Object[]) opObj;
			if (objProperty.indexOf(".") > 0)
				BeanUtils.setProperty(objs[java.lang.Integer
						.parseInt(objProperty.substring(0, objProperty
								.indexOf(".")))], objProperty
						.substring(objProperty.indexOf(".") + 1), valueObject);
		} else {
			BeanUtils.setProperty(opObj, objProperty, valueObject);
		}
	}

	/**
	 * 序列化一个对象
	 * 
	 * @param f
	 *            文件路径，绝对路径
	 * @param obj
	 *            对象
	 * @throws IOException
	 * @throws Exception
	 */
	public static void serializableObj(String f, Object obj) throws IOException {
		File file = new File(f);
		FileOutputStream os = new FileOutputStream(file);
		ObjectOutputStream oos = new ObjectOutputStream(os);
		oos.writeObject(obj);
		oos.close();
		os.close();
	}

	/**
	 * 将一个文件反序列化成一个对象
	 * 
	 * @param f
	 * @return
	 * @throws ClassNotFoundException
	 * @throws Exception
	 */
	public static Object unSerializableObj(String f) throws IOException,
			ClassNotFoundException {
		File file = new File(f);
		FileInputStream is = new FileInputStream(file);
		ObjectInputStream ois = new ObjectInputStream(is);
		Object obj = ois.readObject();
		ois.close();
		is.close();
		return obj;
	}

	/**
	 * 获得一个Class的全部属性 BeanUtil.getClassAllProperty("com.xuan.entity.Users")
	 * 
	 * @param className
	 * @return
	 * @throws ClassNotFoundException
	 */
	public static List<String> getClassAllProperty(String className)
			throws ClassNotFoundException {
		Class<?> c = Class.forName(className);
		Field[] fields = c.getDeclaredFields();
		List<String> ls = new ArrayList<String>();
		for (Field ff : fields) {
			ls.add(ff.getName());
		}
		return ls;
	}

	public static void main(String[] args) {
		_log.info("==================");
	}
}
