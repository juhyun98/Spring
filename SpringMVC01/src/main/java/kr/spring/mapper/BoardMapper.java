package kr.spring.mapper;

import java.sql.DriverManager;
import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.spring.entity.Board;

@Mapper // MyBatis가 interface를 찾기위해 달아주는 부분
public interface BoardMapper {
	

	public List<Board> getLists(); // 게시글 전체보기기능
	
	@Insert("INSERT INTO BOARD(TITLE, CONTENT, WRITER) VALUES(#{title},#{content},#{writer})")
	public void boardInsert(Board board);
	
}







