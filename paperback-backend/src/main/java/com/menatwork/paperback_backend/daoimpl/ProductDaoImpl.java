package com.menatwork.paperback_backend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.menatwork.paperback_backend.dao.ProductDao;
import com.menatwork.paperback_backend.dto.Product;
@Repository("productDao")
@Transactional
public class ProductDaoImpl implements ProductDao {

	
	@Autowired
	private SessionFactory sessionFactory;
	/**
	 * getting pooks by id
	 */
	@Override
	public Product getBook(int id) {
		// TODO Auto-generated method stub
		try{
			return  sessionFactory.getCurrentSession().get(Product.class, Integer.valueOf(id));
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return null;
	}

	 
	@Override
	public boolean addBook(Product product) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().persist(product);
			return true;
		}
		catch(Exception e){
		e.printStackTrace();
		return false;
		}
	}

	@Override
	public boolean deleteBook(Product product) {
		// TODO Auto-generated method stub
		product.setActive(false);
		try{
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception e){
		e.printStackTrace();
		return false;
		}
	}

	@Override
	public boolean updateBook(Product product) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception e){
		e.printStackTrace();
		return false;
		}
	}

	@Override
	public List<Product> bookList() {
		// TODO Auto-generated method stub
		
		
		return sessionFactory.getCurrentSession().createQuery("From Product", Product.class).getResultList();
	}

	@Override
	public List<Product> activeBookList() {
		String activeBooks="From Product where active= :active ";
		Query query=sessionFactory.getCurrentSession().createQuery(activeBooks,Product.class);
		query.setParameter("active", true);
		
		return query.getResultList();
	}

	@Override
	public List<Product> activeBookListByCatagory(int catagoryId) {
		// TODO Auto-generated method stub
		String activeBooks="From Product where active= :active and catagoryId= :catagoryId";
		Query query=sessionFactory.getCurrentSession().createQuery(activeBooks,Product.class);
		query.setParameter("active", true);
		query.setParameter("catagoryId", catagoryId);
		
		return query.getResultList();
	}

	@Override
	public List<Product> getLatestActiveBookList(int count) {
		String activeBooks="From Product where active= :active order by id";
		Query query=sessionFactory.getCurrentSession().createQuery(activeBooks,Product.class);
		query.setParameter("active", true);
		query.setFirstResult(0);
		query.setMaxResults(count);
		return query.getResultList();
	}


	@Override
	public List<Product> getBookByCode(String code) {
		String activeBooks="From Product where code= :code ";
		Query query=sessionFactory.getCurrentSession().createQuery(activeBooks,Product.class);
		query.setParameter("code", code);
	
		return query.getResultList();
	}

}
