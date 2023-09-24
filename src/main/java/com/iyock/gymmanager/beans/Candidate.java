package com.iyock.gymmanager.beans;

import java.util.Set;

import jakarta.persistence.Embeddable;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import com.iyock.gymmanager.type.Package;

@Entity
@Embeddable
public class Candidate extends User {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private Integer age;
	
	private String duration; // 10:00 AM - 12:00PM, 12:00 AM - 14:00PM...... All Day
	
	@OneToMany
	private Set<Fee> fee;
	
	private Package feePackage;
}
