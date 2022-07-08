package com.dbellart.web.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.dbellart.web.domain.Member;

import java.util.List;

public class SpringUser extends User {

    // 내장 객체인 User은 세션처럼 성공한 객체를 담아두기 위해 서버내에서 항상 불러 쓸 수 있게
    //Users에 UserDetails 포함
	
    private Member users;

    public SpringUser(String email, String pw, List<GrantedAuthority> grantedAuthorities, Member users) {
        super(email, pw, grantedAuthorities);
        this.users = users;
    }

    public Member getUser() {
        return users;
    }

    public void setUser(Member member) {
        this.users = member;
    }
}
