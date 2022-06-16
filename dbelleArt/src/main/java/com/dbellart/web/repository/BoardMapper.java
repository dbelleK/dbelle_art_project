package com.dbellart.web.repository;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.dbellart.web.domain.Board;

@Mapper
public interface BoardMapper {

	
	@Insert("insert into dbelle.board (title, content) value (#{title}, #{content})")
	void addBoardInfo(Board board); 
	
	//notice에 글쓴거 보이게 하기
	@Select("select * from dbelle.board where boardIdx=#{boardIdx}")
	Board showBoardInfo(int boardIdx); 
}