package com.xuan.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.NotTransactional;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

import com.xuan.dao.IJpaDao;
import com.xuan.entity.Users;

@ContextConfiguration(locations = { "classpath*:META-INF/spring/applicationContext.xml" })
public class CommonJPATest extends
		AbstractTransactionalJUnit4SpringContextTests {
	@Autowired
	IJpaDao dao;

	@Before
	public void InitUserInfo() {
		// Users user = new Users();
		// user.setUsername("darkxie");
		// dao.persist(user);
	}

	@Test
	@NotTransactional
	public void testFind() {
		 List tmp = new ArrayList();
		 for (int i = 0; i < 124; i++) {
		 Users user = new Users();
		 user.setUsername("用户_" + i);
		 user.setPwd("密码_"+i);
		 tmp.add(user);
		 }
		 dao.persistAll(tmp);
		List ls = dao.find(Users.class);
		for(int i = 0 ;i < ls.size();i++){
			System.out.println(ls.get(i));
			
		}
	}
}
