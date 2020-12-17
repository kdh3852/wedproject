package cs.dit.command;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.bdao.boardDAO;
import cs.dit.bdto.boardDTO;

public class MUpdateCommand implements MCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");  //한글 처리
		
		boardDTO dto = new boardDTO();
		
		dto.setTitle(request.getParameter("title"));
		dto.setWriter(request.getParameter("writer"));
		dto.setContent(request.getParameter("content"));
	
		dto.setJoinDate(Date.valueOf(request.getParameter("joinDate"))); //문자열로 받은 매개변수를 Date형으로 변환
		
		boardDAO dao = new boardDAO();

		dao.update(dto);//DB에 변경된 데이터 업데이트
	}
}
