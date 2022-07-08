package com.dbellart.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dbellart.web.domain.Member;
import com.dbellart.web.service.MyPageService;

@Controller
public class MyPageController {

	@Autowired
	private MyPageService mypageService;
	
    @PostMapping("/mypageInfoPro") 
    public String mypageInfoPro(Member member) {
    	
    	 mypageService.userMyPageCon(member); 
    	 
    	 boolean status = mypageService.userMyPageUpdate(member);
    	 
    	 if (status){
             // 정보 업데이트 성공
             return "redirect:/";

         }else {
             // 정보 업데이트 실패
             return "top/myPage";
         }
    	 
    }


}

