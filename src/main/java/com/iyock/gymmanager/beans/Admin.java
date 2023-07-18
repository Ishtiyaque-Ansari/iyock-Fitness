package com.iyock.gymmanager.beans;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Admin extends User {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String role;//Super Admin, Admin, Trainer
}
