package com.dbellart.web.repository;

import org.springframework.stereotype.Repository;

import com.dbellart.web.domain.User;

@Repository
public interface UserRepository {
	
	//1.ȸ������ insert
	void addUserinfo(User user);
	
	//2.ȸ������ �ҷ����� select
	User joinUserInfo(String email);
	
	//3.�α����ϱ�
	User loginUserInfo(User user);
}
