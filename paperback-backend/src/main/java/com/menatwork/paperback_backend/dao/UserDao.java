package com.menatwork.paperback_backend.dao;

import com.menatwork.paperback_backend.dto.Cart;
import com.menatwork.paperback_backend.dto.User;

public interface UserDao {
          //add a user
      boolean registerUser(User user);
      User getUserByEmail(String email);
      //add a cart
      boolean updateCart(Cart cart);
     
      
 
}
