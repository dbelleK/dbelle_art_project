package com.dbellart.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TopController {
	
	@RequestMapping("about")
	public String about() {
		
		return "top/about";
	}
	
	@RequestMapping("service")
	public String service() {
		
		return "top/service";
	}
	
	@RequestMapping("join")
	public String join() {
		
		return "top/join";
	}
	
	@RequestMapping("login")
	public String login() {
		
		return "top/login";
	}
	
	@RequestMapping("myPage")
	public String myPage() {
		
		return "top/myPage";
	}
	
	@RequestMapping("notice")
	public String notice() {
		
		return "top/notice";
	}
	
	@RequestMapping("contact")
	public String contact() {
		
		return "top/contact";
	}


}
