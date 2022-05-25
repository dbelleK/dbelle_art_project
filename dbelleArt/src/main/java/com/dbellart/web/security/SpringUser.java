package com.dbellart.web.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import com.dbellart.web.domain.Member;

import java.util.List;

public class SpringUser extends User {

    // ���� ��ü�� User�� ����ó�� ������ ��ü�� ��Ƶα� ���� ���������� �׻� �ҷ� �� �� �ְ�
    //Users�� UserDetails ����
    private User users;

    public SpringUser(String email, String pw, List<GrantedAuthority> grantedAuthorities, Member member) {
        super(email, pw, grantedAuthorities);
        this.users = users;
    }

    public User getUser() {
        return users;
    }

    public void setUser(User user) {
        this.users = user;
    }
}
