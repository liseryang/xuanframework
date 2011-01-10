package com.xuan.service.tag;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

@ContextConfiguration(locations = { "classpath*:META-INF/spring/applicationContext.xml" })
public class TagServiceInterfaceTest extends
		AbstractTransactionalJUnit4SpringContextTests {

	@Autowired
	TagServiceInterface tsi;

	@Test
	public void getPagination() {
		System.out.println(tsi.getPagination("from Users", null, 10, 1));
	}

	@Test
	public void findQueryInfoById() {
		System.out.println(tsi.getPagination("from Users", null, 10, 1));
	}

}
