package com.dbellart.web.controller.api;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dbellart.web.domain.Member;
import com.dbellart.web.service.api.KakaoApiService;

@RestController
public class KakaoApiController {
	
	@Autowired
    private KakaoApiService kakaoApiService;

    @ResponseBody
    @PostMapping(value="kakao/sns/login")
    public String responseSuccessLogin(String email, String kakaoId) throws ServletException {
    	Member member = kakaoApiService.checkUserByKakao(email, kakaoId);
    	return member.getEmail();

    }
}
