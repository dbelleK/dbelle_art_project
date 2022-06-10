package com.dbellart.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dbellart.web.domain.Board;
import com.dbellart.web.domain.BoardMain;
import com.dbellart.web.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	//여기에 제목,내용을 작성해서 보냈어 /qAndaPro로 그럼 이제 난 이걸 top/notice 페이지에 보이게 할거야
	@PostMapping("/qAndaPro")
	public String qAndaPro(Board board, Model model) {
		
		boardService.addBoardInfo(board);
		Board writeMain = boardService.showBoardInfo(board.getBoardIdx());
		model.addAttribute("writeMain", writeMain);
		
		return "top/notice";
	}
	
	//ModelAndView랑 Model의 차이가 먼데
//	@RequestMapping(path ="qAndaMain")
//	public ModelAndView notice(int boardIdx){
//
//		Board writeMain = boardService.showBoardInfo(boardIdx);
//		BoardMain boardMain = new BoardMain();
//		if(writeMain != null) {
//			boardMain.setBoardMainIdx(writeMain.getBoardIdx());
//			boardMain.setTitleMain(writeMain.getTitle());
//			boardMain.setContentMain(writeMain.getContent());
//		}
//	
//		return new ModelAndView("top/notice")
//				.addObject("boardMain",boardMain);
//	}
	
//	@PostMapping("/qAndaMain")
//	public String qAndaMain(int boardIdx, Model model){
//		
//		List<Board> writeMain = boardService.showBoardInfo(boardIdx);
//		model.addAttribute("writeMain", writeMain);
//		
//		return "top/notice";
//	}

}
