package com.iyock.gymmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import com.iyock.gymmanager.service.UserService;

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
	public String admission() {
		return "pages/Admission";
	}
	
}