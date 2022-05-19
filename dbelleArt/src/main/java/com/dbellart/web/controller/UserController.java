package com.dbellart.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dbellart.web.domain.User;
import com.dbellart.web.repository.UserRepository;
import com.dbellart.web.service.UserService;

@Controller
public class UserController {
		  
	  @Autowired
	  private UserService userService;
	  
	  @PostMapping("/joinpPro") //회원가입 
	  public String joinpPro(User user) {
		  	
		  	userService.addUserinfo(user); //여기다 디버그 싫행 : 서비스라인 들어가기 직전에 포인트가 걸린다
	  		return "top/login"; 
	  
	  }
	 
}
