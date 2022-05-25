package com.dbellart.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.dbellart.web.domain.Member;
import com.dbellart.web.repository.MypageMapper;

@Service
public class MyPageService {
	
	@Autowired
	private MypageMapper mypageMapper;
	
	
	 //
    public void userMyPageCon(Member member) {

        //회원 정보 불러오기
       mypageMapper.userMyPageCon(member);

        
    }

}
