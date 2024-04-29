package com.iyock.gymmanager.daoimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Member;
import com.iyock.gymmanager.dao.MemberDao;
import com.iyock.gymmanager.repository.MemberRepo;

@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	MemberRepo memberRepo;

	public List<Member> getAllMembers() {
		return memberRepo.findAll();

	}

	@Override
	public Member create(Member member) {
		// TODO Auto-generated method stub
		return memberRepo.save(member);
	}

	@Override
	public void deleteById(Integer id) {
		// TODO Auto-generated method stub
		memberRepo.deleteById(id);
	}

	@Override
	public Member update(Member member) {
		// TODO Auto-generated method stub
		return memberRepo.save(member);
	}

	@Override
	public Member getMember(Integer id) {
		// TODO Auto-generated method stub
		return memberRepo.findById(id).get();
	}

}
