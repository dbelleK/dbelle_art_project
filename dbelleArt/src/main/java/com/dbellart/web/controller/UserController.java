package com.dbellart.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dbellart.web.domain.Member;
import com.dbellart.web.service.UserService;

@Controller
public class UserController {
		  
	  @Autowired
	  private UserService userService;
	  
//	  @PostMapping("/joinpPro")
//	  public String joinpPro(Member user) {
//		  	
//		  	boolean checkEmail = userService.joinUserInfo(user); //�ִ��� ������ ���� �˻縦 �ϴ°��ݾ� �׷��� ������ ������ �߰��� ������ 
//
//		  	if(checkEmail == true) {
//		  		userService.addUserinfo(user);
//		  		return "top/login"; 
//		  	}else {
//		  		// ���� �ذ� -> �ڵ帮�� ��ǥ 10�е��� ����
//		  		return "top/join"; 
//			}	  
//	  }
	  
	    @PostMapping("/joinpPro") //ȸ������
	    public String joinpPro(Member member) {
	      
	    	userService.addUserinfo(member); //ȸ������(���ѵ�)

//	        signService.checkUserId(sign);
	        return "top/login";
	    }
	
	  
	  
//	 @PostMapping("/loginPro")
//	 public String loginPro(Member user) {
//		 
//		 boolean loginUser = userService.loginUserInfo(user);
//		 
//		 if(loginUser == true) {
//			 return "home";
//		 }else {
//			 return "top/login"; 
//		 }
//		 
//	 }
}
	  
	 
