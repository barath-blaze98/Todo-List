package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.transaction.annotation.Transactional;

//import com.spring.beans.Login;
import com.spring.beans.Todo;
//import com.spring.beans.User;
import com.spring.dao.UserDAO;


public class UserServiceImpl implements UserService
{
	  @Autowired
	  public UserDAO userDao;

	  public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	public void register(Todo todo) 
	  {
	    userDao.register(todo);
	  }

	@Override
	public int delete(int id) {
		
		return userDao.delete(id);
	}

	@Override
	public int update(Todo todo) {
		
		return userDao.update(todo);
	}

	@Override
	public List<Todo> listUsers() 
	{
		
		return userDao.listUsers();
	}

	@Override
	public Todo getUserById(int id) {
		
		return userDao.getUserById(id);
	}

	
	@Override
	public List<Todo> json() 
	{
		
		return userDao.json();
	}
}

