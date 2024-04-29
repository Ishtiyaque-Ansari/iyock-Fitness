package com.iyock.gymmanager.serviceimpl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.Member;
import com.iyock.gymmanager.dao.MemberDao;
import com.iyock.gymmanager.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao;
	
	@Override
	public List<Member> getAllMembers() {
		// TODO Auto-generated method stub
		return memberDao.getAllMembers();
	}

	@Override
	public Member create(Member member) {
		// TODO Auto-generated method stub
		return memberDao.create(member);
	}

	@Override
	public void delete(Integer id) {
		memberDao.deleteById(id);
	}

	@Override
	public Member update(Member member) {
		Member dbMember = memberDao.getMember(member.getId());
		BeanUtils.copyProperties(member, dbMember, "password", "joiningDate", "age", "dob", "image");
		return memberDao.update(dbMember);
	}
	
}
