package com.dbellart.web.repository;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.dbellart.web.domain.Member;

public interface MypageMapper {
	
	//1. ȸ�������� �� ������������ ����
	@Select("select * from dbelle.user where userIdx=#{userIdx}")
	Member userMyPageCon(Member member);
	
	//2. ���������� ������Ʈ
	@Update("update dbelle.user set email=#{email}, pw=#{pw}, tel={tel}, address=#{address} where userIdx=#{userIdx}")
	void userMyPageUpdate(Member member);

}
