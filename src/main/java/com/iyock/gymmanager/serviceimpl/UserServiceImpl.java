package com.iyock.gymmanager.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.dao.UserDao;
import com.iyock.gymmanager.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	@Override
	public User create(User user) {
		// TODO Auto-generated method stub
		return userDao.create(user);
	}

}
