package com.dbellart.web.service;


import lombok.RequiredArgsConstructor;

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
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.dbellart.web.domain.Member;
import com.dbellart.web.domain.UserAuthority;
import com.dbellart.web.repository.UserMapper;
import com.dbellart.web.security.SpringUser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;


@Service
public class UserService implements UserDetailsService {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
		
	
	  /**
	   * 회원 가입
	   *
	   * @param users
	   */
	  public void addUserinfo(Member member) {
	      //비밀번호 암호화
		  member.setPw(passwordEncoder.encode(member.getPw()));
	      //회원가입
	      userMapper.addUserinfo(member);
	      //이메일로 유저정보 조회
	//      Sign user = userRepository.getUserInfo(users.getEmail()); //자동적으로 idx 들어감
	      //찾아온 유저정보가 있다면?
	      if (member.getUserIdx() != 0) {
	          UserAuthority userAuthority = new UserAuthority();
	          userAuthority.setUserId((long) member.getUserIdx());
	          userAuthority.setAuthority("ROLE_USER");
	          //유저권한 데이터 삽입
	          userMapper.insertAuthority(userAuthority);
	      }
	  }
	
	//  public Sign getUserInfo(String email) {
	//      Sign user = userRepository.getUserInfo(email);
	//      return user;
	//  }
	
	  /**
	   * 등록된 회원 정보를 출력
	   * 회원가입 된 email을 가지고 있는 user에 권한을 부여해서 권한을 가지고 있는 SpringUser를 이용하여 springUser로 넘겨준다.
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
	
	//      Optional<Sign> optionalUser = signRepository.findByEmail(username);
	//      return optionalUser.map(user -> {
	//          List<UserAuthority> authority = userRepository.findAuthorityById(user.getId());
	//
	//          List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
	//          for (UserAuthority userAuthority : authority) {
	//              grantedAuthorities.add(new SimpleGrantedAuthority(userAuthority.getAuthority()));
	//          }
	//
	//          SpringUser springUser = new SpringUser(user.getEmail(), user.getPass(), grantedAuthorities, user);
	//
	//          return springUser;
	//
	//      }).orElseThrow(() -> new BadCredentialsException("일치하지 않습니다."));
	  }
	  
//	//3. 로그인
//	public boolean loginUserInfo(Member member) {
//
//		Member loginSuccess=userMapper.loginUserInfo(member);
//		
//		// 이메일과 비밀번호가 null이 아니면 즉, 존재하면 email=pw쿼리 적용
//		if(loginSuccess != null) {
//
//		 return true;
//		 
//		}
//		return false;
//	}
	
	  public void logout() {
	      ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
	      HttpServletRequest request = requestAttributes.getRequest();
	      HttpServletResponse response = requestAttributes.getResponse();
	      new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());
	  }
	}