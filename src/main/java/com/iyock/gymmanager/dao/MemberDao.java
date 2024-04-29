package com.iyock.gymmanager.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Member;

@Repository
public interface MemberDao {
	
	Member getMember(Integer id);
	
	List<Member> getAllMembers();
	
	Member create(Member member);
	
	void deleteById(Integer id);
	
	Member update(Member member);
}
