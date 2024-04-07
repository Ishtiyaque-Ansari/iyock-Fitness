package com.iyock.gymmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.Member;
import com.iyock.gymmanager.service.MemberService;
import com.iyock.gymmanager.service.NotificationService;
import com.iyock.gymmanager.service.UserService;

@RestController
@RequestMapping("/Member")
public class MemberController {

	@Autowired
	UserService userService;

	@Autowired
	MemberService memberService;

	@Autowired
	NotificationService notificationService;

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@PostMapping("/create")
	public ModelAndView createMember(@ModelAttribute Member member) {
		System.out.println(member);
		member.setUsername((member.getFirstName()+member.getLastName()).toLowerCase());
		member.setPassword((member.getFirstName()+ member.getAge()).toLowerCase());
		ModelAndView modelAndView = new ModelAndView();
		Member createdMember = memberService.create(member);
//		createdMember.setPassword(null);
		System.out.println("memberCreate before if" + createdMember);
		if (createdMember.getId() != null || createdMember.getStatus() != null) {
			notificationService.notifyMember(createdMember);
			modelAndView.addObject("id", createdMember.getId());
			modelAndView.addObject("username", createdMember.getUsername());
			if(member.getPaymentMode() != null && member.getPaymentMode().equals("2")) {
				modelAndView.addObject("paymentAmount", member.getMemberShipPackage().getPrice());
				modelAndView.setViewName("redirect:/onlinepayment");
			} else {
				modelAndView.setViewName("redirect:/error-page");
				// TODO rename page name and api
				modelAndView.addObject("message", "select Payment Online");
			}
		} else {
			modelAndView.setViewName("redirect:error-page");
			modelAndView.addObject("message", "User object not generated properly" + createdMember);
		}
		return modelAndView;
	}
}
