package com.dbellart.web.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dbellart.web.service.UserService;

@RestController
public class EmailController {

	@Autowired
	private UserService userService;
	
	@PostMapping(value="/email/emailCheckProcess")
	@ResponseBody
	public int emailCheck(@RequestParam("email") String email)  {
		
		int cnt = userService.emailCheck(email);
		System.out.println("ajaxController");
		
		return cnt;
		
	}
}
