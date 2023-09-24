package com.iyock.gymmanager.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Admin;
import com.iyock.gymmanager.dao.AdminDao;
import com.iyock.gymmanager.repository.AdminRepo;

@Repository
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	AdminRepo adminRepo;

	@Override
	public Admin create(Admin admin) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
