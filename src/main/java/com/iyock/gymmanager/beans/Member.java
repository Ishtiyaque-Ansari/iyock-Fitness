package com.iyock.gymmanager.beans;

import com.iyock.gymmanager.type.Package;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.Data;

@Data
@Entity
public class Member extends User {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer balance;
	
	@Enumerated(EnumType.STRING)
	private Status status = Status.ACTIVE; // (Active or Inactive)
	
	private String imageUrl;

	@Enumerated(EnumType.STRING)
	private Package memberShipPackage;
	
	@Override
	public String toString() {
		return super.toString() + "\nMember [balance=" + balance + ", status=" + status + ", imageUrl=" + imageUrl + ", memberShipPackage="
				+ memberShipPackage + "]";
	}
	
	
	
	
}

enum Status {
	ACTIVE, INACTIVE, RESIGNED, OVERDUE
}
