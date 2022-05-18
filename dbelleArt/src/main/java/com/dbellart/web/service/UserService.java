package com.dbellart.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dbellart.web.domain.User;
import com.dbellart.web.repository.UserRepository;

@Service
public class UserService {

	private UserRepository userRepository;
	
	public void addUserinfo(User user) {
		userRepository.addUserinfo(user);
	}
}
