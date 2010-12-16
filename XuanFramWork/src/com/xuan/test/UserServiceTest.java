package com.xuan.test;

import org.junit.Test;
import org.springframework.test.annotation.NotTransactional;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;

import com.xuan.service.tag.TagServiceInterface;

@ContextConfiguration(locations = { "classpath*:META-INF/spring/applicationContext.xml" })
public class UserServiceTest extends
		AbstractTransactionalJUnit4SpringContextTests {
	// @Autowired
	// IUserService userService;

	@Test
	// @BeforeTransaction
	// @AfterTransaction
	@NotTransactional
	public void testUserOp() {
		// System.out.println(this.applicationContext
		// .getBean("userService"));
		// IUserService userService = (IUserService) this.applicationContext
		// .getBean("userService");
//		System.out.println("====================");
		// userService.addUser("999999", "xie", "ping");
		// userService.addUser("000000", "xie1", "ping1");
		// System.out.println(userService.findUserInfoByNameAndPwd("xie",
		// "ping"));

		TagServiceInterface tsi = (TagServiceInterface) this.applicationContext
				.getBean("tagService");

		System.out.println(tsi.getPagination("from Users", null, 10, 1));
		
		

		// UriTemplate template = new UriTemplate(
		// " http://example.com/hotels/{hotel}/bookings/{booking}");
		// System.out.println(template
		// .match(" http://example.com/hotels/1/bookings/42"));

	}
}
