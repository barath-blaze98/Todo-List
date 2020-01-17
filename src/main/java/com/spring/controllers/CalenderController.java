package com.spring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.spring.beans.Todo;

import com.spring.service.UserService;

@RestController
public class CalenderController 
{
	@Autowired
    public UserService userService;
	
	
	@GetMapping("/todocal")
	public ResponseEntity<List<Todo>> GetJson()
	{
		 List<Todo> todo= userService.json();
		
		return ResponseEntity.ok().body(todo);
	}
}
