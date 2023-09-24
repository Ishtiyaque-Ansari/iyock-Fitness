package com.iyock.gymmanager.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.Candidate;
import com.iyock.gymmanager.dao.CandidateDao;
import com.iyock.gymmanager.service.CandidateService;

@Service
public class CandidateServiceimpl implements CandidateService{

	@Autowired
	CandidateDao candidateDao;
	
	@Override
	public Candidate create(Candidate candidate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Candidate searchById(Integer id) {
		return candidateDao.searchbyId(id);
	}
	
}
