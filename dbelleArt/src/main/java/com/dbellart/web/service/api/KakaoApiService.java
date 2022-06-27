package com.dbellart.web.service.api;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dbellart.web.domain.Member;
import com.dbellart.web.domain.UserAuthority;
import com.dbellart.web.repository.UserMapper;
import com.dbellart.web.security.SpringUser;

@Service
public class KakaoApiService {
	
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private HttpServletRequest httpServletRequest;


    //todo
    // 1) 가입한 사람이 있는지 체크
    // (이메일로 가입하고 카카오로그인으로 가입시킨사람을 연동시키기 위해서 따로 둘 수 없으니까)
    // 2) 이메일로 가입했으면 카카오로그인만 회원가입 시킴
    // 3) 이메일로 가입도 안된사람이라면 이메일가입과 카카오로그인 회원가입 둘다 시킴


    public Member checkUserByKakao(String email, String kakaoId){

    	Member checkInfo =userMapper.joinUserInfo(email); //getUserInfo 리턴타입이 Sign

        if(checkInfo == null){ //이메일이 없는 사람 //즉,가입한 사람이 없으면 카카오아이디와 이메일 가지고 회원가입시킴

        	Member sign = new Member();
            sign.setKakaoId(kakaoId);
            sign.setEmail(email);
            userMapper.addUserinfo(sign); //insert쿼리문 이용
            return sign;

        }else{

            //이메일로 가입한 사람이 있으면 카카오아이디만 가지고 와서 회원가입 시킴

            if (checkInfo.getKakaoId() == null){
                // 카카오 아이디 업데이트
                checkInfo.setKakaoId(kakaoId);
                userMapper.updateUserByKakao(checkInfo);
                return checkInfo;
            }else {
                // 카카오 아이디가 이미 존재하기 때문에 로그인만 진행
                return checkInfo;
            }
        }
    }

    public void kakaoLogin(String email) throws ServletException {
        httpServletRequest.login(email, "dbelle-web-kakao-login"); //카카오아이디화원가입 초기화 비번
    }

    //비밀번호 없이도 로그인 가능한 로직
    //1.카카오 로그인을 통해 유저정보를 얻는 메소드
	public UserDetails loadUserByKakaoUser(String email) throws UsernameNotFoundException {
        Member user = userMapper.joinUserInfo(email);
        if (user != null) {
            List<UserAuthority> authority = userMapper.findAuthorityById((long) user.getUserIdx());
            List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
            for (UserAuthority userAuthority : authority) {
                grantedAuthorities.add(new SimpleGrantedAuthority(userAuthority.getAuthority()));
            }
            SpringUser springUser = new SpringUser(user.getEmail(), "dbelle-web-kakao-login", grantedAuthorities, user);
            return springUser;
        } else {
            throw new IllegalArgumentException(email + " 사용자가 존재하지 않습니다");
        }
    }




}
