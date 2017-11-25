package com.menatwork.paperback_frontend.controller;

import javax.validation.Valid;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.menatwork.paperback_backend.dao.UserDao;
import com.menatwork.paperback_backend.dto.User;

import ch.qos.logback.classic.Logger;

@Component
@RequestMapping(value="/join")
public class UserController {
	
	private static Logger logger=(Logger) LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping(value="/login")
	public ModelAndView login(@RequestParam(value=("status") ,required=false) String message,@RequestParam(value=("error") ,required=false)String error){
		ModelAndView mv=new ModelAndView("login");
		mv.addObject("title", "login");
          logger.info("inside login ");
		if(message!=null){
			if(message.equals("true")){
				mv.addObject("message", "you succesfully joined in paperback family! please login");
			}	
		}
		System.out.println(error);

		if(error!=null){
			System.out.println(error);
		}
		return mv;
		
	}
	@RequestMapping(value="/register")
	public ModelAndView register(){
		ModelAndView mv=new ModelAndView("register");
		User user =new User();
		user.setRole("USER");
		mv.addObject("user", user);
		mv.addObject("title", "register");
		
		return mv;
	}
	
	@RequestMapping(value="/user", method=RequestMethod.POST)
	public String mRegister(@Valid @ModelAttribute("user")User user ,BindingResult result,Model model) {
		
		logger.info(user.toString()+result.hasErrors());
	
		
		if(result.hasErrors()){
			model.addAttribute("message", "please fill valide details");
			model.addAttribute("title","register");
			model.addAttribute("error", true);
			return "register";
			
		}
		
		
		if(user.getId()==0){
			//password encoding
			user.setPassword(passwordEncoder.encode(user.getPassword()));
			user.setRole("USER");
			userDao.registerUser(user);
		}
		else{
			//update 
		}
		
		
		
		return "redirect:/join/login?status=true";
	}
	
	
}
