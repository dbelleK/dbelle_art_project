package com.dbellart.web.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.List;

public class SpringUser extends User {

    // ���� ��ü�� User�� ����ó�� ������ ��ü�� ��Ƶα� ���� ���������� �׻� �ҷ� �� �� �ְ�
    //Users�� UserDetails ����
    private User users;

    public SpringUser(String email, String password, List<GrantedAuthority> grantedAuthorities, User users) {
        super(email, password, grantedAuthorities);
        this.users = users;
    }

    public User getUser() {
        return users;
    }

    public void setUser(User user) {
        this.users = user;
    }
}
