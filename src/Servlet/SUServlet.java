package Servlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspsmart.upload.SmartUpload;

import Bean.CV;
import Bean.Job;
import Bean.JobHunter;
import Dao.ControlDao;
/**
 * Servlet implementation class SUServlet
 */
@WebServlet("/SUServlet")
public class SUServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SUServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		if("addCv".equals(method))upload(request,response);
		if("deleteCv".equals(method))deleteCV(request,response);
		if("perCV_del".equals(method))deletePerCV(request,response);
	}
    public void upload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	request.setCharacterEncoding("utf-8");
    	//String filePath = getServletContext().getRealPath("/")+"CV";
    	String filePath ="CV";
    	System.out.println(filePath);
		File file = new File(filePath);
		if(!file.exists())file.mkdirs();
		int jobId = Integer.parseInt(request.getParameter("jobId"));
		int seekId = Integer.parseInt(request.getParameter("seekId"));
		//System.out.println(company+"  "+job+"  "+phone+"  "+name);
		JobHunter jobhunter = ControlDao.load(seekId);
		String name = jobhunter.getName();
		String phone = jobhunter.getPhone();
		Job job1 = ControlDao.search(jobId);
		String company = job1.getCompany();
		String job = job1.getJob();
		SmartUpload su = new SmartUpload();
		su.initialize(getServletConfig(),request,response);
		
		try {
			su.setDeniedFilesList("rar,jsp,js");
			su.upload();
			su.save(filePath);
			
		    com.jspsmart.upload.File tempFile = su.getFiles().getFile(0);
		    CV cv = new CV();
		    cv.setCompany(company);
		    cv.setJob(job);
		    cv.setName(name);
		    cv.setPhone(phone);
		    cv.setUrl(filePath+"\\"+tempFile.getFileName());
		    ControlDao.addCV(cv);
			response.setCharacterEncoding("GBK");
		    PrintWriter out = response.getWriter();
		    out.println("<script language='javaScript'>alert(\"上传成功!\");</script>");	
		    response.setHeader("refresh","1;url = /zhucheng/CompanyList.jsp");
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}
    }
    public void deleteCV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	int id = Integer.parseInt(request.getParameter("CVid"));
    	String url = ControlDao.loadUrl(id);
    	ControlDao.deleteCV(id, url);
    	//File file = new File(url);
    	//file.delete();
    	response.sendRedirect("../Positions.jsp");
    }
    public void deletePerCV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	int id = Integer.parseInt(request.getParameter("CVid"));
    	String url = ControlDao.loadUrl(id);
    	ControlDao.deleteCV(id, url);
    	response.sendRedirect("../Person.jsp");
    }
}
