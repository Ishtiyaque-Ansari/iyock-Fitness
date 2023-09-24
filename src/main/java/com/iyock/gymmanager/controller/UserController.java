package com.iyock.gymmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.Candidate;
import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.service.CandidateService;
import com.iyock.gymmanager.service.UserService;

@Controller
@RequestMapping("/User")
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	CandidateService candidateService;
	
	@PostMapping("/create")
	public ModelAndView create(@ModelAttribute User user) {
		System.out.println(user);
		ModelAndView modelAndView = new ModelAndView();
		User createdUser = userService.create(user);
		createdUser.setPassword(null);
		modelAndView.addObject("loginType", "Candidate");
		modelAndView.setViewName("redirect:/index");
		return modelAndView;	
	}
	
	@GetMapping("/login")
	public ModelAndView candidateLogin() {
		ModelAndView mav = new ModelAndView(); // Your method logic here
		mav.addObject("loginType", "Candidate");
		mav.setViewName("pages/login");
		return mav;
	}
	
	@PostMapping("/login")
	public ModelAndView login(@RequestParam String username, String password) {
        System.out.println("validating user " + username);
        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        User dbUser = userService.searchByLogin(user);
        System.out.println("dbUser\n" + dbUser);
        if(dbUser != null && dbUser.getId()!= null && dbUser.getId()>0) {
        	return new ModelAndView("redirect:/index");
        } else {
        	return new ModelAndView("redirect:../error-page");
        }
	}
	
	@PostMapping("/fetchCandidate") @ResponseBody
	public ResponseEntity<Candidate> fetchCandidate(@RequestBody Integer id) {
		Candidate candidate = candidateService.searchById(id);
		return ResponseEntity.ok(candidate);

	}
	
	
}
