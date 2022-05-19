package com.dbellart.web.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dbellart.web.domain.User;
import com.dbellart.web.repository.UserRepository;


@Service
public class UserService {
	
	private UserRepository userRepository;
	
	//1. ??????? insert
	public void addUserinfo(User user) {
		userRepository.addUserinfo(user);
	}
	
	// 2.??????? ????? ?????? 
	// ???? ??????? ?????? ??????? ???
	public boolean joinUserInfo(User user) {
		
		User userEmail = userRepository.joinUserInfo(user.getEmail());
		
		if(userEmail == null) {
			return true;
		}
		return false;
	}

	
	//3.????????
	//email?? pw?? ?????? ?????
	public boolean loginUserInfo(User user) {
		
		User loginSuccess=userRepository.loginUserInfo(user);
		
		if(loginSuccess.getEmail() == loginSuccess.getPw()) {

			return true;
		}
		return false;
	}
}
