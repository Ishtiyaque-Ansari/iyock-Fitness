package com.iyock.gymmanager.repository;

import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Candidate;

@Repository
public interface CandidateRepo extends ListCrudRepository<Candidate, Integer> {
	
}
