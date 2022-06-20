package com.dbellart.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.dbellart.web.domain.Member;
import com.dbellart.web.security.SpringUser;
import com.dbellart.web.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

//		@PostMapping("/joinpPro")
//		public String joinpPro(Member member) {
//
//			boolean checkEmailInfo = userService.joinUserInfo(member.getEmail());
//
//			if (checkEmailInfo == true) {
//				userService.addUserinfo(member);
//				return "top/login";
//			} else {
//				return "top/join";
//			}
//
//		}

	@PostMapping("/joinpPro")
	public String joinpPro(Member member) {

		userService.addUserinfo(member);

		return "top/login";
	}

	@PostMapping("/loginPro")
	public String loginPro(Member user) {

		SpringUser springUser = (SpringUser) userService.loadUserByUsername(user.getEmail());

		// Todo
		// 입력한 비밀번호와 셀렉트한 user 정보의 실제 비밀번호를 비교.
		// 비밀번호가 일치한다면 원하는 페이지로 보내기.
		// 비밀번호가 다르다면 실패 페이지로 보내기.

		return "top/login";
	}
	

    //http://localhost8088/login
//    @RequestMapping(path = "login")
//    public ModelAndView login(Principal principal, @RequestParam(value = "error", defaultValue = "false") Boolean error) {
//            if (error) { //error가 true일 때 : 로그인이 되지 않았을 때
//                return new ModelAndView("user/login"). // 다시 login페이지를 보여준다
//                        addObject("error", error);
//            } else {
//
//                if (!ObjectUtils.isEmpty(principal)) { //로그인이 되었을 때
//                    return new ModelAndView("index"); //index페이지를 보여준다
//                }
//                return new ModelAndView("user/login"); //그렇지 않으면(로그인이 되지 않으면) login 페이지를 보여준다
//            }
//    }
	
}
