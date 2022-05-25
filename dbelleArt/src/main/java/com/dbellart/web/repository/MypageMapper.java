package com.dbellart.web.repository;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dbellart.web.domain.Member;

public interface MypageMapper {
	
	//1. 회원가입한 것 마이페이지로 연결
	@Select("select * from dbelle.user where userIdx=#{userIdx}")
	Member userMyPageCon(Member member);
	
	//2. 마이페이지 업데이트
	@Update("update dbelle.user set email=#{email}, pw=#{pw}, tel={tel}, address=#{address} where userIdx=#{userIdx}")
	void userMyPageUpdate(Member member);

}
