package com.menatwork.paperback_backend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.menatwork.paperback_backend.dao.CatagoryDao;
import com.menatwork.paperback_backend.dto.Catagory;
 
@Repository("catagoryDao")
@Transactional
public class CatagoryDaoImpl implements CatagoryDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Override
	public List<Catagory> catagoryList() {
		// TODO Auto-generated method stub
		
		String activeCatagory="From Catagory where active= :active ";
		Query query=sessionFactory.getCurrentSession().createQuery(activeCatagory);
		query.setParameter("active", true);
		
		return query.getResultList();
	}

  //getting catagory products
	@Override
	public Catagory getBooksByCatagory(int id) {
		
		return sessionFactory.getCurrentSession().get(Catagory.class, Integer.valueOf(id));
	}

	
	/**
	 * this method add book catagory
	 */
	@Override
	
	public boolean addBooksCatagory(Catagory catagory) {
		// TODO Auto-generated method stub
		
		try{
			sessionFactory.getCurrentSession().persist(catagory);
			return true;
		}
		catch(Exception e){
		e.printStackTrace();
		return false;
		}
	}
       /**
        * this method delete book catagory
        */
	@Override
	public boolean deleteBooksCatagory(Catagory catagory) {
		// TODO Auto-generated method stub
		catagory.setActive(false);
		try{
			sessionFactory.getCurrentSession().update(catagory);
			return true;
		}
		catch(Exception e){
		e.printStackTrace();
		return false;
		}
	}

	/**
	 * this method will update book catagory
	 */
	@Override
	public boolean updateBooksCatagory(Catagory catagory) {
		// TODO Auto-generated method stub
		
		try{
			sessionFactory.getCurrentSession().update(catagory);
			return true;
		}
		catch(Exception e){
		e.printStackTrace();
		return false;
		}
	}  

}
