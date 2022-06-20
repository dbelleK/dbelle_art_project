package com.dbellart.web.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dbellart.web.domain.Member;
import com.dbellart.web.domain.UserAuthority;

public interface UserMapper {
	
	//1. 회원가입 insert
	@Insert("INSERT INTO dbelle.user (name, email, pw, pwCheck, tel, address, checkAll) VALUES (#{name}, #{email}, #{pw}, #{pwCheck}, #{tel}, #{address} , #{checkAll})")
	@Options(useGeneratedKeys = true, keyProperty = "userIdx")
	void addUserinfo(Member user);
	
	//2.email로 권한부여
	@Select("select * from dbelle.user where email=#{email}")
	Member joinUserInfo(String email);
	
	//3.이메일 중복검사
	@Select("select COUNT(email) from dbelle.user where email=#{email}")
	int emailCheck(String email);
	
	//3.로그인 
	@Select("select * from dbelle.user where email=#{email} and pw=#{pw}")
	Member loginUserInfo(Member user);
	
	//4.권한부여 삽입
	@Insert("INSERT INTO dbelle.authority(user_id,authority,created_date,modified_date) VALUES(#{userId}, #{authority}, NOW(), NOW())")
	void insertAuthority(UserAuthority userAuthority);
	 
	//5.등록한 권한을 가져온다
    @Select("SELECT * FROM dbelle.authority where user_id = #{asd}")
    List<UserAuthority> findAuthorityById(@Param("asd") Long ids); //ids=���� asd=������ ��

}
