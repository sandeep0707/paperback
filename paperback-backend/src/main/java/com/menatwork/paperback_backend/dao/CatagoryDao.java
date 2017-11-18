package com.menatwork.paperback_backend.dao;

import java.util.List;

import com.menatwork.paperback_backend.dto.Catagory;

public interface CatagoryDao {
      
	public Catagory getBooksByCatagory(int id);
	boolean addBooksCatagory(Catagory catagory);
	boolean deleteBooksCatagory(Catagory catagory);
	boolean updateBooksCatagory(Catagory catagory);
	List<Catagory> catagoryList();
}
