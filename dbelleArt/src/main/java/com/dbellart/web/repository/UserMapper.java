package com.dbellart.web.repository;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dbellart.web.domain.User;

//@Repository
//public class UserMapper {
//	
//	@Autowired
//	private UserMapper userMapper;
//
//	public void addUserinfo(User user) {
//		userMapper.addUserinfo(user);
//	}
//
//	public User joinUserInfo(String email) {
//		return userMapper.joinUserInfo(email);
//	}
//
//	public User loginUserInfo(User user) {
//		return userMapper.loginUserInfo(user);
//	}

	public interface UserMapper {
		
		@Insert("INSERT INTO dbelle.user (name, email, pw, pwCheck, tel, address, checkAll) VALUES (#{name}, #{email}, #{pw}, #{pwCheck}, #{tel}, #{address} , #{checkAll})")
		@Options(useGeneratedKeys = true, keyProperty = "userIdx")
		void addUserinfo(User user);
		
		@Select("select * from USER where email=#{email}")
		User joinUserInfo(String email);
		
//		@Select("select * from USER where email=#{email} and pw=#{pw}")
//		User loginUserInfo(User user);




//	@Repository
//	public class UserMapper {
//		
//		@Autowired 
//		private SqlSessionTemplate sqlSessionTemplate;
//	
//		public void addUserinfo(User user) {
//			sqlSessionTemplate.insert("com.dbellart.web.repository.UserMapper.addUserInfo");
//		}
//	
//		public User joinUserInfo(String email) {
//			return sqlSessionTemplate.selectOne("com.dbellart.web.repository.UserMapper.joinUserInfo", email);
//		}
//	
//		public User loginUserInfo(User user) {
//			return sqlSessionTemplate.select("user.loginUserInfo");
//		}
}
