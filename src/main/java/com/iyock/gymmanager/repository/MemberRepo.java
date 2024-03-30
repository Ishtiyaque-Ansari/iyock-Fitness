package com.iyock.gymmanager.repository;

import org.springframework.data.repository.ListCrudRepository;
import org.springframework.stereotype.Repository;

import com.iyock.gymmanager.beans.Member;

@Repository
public interface MemberRepo extends ListCrudRepository<Member, Integer> {

}
