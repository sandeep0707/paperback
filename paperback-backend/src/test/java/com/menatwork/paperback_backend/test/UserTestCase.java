package com.menatwork.paperback_backend.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.menatwork.paperback_backend.dao.UserDao;
import com.menatwork.paperback_backend.dto.Cart;
import com.menatwork.paperback_backend.dto.User;

public class UserTestCase {
	private static AnnotationConfigApplicationContext context;
	private User user=null;
	private Cart cart=null;
	private static UserDao userDao;
	@BeforeClass
	public static void init(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com.menatwork.paperback_backend");
		context.refresh();
		userDao=(UserDao) context.getBean("userDao");
	}
	@Test
	public void doTest(){
		
		user=new User();
		user.setContactNumber("123456789");
		user.setEmail("sandeep@gmail.com");
		user.setFirstName("san");
		user.setLastName("kolpi");
		user.setPassword("1243");
		user.setRole("admin");
		
/*	User user=	userDao.getUserByEmail("sandeep@gmail.com");
	Cart cart=user.getCart();
	cart.setBookAction("read");
	cart.setBookCode("abc");*/
		assertEquals("failed",true,userDao.registerUser(user));
		
		

	}
	
}
