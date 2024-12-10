package mvc.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.database.DBConnection;

public class BoardDAO extends HttpServlet {
	private static BoardDAO instance;
	
	private BoardDAO() {
	}
	
	public static BoardDAO getInstance() {
		if(instance==null)
			instance=new BoardDAO();
			return instance;
	}
	public int getListCount() {
		return 0;
	}
	public ArrayList<BoardDTO> getBoardList(int page, int limit, String items, String text) {
		return null;
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			doPost(request, response);
		}
		public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String RequestURI=request.getRequestURI();
			String contextPath=request.getContextPath();
			String command=RequestURI.substring(contextPath.length());
			
			response.setContentType("text/html; charset=utf-8");
			request.setCharacterEncoding("utf-8");
			
			if(command.equals("/BoardListAction.do")) {
				requestBoardList(request);
				RequestDispatcher rd = request.getRequestDispatcher("./board/list.jsp");
				rd.forward(request, response);
			} else if (command.equals("/BoardWriteForm.do")) {
				requestLoginName(request);
				RequestDispatcher rd=request.getRequestDispatcher("./board/writeForm.jsp");
				rd.forward(request, response);
			} else if (command.equals("./BoardWriteAction.do")) {
				requestBoardWrite(request);
				RequestDispatcher rd =request.getRequestDispatcher("./BoardListAction.do");
				rd.forward(request, response);
			}
		}
		private void requestBoardWrite(HttpServletRequest request) {
			// TODO Auto-generated method stub
			
		}
		private void requestLoginName(HttpServletRequest request) {
			// TODO Auto-generated method stub
			
		}
		private void requestBoardList(HttpServletRequest request) {
			// TODO Auto-generated method stub
			
		}
		
		public void updateHit(int num) {
			
		}
		public void BoardDTO getBoardByNum(int num, int page) {
			
		}
		public String getLoginNameById(String id) {
			
		}
		public void insertBoard(BoardDTO board) {
			
		}
		public void updateBoard(BoardDTO board) {
			
		}
}