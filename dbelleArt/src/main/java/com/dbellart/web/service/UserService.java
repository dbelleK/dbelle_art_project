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
	   * ȸ�� ����
	   *
	   * @param users
	   */
	  public void addUserinfo(Member member) {
	      //��й�ȣ ��ȣȭ
		  member.setPw(passwordEncoder.encode(member.getPw()));
	      //ȸ������
	      userMapper.addUserinfo(member);
	      //�̸��Ϸ� �������� ��ȸ
	//      Sign user = userRepository.getUserInfo(users.getEmail()); //�ڵ������� idx ��
	      //ã�ƿ� ���������� �ִٸ�?
	      if (member.getUserIdx() != 0) {
	          UserAuthority userAuthority = new UserAuthority();
	          userAuthority.setUserId((long) member.getUserIdx());
	          userAuthority.setAuthority("ROLE_USER");
	          //�������� ������ ����
	          userMapper.insertAuthority(userAuthority);
	      }
	  }
	
	//  public Sign getUserInfo(String email) {
	//      Sign user = userRepository.getUserInfo(email);
	//      return user;
	//  }
	
	  /**
	   * ��ϵ� ȸ�� ������ ���
	   * ȸ������ �� email�� ������ �ִ� user�� ������ �ο��ؼ� ������ ������ �ִ� SpringUser�� �̿��Ͽ� springUser�� �Ѱ��ش�.
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
	          throw new BadCredentialsException("��ġ���� �ʽ��ϴ�.");
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
	//      }).orElseThrow(() -> new BadCredentialsException("��ġ���� �ʽ��ϴ�."));
	  }
	  
//	//3. �α���
	public boolean loginUserInfo(Member member) {

		Member loginSuccess=userMapper.loginUserInfo(member);

		// �̸��ϰ� ��й�ȣ�� null�� �ƴϸ� ��, �����ϸ� email=pw���� ����
		if(loginSuccess != null) {

		 return true;

		}
		return false;
	}
	
	  public void logout() {
	      ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
	      HttpServletRequest request = requestAttributes.getRequest();
	      HttpServletResponse response = requestAttributes.getResponse();
	      new SecurityContextLogoutHandler().logout(request, response, SecurityContextHolder.getContext().getAuthentication());
	  }
	}