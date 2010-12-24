package com.xuan.comm.util;

public class TestObj {
	private long ids;
	private String name;
	private int age;

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
}
