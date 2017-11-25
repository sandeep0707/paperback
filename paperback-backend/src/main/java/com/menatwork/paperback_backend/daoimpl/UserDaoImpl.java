package com.menatwork.paperback_backend.daoimpl;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.menatwork.paperback_backend.dao.UserDao;
import com.menatwork.paperback_backend.dto.Cart;
import com.menatwork.paperback_backend.dto.Product;
import com.menatwork.paperback_backend.dto.User;

@Repository("userDao")
@Transactional
public class UserDaoImpl implements UserDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public boolean registerUser(User user) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().persist(user);
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	/**
	 * get user by email address
	 * 
	 */
	@Override
	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		String selectQuery = "FROM User WHERE email = :email";
		try {
		return sessionFactory
				.getCurrentSession()
					.createQuery(selectQuery,User.class)
						.setParameter("email",email)
							.getSingleResult();
		}
		catch(Exception ex) {
			return null;
		}
	}

	@Override
	public boolean updateCart(Cart cart) {
		// TODO Auto-generated method stub
		try{
			sessionFactory.getCurrentSession().persist(cart);

		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	
}
