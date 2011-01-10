package com.xuan.dao;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
import org.springframework.test.context.transaction.AfterTransaction;
import org.springframework.test.context.transaction.BeforeTransaction;

@ContextConfiguration(locations = { "classpath*:META-INF/spring/applicationContext.xml" })
public class IJpaDaoTest extends AbstractTransactionalJUnit4SpringContextTests {
	@Autowired
	IJpaDao dao;

	// @Autowired
	// private UserRoleServiceImpl userRoleService;
	// @Resource
	// private UserItemService userItemService;
	// @Resource
	// private IDeptService deptService;

	@Before
	public void testBefore() {
		System.out.println("**************before*********************");
	}

	@After
	public void testAfter() {
		System.out.println("**************after***********************");
	}

	@Test
	public void SS() {
		System.out.println("))))))))))))))))))");
	}

	@Test
	public void testGetUserDepShipByRoleID() {
		// List<UserRloeShip> list = userRoleService.getUserDepShipByRoleID(1);
		// System.out.println(list.size());
	}

	@Test
	@Rollback(true)
	public void testDoSave() {
		// UserItem udo = new UserItem();
		// DeptDO dept = deptService.getDeptByID(10573);
		// udo.setUserItemId(10842);
		// udo.setUserItemBirthday("2008-08-08");
		// udo.setUserItemLoginname("hehe");
		// udo.setUserItemMail("zzx19452008@163.com");
		// udo.setUserItemMobile("135***");
		// udo.setUserItemName("周智祥");
		// udo.setUserItemPassword("zzx");
		// userItemService.doSave2(udo);
	}

	@BeforeTransaction
	public void beforeTransaction() {
		System.out.println("******beforeTransaction*****");
	}

	@AfterTransaction
	public void afterTransaction() {
		System.out.println("*******afterTransaction*******");
	}

}
