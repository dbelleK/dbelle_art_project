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
//		  	boolean checkEmail = userService.joinUserInfo(user); //있는지 없는지 먼저 검사를 하는거잖아 그러면 있으면 밑으로 쭉가고 없으면 
//
//		  	if(checkEmail == true) {
//		  		userService.addUserinfo(user);
//		  		return "top/login"; 
//		  	}else {
//		  		// 숙제 해결 -> 코드리뷰 발표 10분동안 설명
//		  		return "top/join"; 
//			}	  
//	  }
	  
	    @PostMapping("/joinpPro") //회원가입
	    public String joinpPro(Member member) {
	      
	    	userService.addUserinfo(member); //회원가입(권한도)

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
	  
	 
