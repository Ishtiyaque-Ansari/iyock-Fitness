package com.iyock.gymmanager.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Candidate;

@Repository
public interface CandidateRepo extends CrudRepository<Candidate, Integer> {
	
}
