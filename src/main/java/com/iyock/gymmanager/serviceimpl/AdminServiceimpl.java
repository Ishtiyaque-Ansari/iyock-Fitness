package com.iyock.gymmanager.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.Admin;
import com.iyock.gymmanager.dao.AdminDao;
import com.iyock.gymmanager.service.AdminService;

@Service
public class AdminServiceimpl implements AdminService {

	@Autowired
	AdminDao adminDao;
	
	@Override
	public Admin create(Admin admin) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
