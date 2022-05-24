package com.dbellart.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dbellart.web.domain.User;
import com.dbellart.web.service.UserService;

@Controller
public class UserController {
		  
	  @Autowired
	  private UserService userService;
	  
	  @PostMapping("/joinpPro")
	  public String joinpPro(User user) {
		  	
		  	boolean checkEmail = userService.joinUserInfo(user); //�ִ��� ������ ���� �˻縦 �ϴ°��ݾ� �׷��� ������ ������ �߰��� ������ 

		  	if(checkEmail == true) {
		  		userService.addUserinfo(user);
		  		return "top/login"; 
		  	}else {
		  		// ���� �ذ� -> �ڵ帮�� ��ǥ 10�е��� ����
		  		return "top/join"; 
			}	  
	  }
	  
	  
	 @PostMapping("/loginPro")
	 public String loginPro(User user) {
		 
		 boolean loginUser = userService.loginUserInfo(user);
		 
		 if(loginUser == true) {
			 return "home";
		 }else {
			 return "top/login"; 
		 }
		 
	 }
	  
	 
}
