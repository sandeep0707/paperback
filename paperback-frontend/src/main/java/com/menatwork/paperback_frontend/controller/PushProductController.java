package com.menatwork.paperback_frontend.controller;

import java.util.List;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.menatwork.paperback_backend.dao.CatagoryDao;
import com.menatwork.paperback_backend.dao.ProductDao;
import com.menatwork.paperback_backend.dto.Catagory;
import com.menatwork.paperback_backend.dto.Product;

import ch.qos.logback.classic.Logger;

@Controller
@RequestMapping(value="/push")
public class PushProductController {
	 
	public static final org.slf4j.Logger logger=LoggerFactory.getLogger(PushProductController.class);
	@Autowired
	private CatagoryDao catagoryDao;
	
	@Autowired
	private ProductDao productDao;
	
	@RequestMapping(value="/book", method=RequestMethod.GET)
	public ModelAndView pushBook(@RequestParam(value="status" ,required=false)String message){
		ModelAndView mv= new ModelAndView("page");
		Product newProduct=new Product();
		newProduct.setPublisherId(1);
		newProduct.setActive(true);
		mv.addObject("product", newProduct);
		mv.addObject("title", "push");
		mv.addObject("userClickOnPushABook", true);		
		
		if(message!=null){
			if(message.equals("true")){
				mv.addObject("message", "your book is succesfully pushed");
			}
		}
		logger.info(newProduct.toString());
		
		return mv;
	}
	
	//returning catagory list
	@ModelAttribute("catagories")
	public List<Catagory> getCatagoryList(){
		
		return catagoryDao.catagoryList();
	}
	
	@RequestMapping(value = "/product", method=RequestMethod.POST)
	public String handelPushedBook(@ModelAttribute("product")Product mproduct){
		logger.info(mproduct.toString());
		boolean status=productDao.addBook(mproduct);
		System.out.println("status ***********  "+status);
		return "redirect:/push/book?status=true";
	}
	
}
