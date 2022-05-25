//package com.dbellart.web.service;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.security.authentication.BadCredentialsException;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//
//import com.dbellart.web.domain.User;
//import com.dbellart.web.domain.UserAuthority;
//import com.dbellart.web.security.SpringUser;
//
//public class Service {
//	
////	//1. 회원가입
////	public void addUserinfo(User user) {
////		userRepository.addUserinfo(user);
////	}
//    
//
//
////	// 2.이메일 중복체크
////	public boolean joinUserInfo(User user) {
////
////		User userEmail = userRepository.joinUserInfo(user.getEmail());
////
////		if(userEmail == null) {
////			return true;
////		}
////		return false;
////	}
//
//
////	//3. 로그인
////	public boolean loginUserInfo(User user) {
////
////		User loginSuccess=userRepository.loginUserInfo(user);
////		
////		// 이메일과 비밀번호가 null이 아니면 즉, 존재하면 email=pw쿼리 적용
////		if(loginSuccess != null) {
////
////		 return true;
////		 
////		}
////		return false;
////	}
//
//}
