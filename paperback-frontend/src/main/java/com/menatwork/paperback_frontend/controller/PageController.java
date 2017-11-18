package com.menatwork.paperback_frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.menatwork.paperback_backend.dao.CatagoryDao;
import com.menatwork.paperback_backend.dto.Catagory;

@Controller
public class PageController {
	@Autowired
	private CatagoryDao catagoryDao;

	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "home");
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
		
	}@RequestMapping(value="/contact")
	public ModelAndView contact(){
		ModelAndView mv=new ModelAndView("page");
		mv.addObject("title", "Contact Us");
		mv.addObject("userClickContact", true);
		return mv;
		
	}
	@RequestMapping(value="/{id}")
	public ModelAndView viewSelectedCatagory(@PathVariable("id")int id){
		
		ModelAndView mv=new ModelAndView("page");
		
		//get the books by catagory
		Catagory catagory=null;
		catagory=catagoryDao.getBooksByCatagory(id);
		mv.addObject("catagory", catagory);
		mv.addObject("catagories", catagoryDao.catagoryList());
		mv.addObject("title", catagory.getName());
		mv.addObject("userClickCatagoryBooks", true);
		return mv;
		
	}
	
}
