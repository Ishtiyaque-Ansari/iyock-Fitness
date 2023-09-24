package com.iyock.gymmanager.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Admin;

@Repository
public interface AdminRepo extends CrudRepository<Admin, Integer> {
	
}
