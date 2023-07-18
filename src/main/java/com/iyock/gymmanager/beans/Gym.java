package com.iyock.gymmanager.beans;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 * @author Ansari Ishtiyaque
 * @description Gym bean
 */
@Entity
public class Gym {
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String name;
	
	private String address;
	
	
	private Date opengym;
}
