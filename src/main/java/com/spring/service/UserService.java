package com.spring.service;

import java.util.List;

//import com.spring.beans.Login;
import com.spring.beans.Todo;
//import com.spring.beans.User;

public interface UserService 
{
	void register(Todo todo);

	 int delete(int id);

	 int update(Todo todo);

	 List<Todo> listUsers();
	 
	 List<Todo> json();
	 
	 Todo getUserById(int id);
}
