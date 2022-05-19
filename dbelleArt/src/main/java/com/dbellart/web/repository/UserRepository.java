package com.dbellart.web.repository;

import org.springframework.stereotype.Repository;

import com.dbellart.web.domain.User;

@Repository
public interface UserRepository {
	
	//1.회원가입 insert
	void addUserinfo(User user);
	
	//2.회원가입 이메일 중복확인 select
	User joinUserInfo(String email);
	
	//3.로그인하기
	User loginUserInfo(User user);
	
}
