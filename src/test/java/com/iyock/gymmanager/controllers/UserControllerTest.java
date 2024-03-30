package com.iyock.gymmanager.controllers;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.web.servlet.ModelAndView;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.controller.UserController;
import com.iyock.gymmanager.service.UserService;

@ExtendWith({SpringExtension.class})
public class UserControllerTest {

	@InjectMocks
	UserController userController;
	
	@Mock
	UserService userService;
	
	@Test
	public void testPageName_Success() {
		ResponseEntity<String> pageName = userController.getPageName("user");
		assertEquals(pageName.getBody(), "user is Success");
	}
	
	@Test
	public void testCreate_Success() {
		User user = new User();
		user.setFirstName("Mehtab");
		user.setLastName("Ansari");
		user.setUsername("mehtabansari");
		user.setPassword("12341234");
		
		User returnUser = new User();
		returnUser.setId(1);
		returnUser.setFirstName("Mehtab");
		returnUser.setLastName("Ansari");
		returnUser.setUsername("mehtabansari");
		returnUser.setPassword("12341234");
		
		when(userService.create(any(User.class))).thenReturn(returnUser);
		ModelAndView mav = userController.create(user);
		assertEquals(mav.getModel().get("loginType"), "Candidate");
		assertEquals(((User)mav.getModel().get("createdUser")).getId(), 1);
		assertNull(((User)mav.getModel().get("createdUser")).getPassword());
		assertEquals(((User)mav.getModel().get("createdUser")).getUsername(), "mehtabansari");
	}
	
	
}
