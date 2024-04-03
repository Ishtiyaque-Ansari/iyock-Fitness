package com.iyock.gymmanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.service.NotificationService;
import com.iyock.gymmanager.serviceimpl.NotificationServiceImpl;


@RestController
public class NotificationController {
	
	@Autowired
	NotificationService service;
	
	@GetMapping("/TestNotification")
	public String notification() {
		System.out.println("TestNotification is invoked");
		User user = new User();
		user.setEmail("ansarimehtab7@gmail.com");
		user.setUsername("mehtabansari");
		user.setFirstName("Mehtab");
		user.setId(123);
		try {
			service.notifyUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "done";
	}

}
