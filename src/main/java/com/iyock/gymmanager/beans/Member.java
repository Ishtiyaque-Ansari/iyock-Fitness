package com.iyock.gymmanager.beans;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;
import com.iyock.gymmanager.type.Package;

@Data
@Entity
public class Member extends User {

	private Integer balance;
	
	@Enumerated(EnumType.STRING)
	private Status status = Status.ACTIVE; // (Active or Inactive)
	
	private String imageUrl;

	@Enumerated(EnumType.STRING)
	private Package memberShipPackage;
	
}

enum Status {
	ACTIVE, INACTIVE, RESIGNED, OVERDUE
}