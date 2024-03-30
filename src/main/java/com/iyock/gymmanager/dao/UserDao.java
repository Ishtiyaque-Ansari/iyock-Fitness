package com.iyock.gymmanager.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;

@Service
public interface UserDao {

	User create(User user);
	
	User searchByLogin(User user);
	
	List<User> getAllMembers();
	
	
}
