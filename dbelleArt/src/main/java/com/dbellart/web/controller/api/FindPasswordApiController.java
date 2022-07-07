package com.dbellart.web.controller.api;


import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.dbellart.web.domain.Mail;
import com.dbellart.web.domain.Member;
import com.dbellart.web.repository.UserMapper;
import com.dbellart.web.service.api.MailService;

import javax.mail.MessagingException;
import java.io.IOException;

@RestController
public class FindPasswordApiController {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private  MailService mailService;


    @PostMapping(value="/email/sendEmailProcess")
    @ResponseBody
    public boolean findPasswordByEmail(Mail mailDto) throws IOException, MessagingException {

        //db에 저장되어 잇는 이메일을 찾아 그 이메일이 있으면 그 이메일에 전송 해야하니까 getUserInfo 사용
        //db에 저장되어 있는 이메일 , 아이디 등등이 들어있을테니까
        Member member = userMapper.joinUserInfo(mailDto.getEmail());

        if (member != null){
            // 이메일 전송
        	Member sign = new Member();
            String generatedString = RandomStringUtils.randomAlphanumeric(10);
//            sign.setPass(passwordEncoder.encode(generatedString));
            sign.setPw(generatedString);

            //MypageRepository userMyPageUpdate()메소드에 id,pass,address를 변경시켜준다고 하여 이메소드를 이용하기 위해
            //따라서 이들은 새로운 id,address,idx가 아닌 같은 값이다
            sign.setEmail(member.getEmail());
            sign.setAddress(member.getAddress());
            sign.setUserIdx(member.getUserIdx());

            //db에 빈객체를 넘길 수 없으니 userMyPageUpdate()를 이용하여 db에 저장해야한다
            userMapper.userUpdateInfo(sign);

            mailDto.setSubject("[DBTI] 비밀번호 찾기 이메일 입니다.");
            mailDto.setContents("초기화 비밀번호는 : " + generatedString + " 입니다.");

            mailService.sendMail(mailDto);

        return true;
        }
        return false;
    }
}