package com.menatwork.paperback_backend.test;

import static org.junit.Assert.assertEquals;

import java.sql.SQLException;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.menatwork.paperback_backend.dao.CatagoryDao;
import com.menatwork.paperback_backend.dto.Catagory;

public class CatagoryTestCase {
 
	private static AnnotationConfigApplicationContext context;
	
	private static CatagoryDao catagoryDao;
	private Catagory catagory;
	@BeforeClass
	public static void init(){
		context=new AnnotationConfigApplicationContext();
		context.scan("com.menatwork.paperback_backend");
		context.refresh();
		catagoryDao=(CatagoryDao)context.getBean("catagoryDao");
		
		
	}
	
	/*@Test
	public void testAddCatagory(){
		
		 catagory=new Catagory();
		catagory.setImageURL("slide.jpg");
		catagory.setActive(true);
		catagory.setName("java aaaaaj2se");
		catagory.setDescription("core aaaajava");	
		
		assertEquals("done",true,catagoryDao.addBooksCatagory(catagory));
		}*/
	@Test
	public void testCrudCatagory(){
		 catagory=new Catagory();
			catagory.setImageURL("slide.jpg");
			catagory.setActive(true);
			catagory.setName("dd aaaaaj2se");
			catagory.setDescription("core aaaajava");	
			
			assertEquals("done",true,catagoryDao.addBooksCatagory(catagory));
			
			
		 catagory=catagoryDao.getBooksByCatagory(3);
		 assertEquals("done",true,catagoryDao.updateBooksCatagory(catagory));
		
		assertEquals("done",5,catagoryDao.catagoryList().size());
		}
}
