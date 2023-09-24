package com.iyock.gymmanager.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.User;

import jakarta.persistence.NamedQuery;

@Repository
public interface UserRepo extends CrudRepository<User, Integer> {
 
	User findByUsernameAndPassword(String username, String password);
}