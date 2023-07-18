package com.iyock.gymmanager.beans;

import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Trainer extends Admin {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private Float biceps;
	
	private Float chest;
	
	private Set<String> certificate;
	
	private String description;
}
