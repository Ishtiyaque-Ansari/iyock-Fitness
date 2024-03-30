package com.iyock.gymmanager.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.iyock.gymmanager.beans.Member;

@Service
public interface MemberService {
	List<Member> getAllMembers();

	Member create(Member member);
}
