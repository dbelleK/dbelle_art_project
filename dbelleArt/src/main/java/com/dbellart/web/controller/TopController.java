package com.dbellart.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TopController {
	
	@RequestMapping("about")
	public String about() {
		System.out.println("about 작동");
		return "top/about";
	}
	
	@RequestMapping("service")
	public String service() {
		System.out.println("service 작동");
		return "/top/service";
	}
	
	@RequestMapping("join")
	public String join() {
		System.out.println("join 작동");
		return "/top/join";
	}
	
	@RequestMapping("login")
	public String login() {
		System.out.println("login 작동");
		return "/top/login";
	}
	
	@RequestMapping("myPage")
	public String myPage() {
		System.out.println("myPage 작동");
		return "/top/myPage";
	}
	
	@RequestMapping("notice")
	public String notice() {
		System.out.println("notice 작동");
		return "/top/notice";
	}
	@RequestMapping("write")
	public String write() {
		System.out.println("write 작동");
		return "/top/write";
	}
	
	@RequestMapping("contact")
	public String contact() {
		System.out.println("contact 작동");
		return "/top/contact";
	}


}
