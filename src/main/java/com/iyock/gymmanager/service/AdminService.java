package com.iyock.gymmanager.service;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.Admin;

@Service
public interface AdminService {
	
	Admin create(Admin admin);
	
}
