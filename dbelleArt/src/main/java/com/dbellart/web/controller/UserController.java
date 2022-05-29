package com.dbellart.web.controller;

import com.dbellart.web.security.SpringUser;
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
	
	  
	  
	 @PostMapping("/loginPro")
	 public String loginPro(Member user) {

		 SpringUser springUser = (SpringUser) userService.loadUserByUsername(user.getEmail());
//		 boolean loginUser = userService.loginUserInfo(user);

//		 if(loginUser == true) {
//			 return "home";
//		 }else {
//			 return "top/login";
//		 }

		 // Todo
		 // 입력한 비밀번호와 셀렉트한 user 정보의 실제 비밀번호를 비교.
		 // 비밀번호가 일치한다면 원하는 페이지로 보내기.
		 // 비밀번호가 다르다면 실패 페이지로 보내기.



			 return "top/login";
	 }
}
	  
	 
