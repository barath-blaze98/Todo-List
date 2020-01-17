package com.spring.dao;


import java.util.List;


import com.spring.beans.Todo;



public interface UserDAO 
{
 void register(Todo todo);
 
 Todo getUserById(int id);
 
 int delete(int id);

 int update(Todo todo);
 
 List<Todo> listUsers();
 
  List<Todo> json();

}
