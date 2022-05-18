package com.dbellart.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dbellart.web.domain.User;
import com.dbellart.web.repository.UserRepository;
import com.dbellart.web.service.UserService;

@Controller
public class UserController {
	
    private UserRepository userRepository;
    private UserService userService;

    @PostMapping("/joinpPro") //회원가입
    public String joinpPro(User user) {
        userService.addUserinfo(user);

        return "user/login";
    }
}


