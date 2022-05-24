package com.dbellart.web.service;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import com.dbellart.web.domain.User;
//import com.dbellart.web.repository.UserRepository;
import com.dbellart.web.repository.UserMapper;


@Service
public class UserService {

	@Autowired
	private UserMapper userRepository;
	
    /**
     * ȸ�� ����
     *
     * @param users
     */
    public void addUserinfo(User users) {
        //��й�ȣ ��ȣȭ
        users.setPass(PasswordEncoder.encode(users.getPass()));
        //ȸ������
        userRepository.addUserinfo(users);
        //�̸��Ϸ� �������� ��ȸ
//        Sign user = userRepository.getUserInfo(users.getEmail()); //�ڵ������� idx ��
        //ã�ƿ� ���������� �ִٸ�?
        if (users.getUserIdx() != 0) {
            UserAuthority userAuthority = new UserAuthority();
            userAuthority.setUserId((long) users.getUserIdx());
            userAuthority.setAuthority("ROLE_USER");
            //�������� ������ ����
            userRepository.insertAuthority(userAuthority);
        }
    }

//	//1. ȸ������
//	public void addUserinfo(User user) {
//		userRepository.addUserinfo(user);
//	}

	// 2.�̸��� �ߺ�üũ
	public boolean joinUserInfo(User user) {

		User userEmail = userRepository.joinUserInfo(user.getEmail());

		if(userEmail == null) {
			return true;
		}
		return false;
	}


	//3. �α���
	public boolean loginUserInfo(User user) {

		User loginSuccess=userRepository.loginUserInfo(user);
		
		// �̸��ϰ� ��й�ȣ�� null�� �ƴϸ� ��, �����ϸ� email=pw���� ����
		if(loginSuccess != null) {

		 return true;
		 
		}
		return false;
	}

}
