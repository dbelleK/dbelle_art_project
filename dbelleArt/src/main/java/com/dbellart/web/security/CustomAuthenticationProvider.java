package com.dbellart.web.security;


import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.dbellart.web.service.UserService;
import com.dbellart.web.service.api.KakaoApiService;

@Service
public class CustomAuthenticationProvider implements AuthenticationProvider {

    //특정 페이지 접속할 수 없게 권한 준다 예를 들어서 마이페이 같은 경우 로그인을 해야만 들어갈 수 있으니까

    @Autowired
    PasswordEncoder passwordEncoder;
    
    @Autowired
    KakaoApiService kakaoApiService;

    
    @Autowired
    HttpSession httpSession;
    
    @Autowired
    @Qualifier("userService")
    UserService userService;
    
    public final Integer SESSION_TIMEOUT_IN_SECONDS = 30*60;


    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
    	System.out.println("시큐리티작동");
        String email = (String)authentication.getPrincipal();
        String password = (String)authentication.getCredentials();
        SpringUser springUser;
        
        //카카오 로그인
        if(password.equals("dbelle-web-kakao-login")){
            springUser = (SpringUser)kakaoApiService.loadUserByKakaoUser(email);
            this.withdrawalFilter(springUser);
            httpSession.setMaxInactiveInterval(SESSION_TIMEOUT_IN_SECONDS);
            httpSession.setAttribute("user",springUser.getUser());
        }else {
            //스프링 시큐리티 적용 폼 로그인
            springUser = (SpringUser) userService.loadUserByUsername(email);
            this.withdrawalFilter(springUser);
            
          //암호화되서 온 password와 암호화인 springUser.getPassword()가 암호화되어 있지 않으면 실패 -> 회원가입 시킬 때 비번 암호화 해주어야한다.
            if (!passwordEncoder.matches(password, springUser.getPassword())) {
                // 로그인 실패 이력 남기기
//            userService.updateFailedLoginCountPlus(email);
                throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");
            }
        }

       //인증토큰 객체 리턴
        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(email, password, springUser.getAuthorities());
        authenticationToken.setDetails(springUser);
        return authenticationToken;
    }

    /**
     * 탈퇴회원 로그인 에러 처리
     * @param springUser
     */
    public void withdrawalFilter(SpringUser springUser){
        // 탈퇴한 회원이 로그인시 권한 체크
        Collection<GrantedAuthority> authorities = springUser.getAuthorities();
        authorities.stream().forEach(auth -> {
            String role = auth.getAuthority();
            if(role.equals("DELETE")){
                throw new BadCredentialsException("탈퇴");
            }
        });
    }


    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.equals(UsernamePasswordAuthenticationToken.class);
    }
}