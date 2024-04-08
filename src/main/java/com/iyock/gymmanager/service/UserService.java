package com.iyock.gymmanager.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;

@Service
public interface UserService {
	User create(User user);
	User searchByLogin(User user);
	List<User> getAllMembers();
	
}
