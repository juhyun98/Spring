package kr.spring.controller;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.spring.entity.Board;
import kr.spring.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Autowired
	private BoardService service;
	// BoardService -> interface
	// BoardServiceImpl -> BoardService로 업캐스팅 된다
	
	@PostMapping("register")
	public String register(Board vo, RedirectAttributes rttr) {
		//System.out.println(vo.toString());
		service.register(vo);
		//System.out.println(vo.toString());
		rttr.addFlashAttribute("result", vo.getIdx());
		return "redirect:/board/list";
	}
	
	@GetMapping("register")
	public String register() {
		return "board/register";
	}
	
	
	@GetMapping("/list")
	public String boardList(Model model) {
		List<Board> list = service.getList();
		model.addAttribute("list", list);
		return "board/list";
	}
	
	
	
	
}



