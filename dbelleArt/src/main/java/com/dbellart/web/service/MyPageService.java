package com.dbellart.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.dbellart.web.domain.Member;
import com.dbellart.web.repository.MypageMapper;
import com.dbellart.web.security.SpringUser;

@Service
public class MyPageService {

	@Autowired
	private MypageMapper mypageMapper;

	@Autowired
	private PasswordEncoder passwordEncoder;

	public void userMyPageCon(Member member) {

		mypageMapper.userMyPageCon(member);

	}

	public boolean userMyPageUpdate(Member member) {

		Member memberUpdate = new Member();

		if (passwordEncoder.matches(member.getPw(), memberUpdate.getPw())) {

			memberUpdate.setEmail(member.getEmail());
			memberUpdate.setPw(member.getPw());
			memberUpdate.setPwCheck(member.getPwCheck());
			memberUpdate.setTel(member.getTel());
			memberUpdate.setAddress(member.getAddress());

			mypageMapper.userMyPageUpdate(memberUpdate);
			return true;

		} else {
			return false;
		}
	}

}
