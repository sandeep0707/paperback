package com.menatwork.paperback_frontend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.menatwork.paperback_backend.dao.ProductDao;
import com.menatwork.paperback_backend.dto.Product;

@Controller
@RequestMapping(value="/json/data")
public class JsonDataController {
	@Autowired
	private ProductDao ProductDao;

	@RequestMapping(value="/{bookCode}")
	@ResponseBody
	public Product getproducts(@PathVariable int bookCode){
		    
		return null;
		
	}
}
