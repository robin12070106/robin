package com.hixx.web.data.dao;

import java.util.List;

import com.hixx.web.data.entity.Member;

public interface MemberDao {
	int add(Member notice);
	int add(String id, String pwd, String gender, int age, String birthdate);
	
	void ticketAdd(String id);
	
	Member get(String id);
	
}
