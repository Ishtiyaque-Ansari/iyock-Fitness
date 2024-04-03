package com.iyock.gymmanager.beans;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;


@Entity
@Table(name="users")
@Inheritance(strategy = InheritanceType.JOINED)
public class User implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	
	private String firstName;
	
	private String lastName;
	
	private String username;
	
	private String phoneNo;
	
	private String email;
	
	private Integer weight;
	
	private Integer height;
	
	private String health;
	
	private String gymTiming;
	
	private String paymentMode;
	
	private String paid;
	
	private String address;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss.SSSX")
	private Date joiningDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;
	
	@Transient
	private Integer age;
	
	private String password;
	
	private String gender;
	
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public String getFullName() {
		return firstName +" "+ lastName;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getHealth() {
		return health;
	}

	public void setHealth(String health) {
		this.health = health;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public Integer getHeight() {
		return height;
	}

	public void setHeight(Integer height) {
		this.height = height;
	}
	
	
	public Integer getAge() {
		LocalDate birthdate = dob.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();

		// Get the current date
		LocalDate currentDate = LocalDate.now();

		// Calculate the period between the birthdate and current date
		Period period = Period.between(birthdate, currentDate);

		// Get the age in years from the period
		int age = period.getYears();

		System.out.println("age: " + age);
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", username=" + username
				+ ", phoneNo=" + phoneNo + ", email=" + email + ", weight=" + weight + ", height=" + height
				+ ", health=" + health + ", address=" + address + ", joiningDate=" + joiningDate + ", dob=" + dob
				+ ", age=" + age + ", password=" + password + ", gender=" + gender + "]";
	}

	public String getGymTiming() {
		return gymTiming;
	}

	public void setGymTiming(String gymTiming) {
		this.gymTiming = gymTiming;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	public String getPaid() {
		return paid;
	}

	public void setPaid(String paid) {
		this.paid = paid;
	}
	
}