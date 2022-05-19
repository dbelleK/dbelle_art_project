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
	  
	  //회원가입 
	  @PostMapping("/joinpPro") 
	  public String joinpPro(User user) {
		  	
		  	userService.addUserinfo(user); //여기다 디버그 싫행 : 서비스라인 들어가기 직전에 포인트가 걸린다
		  	userService.joinUserInfo(user);
		  	
	  		return "top/login"; 
	  
	  }
	  
	 //로그인
	 @PostMapping("/loginPro") 
	 public String loginPro(User user) {
		 userService.loginUserInfo(user);
		 return "/";
	 }
	  
	 
}
