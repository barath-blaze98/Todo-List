package com.spring.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
//import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
//import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
//import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

//import com.spring.beans.Login;
import com.spring.beans.Todo;
//import com.spring.beans.User;
//import com.spring.beans.User;



@Repository
public class UserDAOImpl implements UserDAO
{

	
	@Autowired
	DataSource datasource;
	
	@Autowired
	JdbcTemplate template;
	
	//@Autowired
	//NamedParameterJdbcTemplate nTemplate;
	
	
	public void register(Todo todo) 
	{
		
		 String sql = "call insto(?,?,?,?,?,?,?)";
		 
		 template.update(sql, new Object[] {todo.getId(),todo.getTitle(), todo.getWhomtomeet(), todo.getStart(),
		todo.getPurpose(), todo.getLocation() ,LocalDateTime.now()});
		
	}

	@Override
	public int delete(int id)
	{
		
		String sql="call deltodo("+id+")";    
		
	    return template.update(sql);
		
	}


	@Override
	public int update(Todo todo) 
	{
		    String sql="call uptodo('"+todo.getTitle()+"','"+todo.getWhomtomeet()+"' ,'"+todo.getStart()+"' ,'"+todo.getPurpose()+"' ,'"+todo.getLocation()+"' ,"+todo.getId()+")";    
		    return template.update(sql);    
	}

	@Override
	public List<Todo> listUsers() 
	{
		String sql="select id,title,whomtomeet,date_format(start, '%d-%m-%Y') as start,purpose,location,date_format(createddate, '%d-%m-%Y') as createddate from todo";
				
		List<Todo> todos=template.query(sql,new UserMapper());
		return todos;
	}
	
	@Override
	public List<Todo> json() 
	{
		String sql="select id,title,whomtomeet, start, purpose,location,date_format(createddate, '%d-%m-%Y') as createddate from todo";
		List<Todo> todos=template.query(sql,new UserMapper());
		return todos;
	}

	@Override
	public Todo getUserById(int id) 
	{
		String sql="select id,title,whomtomeet,start,purpose,location,date_format(createddate, '%d-%m-%Y') as createddate from todo where id=?";   
	    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Todo>(Todo.class)); 
	}

	
}
	

class UserMapper implements RowMapper<Todo> 
{
	  public Todo mapRow(ResultSet rs, int arg1) throws SQLException 
	  {
	    Todo todo = new Todo();
	    todo.setId(rs.getInt("id"));
	    todo.setTitle(rs.getString("title"));
	    todo.setWhomtomeet(rs.getString("whomtomeet"));
	    todo.setStart(rs.getString("start"));
	    todo.setPurpose(rs.getString("purpose"));
	    todo.setLocation(rs.getString("location"));
	    todo.setCreateddate(rs.getString("createddate"));
	    return todo;
	  }
}


