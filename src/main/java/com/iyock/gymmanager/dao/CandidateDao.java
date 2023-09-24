package com.iyock.gymmanager.dao;

import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Candidate;


@Repository
public interface CandidateDao {

	Candidate create(Candidate candidate);
	
	Candidate searchbyId(Integer id);
}
