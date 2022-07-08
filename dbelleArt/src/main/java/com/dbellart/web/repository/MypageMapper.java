package com.dbellart.web.repository;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dbellart.web.domain.Member;

public interface MypageMapper {
	
	//1.번호로 정보 가져오기
	@Select("select * from dbelle.user where userIdx=#{userIdx}")
	Member userMyPageCon(Member member);
	
	//2. 정보수정
	@Update("update dbelle.user set email=#{email}, pw=#{pw}, pwCheck=#{pwCheck}, tel={tel}, address=#{address} where userIdx=#{userIdx}")
	void userMyPageUpdate(Member member);

}
