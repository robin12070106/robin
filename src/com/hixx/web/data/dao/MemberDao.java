package com.hixx.web.data.dao;

import com.hixx.web.data.entity.Member;

public interface MemberDao {
	int add(Member notice);
	int add(String id, String pwd, String gender, int age, String birthdate);
	
	//여러개의 참조값을 필요로할때는 list 자료형, 한개의 참조값만 필요할때는 해당 참조유형을 붙여준다.
	Member get(String id);
	
}
