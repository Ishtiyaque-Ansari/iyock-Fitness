package com.iyock.gymmanager.daoimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Candidate;
import com.iyock.gymmanager.dao.CandidateDao;
import com.iyock.gymmanager.repository.CandidateRepo;

@Repository
public class CandidateDaoimpl implements CandidateDao {

	@Autowired
	CandidateRepo candidateRepo;
	
	@Override
	public Candidate create(Candidate candidate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Candidate searchbyId(Integer id) {
		return candidateRepo.findById(id).get();
	}
	
}
