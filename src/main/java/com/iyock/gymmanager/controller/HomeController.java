package com.iyock.gymmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.service.UserService;

@Controller
public class HomeController {

	@Autowired
	UserService userService;
	
	@GetMapping("/adminLogin")
	public ModelAndView adminLogin( ) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginType", "Admin");
		mav.setViewName("pages/login");
		return mav;
	}
	
	@PostMapping("/create")
	public ModelAndView create(@ModelAttribute User user) {
		System.out.println(user);
		ModelAndView modelAndView = new ModelAndView();
		User createdUser = userService.create(user);
		if(createdUser!= null) {
			modelAndView.addObject("loginType", "Candidate");
			modelAndView.setViewName("pages/login");
		} else {
			System.err.println("user couldn`t be craeted");
			modelAndView.setViewName("pages/error");
		}
		return modelAndView; 			
	}
	
	@GetMapping({"/login"})
	public ModelAndView candidateLogin( ) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginType", "Candidate");
		mav.setViewName("pages/login");
		return mav;
	}
	
	@GetMapping("/createOne")
	public String createOne( ) {
		return "pages/CreateOne";
	}
	
}