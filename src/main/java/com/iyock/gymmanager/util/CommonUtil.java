package com.iyock.gymmanager.util;

import java.time.LocalDate;
import java.time.Period;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class CommonUtil {
	public int CreateAge(String birthdateString) {

		// Parse the birthdate string to a LocalDate object
		LocalDate birthdate = LocalDate.parse(birthdateString.split(" ")[0]);

		// Get the current date
		LocalDate currentDate = LocalDate.now();

		// Calculate the period between the birthdate and current date
		Period period = Period.between(birthdate, currentDate);

		// Get the age in years from the period
		int age = period.getYears();
		System.out.println("age: " + age);
		return age;
	}

	public static String getJson(Object object) {
		ObjectMapper objectMapper = new ObjectMapper();
		String memberJson = "";
		try {
			memberJson = objectMapper.writeValueAsString(object);
			System.out.println("object: " + memberJson);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			System.err.println(e.getMessage());
		}
		return memberJson;
	}

}
