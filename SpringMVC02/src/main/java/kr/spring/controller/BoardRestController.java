package kr.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.spring.entity.Board;
import kr.spring.mapper.BoardMapper;

@RestController
public class BoardRestController {
	
	// RestController
	// 비동기 방식의 일만 처리하는 Controller
	// Rest 전송방식을 처리할 수 있다
	// - 요청 url + 전송방식(상태)을 묶어서 처리 가능
	// 사용이유 - url의 통일성 및 단순화
	
	@Autowired
	private BoardMapper mapper; // MyBatis한테 JDBC 실행하게 요청하는 객체
	
	@RequestMapping("/") // 요청 url로 들어왔을때 아래 기능을 수행하겠다 
	public String home() {
		System.out.println("홈 기능 수행");
		return "main"; 
	}
	
	@RequestMapping("/boardList.do")
	public List<Board> boardList() {
		List<Board> list = mapper.getLists();
		return list;
	}
	
	@RequestMapping("/boardInsert.do")
	public void boardInsert(Board board) {
		mapper.boardInsert(board);
	}
	
	@RequestMapping("/boardDelete.do")
	public void boardDelete(@RequestParam("idx") int idx) {
		System.out.println("게시글 삭제 기능 수행");
		mapper.boardDelete(idx);
	}
	
	@RequestMapping("/boardUpdate.do")
	public void boardUpdate(Board vo) {
		mapper.boardUpdate(vo);
	}
	
	@RequestMapping("/boardCount.do")
	public void boardCount(@RequestParam("idx") int idx) {
		mapper.boardCount(idx);
	}
	
	
}
