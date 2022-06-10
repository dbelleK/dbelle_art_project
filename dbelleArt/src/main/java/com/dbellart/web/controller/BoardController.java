package com.dbellart.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dbellart.web.domain.Board;
import com.dbellart.web.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@PostMapping("/qAndaPro")
	public String addBoardInfo(Board board) {
		boardService.addBoardInfo(board);
		return "top/notice";
	}
	
	@PostMapping("/qAndaMain")
	public String showBoardInfo(int boardIdx, Model model){

		List<Board> writeMain = boardService.showBoardInfo(boardIdx);
		model.addAttribute("writeMain", writeMain);
		return "qAndaMain";
	}

}
