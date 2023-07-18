package com.iyock.gymmanager.beans;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class Fee {
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private Integer totalAmount;//400
	
	private Integer pendingAmount;//100
	
	private Integer paidAmount;//300
	
	private Date payingDate;
	
	private String month;//Jan
	
	private String year;
}
