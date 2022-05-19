package com.dbellart.web.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dbellart.web.domain.User;
import com.dbellart.web.repository.UserRepository;


@Service
public class UserService {
	
	private UserRepository userRepository;
	
	//1. ȸ������ insert
	public void addUserinfo(User user) {
		userRepository.addUserinfo(user);
	}
	
	// 2.ȸ������ �̸��� �ߺ�Ȯ�� 
	// ���� �̸����� ������ ���Ծȵǰ� �ϱ�
	public boolean joinUserInfo(User user) {
		
		User userEmail = userRepository.joinUserInfo(user.getEmail());
		
		if(userEmail == null) {
			return true;
		}
		return false;
	}

	
	//3.�α����ϱ�
	//email�� pw�� ������ �α���
	public boolean loginUserInfo(User user) {
		
		User loginSuccess=userRepository.loginUserInfo(user);
		
		if(loginSuccess.getEmail() == loginSuccess.getPw()) {

			return true;
		}
		return false;
	}
}
