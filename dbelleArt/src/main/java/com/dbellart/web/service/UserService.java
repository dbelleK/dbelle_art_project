package com.dbellart.web.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.dbellart.web.domain.User;
//import com.dbellart.web.repository.UserRepository;
import com.dbellart.web.repository.UserMapper;


@Service
public class UserService {

	@Autowired
	private UserMapper userRepository;
	
    /**
     * 회원 가입
     *
     * @param users
     */
    public void addUserinfo(User users) {
        //비밀번호 암호화
        users.setPass(PasswordEncoder.encode(users.getPass()));
        //회원가입
        userRepository.addUserinfo(users);
        //이메일로 유저정보 조회
//        Sign user = userRepository.getUserInfo(users.getEmail()); //자동적으로 idx 들어감
        //찾아온 유저정보가 있다면?
        if (users.getUserIdx() != 0) {
            UserAuthority userAuthority = new UserAuthority();
            userAuthority.setUserId((long) users.getUserIdx());
            userAuthority.setAuthority("ROLE_USER");
            //유저권한 데이터 삽입
            userRepository.insertAuthority(userAuthority);
        }
    }

//	//1. 회원가입
//	public void addUserinfo(User user) {
//		userRepository.addUserinfo(user);
//	}

	// 2.이메일 중복체크
	public boolean joinUserInfo(User user) {

		User userEmail = userRepository.joinUserInfo(user.getEmail());

		if(userEmail == null) {
			return true;
		}
		return false;
	}


	//3. 로그인
	public boolean loginUserInfo(User user) {

		User loginSuccess=userRepository.loginUserInfo(user);
		
		// 이메일과 비밀번호가 null이 아니면 즉, 존재하면 email=pw쿼리 적용
		if(loginSuccess != null) {

		 return true;
		 
		}
		return false;
	}

}
