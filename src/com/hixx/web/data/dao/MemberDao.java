package com.hixx.web.data.dao;

import com.hixx.web.data.entity.Member;

public interface MemberDao {
	int add(Member notice);
	int add(String id, String pwd, String gender, int age, String birthdate);
	
	//�������� �������� �ʿ���Ҷ��� list �ڷ���, �Ѱ��� �������� �ʿ��Ҷ��� �ش� ���������� �ٿ��ش�.
	Member get(String id);
	
}
