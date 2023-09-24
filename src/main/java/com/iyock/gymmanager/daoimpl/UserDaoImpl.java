package com.iyock.gymmanager.daoimpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.User;
import com.iyock.gymmanager.dao.UserDao;
import com.iyock.gymmanager.repository.UserRepo;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	UserRepo userRepo;
	
	@SuppressWarnings("finally")
	public static Connection getDBConnection() {
		Connection con = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/gym-ui","root","admin");  
		}
		catch(SQLException  e) {
			e.printStackTrace();
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		finally {
			System.out.println("");
			return con;
		}
	}

	@Override
	public User create(User user) {
		return userRepo.save(user);
	}
	
	@Override
	public User searchByLogin(User user) {
		return userRepo.findByUsernameAndPassword(user.getUsername(), user.getPassword());
	}

}
