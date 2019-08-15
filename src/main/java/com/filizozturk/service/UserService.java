package com.filizozturk.service;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.filizozturk.dao.UserDAO;
import com.filizozturk.entity.User;

@Service
@Transactional


public class UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	public Long createUser(User user, HttpServletRequest request) {
		return userDAO.insert(user);
		
	}
	
	public ArrayList<User> getAll(){
		return userDAO.getAll();
	}
}