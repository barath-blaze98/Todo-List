package com.spring.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.json.JSONArray;
//import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.beans.Todo;
//import com.spring.beans.User;
//import com.spring.beans.User;
import com.spring.service.UserService;

@Controller
public class TodoController 
{
	@Autowired
    public UserService userService;
	
	@RequestMapping(value="/todo", method=RequestMethod.GET)
	 public ModelAndView todo()
	{
	  ModelAndView model = new ModelAndView("todo");
	  
	  model.addObject("todo", new Todo());
	  
	  return model;
	 }
	
	@RequestMapping(value="/calender", method=RequestMethod.GET)
	 public ModelAndView cal()
	{
	  ModelAndView model = new ModelAndView("calender");
	  List<Todo> todo = userService.listUsers();
	  model.addObject("todo", todo);
	  return model;
	 }
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	 public ModelAndView list()
	{
	  ModelAndView model = new ModelAndView("list");
	  
	  List<Todo> todo = userService.listUsers();
	  model.addObject("todo", todo);
	  
	  return model;
	 }
	
	@RequestMapping(value="/edit/{id}/list", method=RequestMethod.GET)
	 public String uplist()
	{
	  
		return "redirect:/list";   
	 }
	
	@RequestMapping(value="/listc", method=RequestMethod.GET)
	 public ModelAndView listc()
	{
	  ModelAndView model = new ModelAndView("caldem");
	  
	  List<Todo> todo = userService.listUsers();
	  model.addObject("todo", todo);
	  
	  return model;
	 }
	
	/*@RequestMapping(value="/json", method=RequestMethod.GET)
	 public JSONArray caljson()
	{
	  
		JSONObject obj = new JSONObject();
		
		List<Todo> todo = userService.json();
		
		obj.put("todo", todo);

		JSONArray jArray = obj.getJSONArray("todo");

		//System.out.println(jArray);

		return jArray;
	 }*/
	
	@RequestMapping(value = "/insertTodo", method = RequestMethod.POST)
	  public String addUser(HttpServletRequest request, HttpServletResponse response,
	  @ModelAttribute("todo") Todo todo) 
	{
			  userService.register(todo);
			  
			  return "redirect:/list"; 
	}
	
	@RequestMapping(value="/delete/{id}",method = RequestMethod.GET)        
	public String delete(@PathVariable int id)
	{    
		
	        userService.delete(id);
	        
	        
	        return "redirect:/list";    
	 }  

	@RequestMapping(value="/edit/{id}")    
    public String edit(@PathVariable int id,Model m)
 {    
		 Todo todo= userService.getUserById(id);
		 m.addAttribute("todo", todo); 
         return "edit";
        } 
	 @RequestMapping(value="/edit/{id}/update",method = RequestMethod.POST)    
	    public String update(@ModelAttribute("todo") Todo todo)
	    {    
	        userService.update(todo);
	        
	        return "redirect:/list";    
	    }
}
