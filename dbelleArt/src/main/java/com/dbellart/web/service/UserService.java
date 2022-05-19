package com.dbellart.web.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dbellart.web.domain.User;
import com.dbellart.web.repository.UserRepository;


@Service
public class UserService {
	
	private UserRepository userRepository;
	
	//1. 회원가입 insert
	public void addUserinfo(User user) {
		userRepository.addUserinfo(user);
	}
	
	// 2.회원가입 이메일 중복확인 
	// 같은 이메일이 있으면 가입안되게 하기
	public boolean joinUserInfo(User user) {
		
		User userEmail = userRepository.joinUserInfo(user.getEmail());
		
		if(userEmail == null) {
			return true;
		}
		return false;
	}

	
	//3.로그인하기
	//email과 pw가 같으면 로그인
	public boolean loginUserInfo(User user) {
		
		User loginSuccess=userRepository.loginUserInfo(user);
		
		if(loginSuccess.getEmail() == loginSuccess.getPw()) {

			return true;
		}
		return false;
	}
}
