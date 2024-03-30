package com.iyock.gymmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.Member;
import com.iyock.gymmanager.service.MemberService;
import com.iyock.gymmanager.service.NotificationService;
import com.iyock.gymmanager.service.UserService;

@RestController("/Member")
public class MemberController {

	@Autowired
	UserService userService;

	@Autowired
	MemberService memberService;

	@Autowired
	NotificationService notificationService;

	@PostMapping("/create")
	public ModelAndView createMember(@ModelAttribute Member member) {
		System.out.println(member);
		ModelAndView modelAndView = new ModelAndView();
		Member createdMember = memberService.create(member);
//		createdMember.setPassword(null);
		System.out.println("memberCreate before if" + createdMember);
		if (createdMember.getId() != null || createdMember.getStatus() != null) {
			notificationService.notifyUser(createdMember);
			modelAndView.addObject("id", createdMember.getId());
			modelAndView.addObject("username", createdMember.getUsername());
			modelAndView.setViewName("redirect:index");// TODO rename page name and api
		} else {
			modelAndView.setViewName("redirect:error-page");
			modelAndView.addObject("message", "User object not generated properly" + createdMember);
		}
		return modelAndView;
	}
}