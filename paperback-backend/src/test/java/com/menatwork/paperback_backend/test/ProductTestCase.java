package com.menatwork.paperback_backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.menatwork.paperback_backend.dao.ProductDao;
import com.menatwork.paperback_backend.dto.Product;

public class ProductTestCase {
	private static AnnotationConfigApplicationContext context;
	private Product product;
	private static ProductDao productDao;
	@BeforeClass
	public static void init(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com.menatwork.paperback_backend");
		context.refresh();
		productDao=(ProductDao) context.getBean("productDao");
	}
	
	@Test
	public void testProducts(){
		product=new Product();
		assertEquals("done",1,productDao.getBookByCode("PRDABC123BOOK").get(1).getId());
	}
}
