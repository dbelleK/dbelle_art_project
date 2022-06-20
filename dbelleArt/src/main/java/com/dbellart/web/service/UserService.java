package com.dbellart.web.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.dbellart.web.domain.Member;
import com.dbellart.web.domain.UserAuthority;
import com.dbellart.web.repository.UserMapper;
import com.dbellart.web.security.SpringUser;

@Service
public class UserService implements UserDetailsService {

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private PasswordEncoder passwordEncoder;


	public void addUserinfo(Member member) {

		//비밀번호 암호화
		member.setPw(passwordEncoder.encode(member.getPw()));

		//회원가입
		userMapper.addUserinfo(member);

		//찾아온 유저 정보가 있다면
		if (member.getUserIdx() != 0) {
			
			UserAuthority userAuthority = new UserAuthority();
				userAuthority.setUserId((long) member.getUserIdx());
				userAuthority.setAuthority("ROLE_USER");

				userMapper.insertAuthority(userAuthority);
		}
	}

	/**
	 * 등록된 회원 정보를 출력 회원가입 된 email을 가지고 있는 user에 권한을 부여해서
	 * 권한을 가지고 있는 SpringUser를 이용하여
	 * springUser로 넘겨준다. <<스프링 시큐리티 적용 폼 로그인>>
	 *
	 * @param email
	 * @return
	 * @throws UsernameNotFoundException
	 */
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Member member = userMapper.joinUserInfo(email);
		if (member != null) {
			List<UserAuthority> authority = userMapper.findAuthorityById((long) member.getUserIdx());
			List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
			for (UserAuthority userAuthority : authority) {
				grantedAuthorities.add(new SimpleGrantedAuthority(userAuthority.getAuthority()));
			}
			SpringUser springUser = new SpringUser(member.getEmail(), member.getPw(), grantedAuthorities, member);
			return springUser;
		} else {
			throw new BadCredentialsException("일치하지 않습니다.");
		}

	}

	// 이메일 ajax 중복확인
	public int emailCheck(String email) {

		int cnt = userMapper.emailCheck(email);
		System.out.println("cnt:" + cnt);

		return cnt;
	}

	// 3. �α���
//	public boolean loginUserInfo(Member member) {
//
//		Member loginSuccess = userMapper.loginUserInfo(member);
//
//		if (loginSuccess != null) {
//
//			return true;
//
//		}
//		return false;
//	}

	//로그아웃
	public void logout() {
		ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder
				.getRequestAttributes();
		HttpServletRequest request = requestAttributes.getRequest();
		HttpServletResponse response = requestAttributes.getResponse();
		new SecurityContextLogoutHandler().logout(request, response,
				SecurityContextHolder.getContext().getAuthentication());
	}
}