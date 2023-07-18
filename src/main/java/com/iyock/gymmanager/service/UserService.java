package com.iyock.gymmanager.service;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;

@Service
public interface UserService {
	User create(User user);
}
