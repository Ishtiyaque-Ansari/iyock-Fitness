package com.iyock.gymmanager.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.service.AdminService;
import com.iyock.gymmanager.service.UserService;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("AdminPages/AdminLogin");
		return mav;
	}
	
	@PostMapping("login")
	public ModelAndView login(@RequestParam String username, String password) {
        System.out.println("validating user " + username);
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User dbUser = userService.searchByLogin(user);
        System.out.println("dbUser\n" + dbUser);
        if(dbUser != null && dbUser.getId()!= null && dbUser.getId()>0) {
        	return new ModelAndView("redirect:/homepage");
        } else {
        	return new ModelAndView("redirect:../error-page");
        }
	}
	
	@GetMapping("/create")
	public String create() {
		return "AdminPages/AdminCreate";
	}
	
	@PostMapping("/create")
	public ModelAndView create(@ModelAttribute User user) {
		System.out.println(user);
		ModelAndView modelAndView = new ModelAndView();
		User createdUser = userService.create(user);
		createdUser.setPassword(null);
		modelAndView.setViewName("redirect:homepage");
		return modelAndView;	
	}
	
	@GetMapping("/homepage")
	public String homepage() {
		return "AdminPages/HomePage";
	}
	
}
