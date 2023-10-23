package kr.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.spring.entity.Board;
import kr.spring.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/list")
	public String getList(Model model) {
		
		List<Board> list = boardService.getList();
//		for(Board vo : list) {
//			System.out.println(vo.toString());
//		}
		model.addAttribute("list", list);
		
		return "list";
	}
	
	
	@PostMapping("/register")
	public String register(Board vo) {
		boardService.register(vo);
		return "redirect:/list";

	}
	
	@GetMapping("/get") // responsebody...머라고.....? 후...
	public @ResponseBody Board get(@RequestParam("idx") Long idx) {
		Board vo = boardService.get(idx);
		return vo;
	}
	
	@GetMapping("/remove")
	public String remove(@RequestParam("idx") Long idx) {
		boardService.delete(idx);
		return "redirect:/list";
	}
	
	
	@PostMapping("/modify")
	public String modify(Board vo) {
		boardService.update(vo);
		return "redirect:/list";
	}
	
}
