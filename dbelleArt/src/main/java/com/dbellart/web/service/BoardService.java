package com.dbellart.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dbellart.web.domain.Board;
import com.dbellart.web.repository.BoardMapper;

@Service
public class BoardService {
	
	@Autowired
	BoardMapper boardMapper;
	
	public void addBoardInfo(Board board) {
		boardMapper.addBoardInfo(board);
	}
	
	public List<Board> showBoardInfo(int boardIdx) {
		return boardMapper.showBoardInfo(boardIdx);
	}

}
