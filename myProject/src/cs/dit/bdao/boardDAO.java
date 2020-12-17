package cs.dit.bdao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.bdto.boardDTO;

public class boardDAO {
	private DataSource ds;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	

	public boardDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/JSP");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if(con !=null) {
				con.close();
				con=null;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	

	public ArrayList<boardDTO> list(){
		String sql = "select * from board";
		
		ArrayList<boardDTO> dtos = new ArrayList<boardDTO>();	
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {		
				boardDTO dto = new boardDTO();
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContent(rs.getString("content"));
				dto.setJoinDate(rs.getDate("joinDate"));
				dtos.add(dto);		
			}
			rs.close(); pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dtos;
	}


	public boardDTO view(String title) {
		String sql ="select writer, content, joinDate from board where title=?";
		boardDTO dto = new boardDTO();
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {	
				dto.setTitle(title);
				dto.setWriter(rs.getString("writer"));
				dto.setContent(rs.getString("content"));
				dto.setJoinDate(rs.getDate("joinDate"));
			}
			
			rs.close();
			pstmt.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dto;	
	}
	

	public boolean insert(boardDTO dto) {
		String sql = "insert into board(title, writer, content, joinDate) values(?,?,?, sysdate)"; 
		boolean check = false;
		try {
			con = ds.getConnection();  
			pstmt =con.prepareStatement(sql);  	
			pstmt.setString(1, dto.getTitle());	
			pstmt.setString(2, dto.getWriter());
			pstmt.setString(3, dto.getContent());
		
			
			int x = pstmt.executeUpdate();	

			if(x<1) {	
				System.out.println("정상적으로 저장되지 않았습니다.");
			}else {		
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert 오류 : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
	
	public boolean update(boardDTO dto) {
		String sql = "update board set writer=?, content=?, joinDate=? where title=?";
		boolean check = false;
		try {
			con = ds.getConnection();
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, dto.getWriter());
			pstmt.setString(2, dto.getContent());
			pstmt.setDate(3, dto.getJoinDate());
			pstmt.setString(4, dto.getTitle());
			
			int x = pstmt.executeUpdate();	

			if(x<1) {
				System.out.println("정상적으로 저장되지 않았습니다.");
			}else {
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert 오류 : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
		
	public boolean delete(String title) {
		String sql = "delete from board where title=?";
		boolean check = false;
		try {
			con = ds.getConnection();
			pstmt =con.prepareStatement(sql);
			pstmt.setString(1, title);
			
			int x = pstmt.executeUpdate();	

			if(x<1) {
				System.out.println("정상적으로 삭제되지 않았습니다.");
			}else {
				check=true;
			}
			pstmt.close();
		}catch(SQLException ex) {
			System.out.println("SQL insert 오류 : " + ex.getLocalizedMessage());
			check = false;
		}
		return check;
	}
}	
