package Servlet;

import Bean.*;
import Dao.ControlDao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;

/**
 * Servlet implementation class NewsServlet
 */
@WebServlet("/NewsServlet")
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("addNews".equals(method))addNews(request,response);
		if("deleteNews".equals(method))deleteNews(request,response);
	}
    
	public void addNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String company = request.getParameter("company");
		String detail = request.getParameter("detail");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(new Date());
		
		News news = new News();
		news.setTitle(title);
		news.setTime(time);
		news.setDetail(detail);
		news.setCompany(company);
		ControlDao.addNews(news);
		HttpSession session = request.getSession();
		session.removeAttribute("news_list");
		List<News> list = ControlDao.read();
		session.setAttribute("news_list",list);
		
		response.setCharacterEncoding("GBK");
		PrintWriter out = response.getWriter();
		out.println("<script language='javaScript'>alert(\"Ìí¼Ó³É¹¦!\");</script>");	
		response.setHeader("refresh","1;url = /zhucheng/news.jsp");
	}
	
	public void deleteNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
	    int id = Integer.parseInt(request.getParameter("newsid"));
	    ControlDao.deleteNews(id);
	    HttpSession session = request.getSession();
	    session.removeAttribute("news_list");
	    List<News> list = ControlDao.read();
	    session.setAttribute("news_list",list);
	    response.sendRedirect("../news.jsp");
	}
	
}
