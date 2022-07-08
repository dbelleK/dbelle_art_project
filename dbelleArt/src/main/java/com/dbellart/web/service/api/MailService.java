package com.dbellart.web.service.api;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.dbellart.web.config.MailConfig;
import com.dbellart.web.domain.Mail;

import lombok.extern.slf4j.Slf4j;

import javax.mail.MessagingException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service
public class MailService {

    @Autowired(required = false)
	private JavaMailSender javaMailSender;

    /**
     * 기본적으로 1명에게 보냄
     * @param mailDto
     * @return
     */
    public void sendMail(Mail mailDto) throws MessagingException, IOException {
        MailConfig MailConfig = new MailConfig(javaMailSender);

        MailConfig.setTo(mailDto.getEmail());
        MailConfig.setSubject(mailDto.getSubject());

//        String htmlContent = "<p>" + "메세지" + "<p> <img src='cid:google-logo'>";
        String htmlContent = mailDto.getContents();
        MailConfig.setText(htmlContent, true);
        MailConfig.send();
    }

    /**
     * 여러명 보내기
     */
    public void sendMailToPeople(){
        List<String> toUserList = new ArrayList<>();
        toUserList.add("kddyy1206@gmail.com");
        toUserList.add("수신대상@naver.com");
        toUserList.add("수신대상@naver.com");
        toUserList.add("수신대상@naver.com");
        toUserList.add("수신대상@naver.com");

        int toUserSize = toUserList.size();

        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
        simpleMailMessage.setTo((String[]) toUserList.toArray(new String[toUserSize]));
        simpleMailMessage.setSubject("제목 샘플");
        simpleMailMessage.setText("내용");
        javaMailSender.send(simpleMailMessage);
    }


}
