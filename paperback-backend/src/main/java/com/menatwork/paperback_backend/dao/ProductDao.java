package com.menatwork.paperback_backend.dao;

import java.util.List;

import com.menatwork.paperback_backend.dto.Product;

public interface ProductDao {
   Product getBook(int id);
	boolean addBook(Product product);
	boolean deleteBook(Product product);
	boolean updateBook(Product product);
	List<Product> bookList();
	
	
	//business methods
	List<Product> getBookByCode(String code);

	List<Product> activeBookList();
	List<Product> activeBookListByCatagory(int catagoryId);
	List<Product> getLatestActiveBookList(int count);
	
}
