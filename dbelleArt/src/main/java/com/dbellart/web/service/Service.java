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
////	//1. ȸ������
////	public void addUserinfo(User user) {
////		userRepository.addUserinfo(user);
////	}
//    
//
//
////	// 2.�̸��� �ߺ�üũ
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
////	//3. �α���
////	public boolean loginUserInfo(User user) {
////
////		User loginSuccess=userRepository.loginUserInfo(user);
////		
////		// �̸��ϰ� ��й�ȣ�� null�� �ƴϸ� ��, �����ϸ� email=pw���� ����
////		if(loginSuccess != null) {
////
////		 return true;
////		 
////		}
////		return false;
////	}
//
//}
