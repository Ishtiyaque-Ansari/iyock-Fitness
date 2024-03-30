package com.iyock.gymmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.service.NotificationService;
import com.iyock.gymmanager.service.UserService;
import com.iyock.gymmanager.serviceimpl.NotificationServiceImpl;

@Controller
public class HomeController {

	@Autowired
	UserService userService;

	@GetMapping("createOne")
	public String createOne() {
		return "pages/CreateOne";
	}

	@GetMapping({"/","/index"})
	public String index() {
		return "index";
	}

	@GetMapping("/error-page")
	public String error() {
		return "pages/error";
	}

	@GetMapping("/About-us")
	public String about() {
		return "pages/About-us";
	}

	@GetMapping("/Gallery")
	public String gallery() {
		return "pages/Gallery";
	}

	@GetMapping("/Contact-us")
	public String contact() {
		return "pages/Contact-us";
	}

	@GetMapping("/Admission")
	public ModelAndView admission() {
		ModelAndView mav = new ModelAndView(); // Your method logic here
		mav.addObject("createUrl", "/Member/create");
		mav.addObject("loginType", "Candidate");//TODO maybe removed
		mav.setViewName("pages/Admission");
		return mav;
	}
	
}