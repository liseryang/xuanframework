package com.xuan.comm.util;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

public class TestObj {
	private long ids;
	private String name;
	private int age;
	private List<TestObj> children = new ArrayList<TestObj>();

	public List<TestObj> getChildren() {
		return children;
	}

	public void setChildren(List<TestObj> children) {
		this.children = children;
	}

	public TestObj() {
		super();
	}

	public TestObj(long ids, String name, int age) {
		super();
		this.ids = ids;
		this.name = name;
		this.age = age;
	}

	public long getIds() {
		return ids;
	}

	public void setIds(long ids) {
		this.ids = ids;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

//	public String getGridJSON() {
//		JsonConfig jsonConfig = new JsonConfig();
//		JSONObject json = JSONObject.fromObject(this, jsonConfig);
//		return json.toString();
//	}

	public static void main(String[] args) {
		TestObj f = new TestObj();
		f.setIds(1);
		f.setName("父节点");
		
		TestObj c1 = new TestObj();
		c1.setIds(10);
		c1.setName("子节点1");
		
		TestObj c2 = new TestObj();
		c2.setIds(11);
		c2.setName("子节点2");
		
		f.getChildren().add(c1);
		f.getChildren().add(c2);
		
		JsonConfig jsonConfig = new JsonConfig();
		JSONObject json = JSONObject.fromObject(f, jsonConfig);
		System.out.print(json.toString());
	}
}
