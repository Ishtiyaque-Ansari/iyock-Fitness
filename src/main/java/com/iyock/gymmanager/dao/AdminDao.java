package com.iyock.gymmanager.dao;

import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Admin;

@Repository
public interface AdminDao {
	
	Admin create(Admin admin);
}
