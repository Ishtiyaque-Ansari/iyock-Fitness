package com.iyock.gymmanager.dao;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;

@Service
public interface UserDao {

	User create(User user);
	
}
