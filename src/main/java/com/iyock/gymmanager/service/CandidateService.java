package com.iyock.gymmanager.service;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.Candidate;

@Service
public interface CandidateService {
	Candidate create(Candidate candidate);

	Candidate searchById(Integer id);
}
