package mvc.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import mvc.model.BoardDAO;
import mvc.model.BoardDTO;

public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT=5;
	
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
		} else if (command.equals("/BoardViewAction.do")) {
			requestBoardView(request);
			RequestDispatcher rd=request.getRequestDispatcher("./board/writeForm.jsp");
			rd.forward(request, response);
		} else if (command.equals("./BoardView.do")) {
			RequestDispatcher rd =request.getRequestDispatcher("./BoardListAction.do");
			rd.forward(request, response);
		} else if (command.equals("./BoardUpdateAction.do")) {
			requestBoardUpdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		} else if (command.equals("./BoardDeleteAction.do")) {
			requestBoardDelete(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}
	}
	
	private void requestBoardDelete(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}
	private void requestBoardUpdate(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}
	private void requestBoardView(HttpServletRequest request) {
		// TODO Auto-generated method stub
		
	}
	public void requestBoardList(HttpServletRequest request) {
		
	}

}
