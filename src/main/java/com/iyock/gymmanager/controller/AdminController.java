package com.iyock.gymmanager.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.Member;
import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.service.AdminService;
import com.iyock.gymmanager.service.MemberService;
import com.iyock.gymmanager.service.NotificationService;
import com.iyock.gymmanager.service.UserService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	NotificationService notificationService;

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
        	return new ModelAndView("redirect:/Admin/homepage");
        } else {
        	return new ModelAndView("redirect:/Admin/login");
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
		modelAndView.addObject("loginType", "Admin");
		modelAndView.addObject("createdUser", createdUser);
		modelAndView.setViewName("redirect:homepage");
		return modelAndView;	
	}
	
	@PostMapping("/memberCreate")
	public ModelAndView create(@ModelAttribute Member member) {
		System.out.println(member);
		member.setUsername((member.getFirstName()+member.getLastName()).toLowerCase());
		ModelAndView modelAndView = new ModelAndView();
		Member createdMember = memberService.create(member);
//		createdMember.setPassword(null);
		System.out.println("memberCreate before if"+createdMember);
		if(createdMember.getId() != null || createdMember.getStatus()!=null) {
			System.out.println("memberCreate inside if");
			notificationService.notifyMember(createdMember);
			modelAndView.addObject("id", createdMember.getId());
			modelAndView.addObject("username", createdMember.getUsername());
			modelAndView.setViewName("redirect:homepage");//TODO rename page name and api
			System.out.println("memberCreate is done inside if: "+ modelAndView);
		}else {
			modelAndView.setViewName("redirect:error-page");
			modelAndView.addObject("message", "User object not generated properly" + createdMember);
			System.out.println("User object not generated properly" + createdMember);
		}
		return modelAndView;
	}
	
	@GetMapping("/homepage")
	public ModelAndView homepage() {
		System.out.println("entering homepage test");
		ModelAndView modelAndView = new ModelAndView();
		List<Member> members = memberService.getAllMembers();
		members.forEach(System.out::println);
		modelAndView.addObject("memberList", members);
		modelAndView.setViewName("/AdminPages/HomePage");
		return modelAndView;
	}
	
	@GetMapping("/membership")
	public ModelAndView membership() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("createUrl", "/Admin/memberCreate");
		modelAndView.addObject("loginType", "Member");
		modelAndView.setViewName("/pages/Admission");
		return modelAndView;
	}
	
	
	
	@GetMapping("trainer")
	public String trainer() {
		return "AdminPages/Trainer";
	}
}
