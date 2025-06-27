package com.kh.board;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.board.model.vo.Board;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/board")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		List<Board> list = (List<Board>) session.getAttribute("list");
		
		if(list == null) {
			list = new ArrayList<>();
			list.add(new Board(1, "kh게시판 1번글","admin","게시글 내용 1",new Date()));
			list.add(new Board(2, "kh게시판 2번글","admin","게시글 내용 2",new Date()));
			list.add(new Board(3, "kh게시판 3번글","mkm","게시글 내용 3",new Date()));
			list.add(new Board(4, "kh게시판 4번글","user01","게시글 내용 4",new Date()));
			list.add(new Board(5, "kh게시판 5번글","user02","게시글 내용 5",new Date()));
			
			session.setAttribute("list", list);
		}
	
		request
		.getRequestDispatcher("/board/board.jsp")
		.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
