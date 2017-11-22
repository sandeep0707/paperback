package com.menatwork.paperback_frontend.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.menatwork.paperback_backend.dao.CatagoryDao;
import com.menatwork.paperback_backend.dao.ProductDao;
import com.menatwork.paperback_backend.dto.Catagory;
import com.menatwork.paperback_backend.dto.Product;

@Controller
public class PageController {
	private static final Logger logger = LoggerFactory.getLogger(PageController.class);
	@Autowired
	private CatagoryDao catagoryDao;
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView index(){
		logger.info("inside page controller home page");
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "home");
		mv.addObject("products",productDao.getLatestActiveBookList(6));
		mv.addObject("catagories", catagoryDao.catagoryList());
		mv.addObject("userClickHome", true);
		return mv;
		
	}
	@RequestMapping(value="/about")
	public ModelAndView about(){
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "About Us ");
		mv.addObject("userClickAbout", true);
		return mv;
		
	}
	
	@RequestMapping(value="/contact")
	public ModelAndView contact(){
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
		
	}
	
	/*
	 * 
	 * gettig user selected catagory
	 */
	@RequestMapping(value="/{id}/catagory")
	public ModelAndView viewSelectedCatagory(@PathVariable("id")int id){
		
		ModelAndView mv=new ModelAndView("page");
		
		//get the books by catagory
		Catagory catagory=null;
		catagory=catagoryDao.getBooksByCatagory(id);
		mv.addObject("catagory", catagory);
		mv.addObject("catagories", catagoryDao.catagoryList());
		mv.addObject("products" ,productDao.activeBookListByCatagory(id));
		mv.addObject("title", catagory.getName());
		mv.addObject("userClickCatagor", true);
		return mv;
		
	}
	/**
	 * getting user selected product
	 * @return 
	 */
	
	@RequestMapping(value="/{code}/{id}/view")
	public  ModelAndView viewSelectedProduct(@PathVariable("id") int id){
		
		ModelAndView mv=new ModelAndView("page");
		
		//get the books by catagory
		Product product=null;
		        product=productDao.getBook(id);
		       int views= product.getViews();
		       product.setViews(views+1);
		       productDao.updateBook(product);
		       
		       product=productDao.getBook(id);
		mv.addObject("product", product);
		mv.addObject("catagories", catagoryDao.catagoryList());
		mv.addObject("title", product.getName());
		mv.addObject("userClickOnBook", true);
		return mv;
		
	}
	@RequestMapping(value="/login")
	public ModelAndView login(){
		ModelAndView mv=new ModelAndView("login");
		return mv;
		
	}
	
	
}
