package cs.dit.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.bdao.boardDAO;
import cs.dit.bdto.boardDTO;

public class MInsertCommand implements MCommand{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		boardDTO dto = new boardDTO();	
		
		dto.setTitle(request.getParameter("title"));		
		dto.setWriter(request.getParameter("writer"));
		dto.setContent(request.getParameter("content"));
		
		boardDAO dao = new boardDAO();	
		dao.insert(dto);			
	}
}

