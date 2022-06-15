package com.dbellart.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TopController {
	
	@RequestMapping("about")
	public String about() {
		System.out.println("about �옉�룞");
		return "top/about";
	}
	
	@RequestMapping("service")
	public String service() {
		System.out.println("service �옉�룞");
		return "/top/service";
	}
	
	@RequestMapping("join")
	public String join() {
		System.out.println("join �옉�룞");
		return "top/join";
	}
	
	@RequestMapping("login")
	public String login() {
		System.out.println("login �옉�룞");
		return "top/login";
	}
	
	@RequestMapping("myPage")
	public String myPage() {
		System.out.println("myPage �옉�룞");
		return "top/myPage";
	}
	
	@RequestMapping("notice")
	public String notice() {
		System.out.println("notice �옉�룞");
		return "top/notice";
	}
	@RequestMapping("write")
	public String write() {
		System.out.println("write �옉�룞");
		return "top/write";
	}
	
	@RequestMapping("contact")
	public String contact() {
		System.out.println("contact �옉�룞");
		return "top/contact";
	}
	
	@RequestMapping("privacyAgree")
	public String privacyAgree() {
		System.out.println("약관동의 자세히 창1");
		return "top/agree/privacyAgree";
	}

	@RequestMapping("dbelleAgree")
	public String dbelleAgree() {
		System.out.println("약관동의 자세히 창2");
		return "top/agree/dbelleAgree";
	}
	
	@RequestMapping("marketingAgree")
	public String marketingAgree() {
		System.out.println("약관동의 자세히 창3");
		return "top/agree/marketingAgree";
	}
	

}
