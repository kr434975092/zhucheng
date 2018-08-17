package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.JobHunter;
import Bean.News;
import Bean.CV;
import Bean.Job;
import Dao.ControlDao;
import Dao.DBUtil;

/**
 * Servlet implementation class SServlet
 */
@WebServlet("/SServlet")
public class SServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SServlet() {
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
		if("login".equals(method))loginHunter(request,response);
		if("add".equals(method))addHunter(request,response);
		if("search".equals(method))search(request,response);
		if("update".equals(method))update(request,response);
		if("addjob".equals(method))addJob(request,response);
		if("person".equals(method)) {
			HttpSession session = request.getSession();
			JobHunter hunter = (JobHunter) session.getAttribute("login");
			session.removeAttribute("job_list1");
			if(hunter==null)response.sendRedirect("../Login.jsp");
			else {
				if(hunter.getType()==0)
				    response.sendRedirect("../Person.jsp");
				else if(hunter.getType()==2)
					response.sendRedirect("../news.jsp");
				else
					response.sendRedirect("../Positions.jsp");
			}
		}
		if("logout".equals(method)) {
			HttpSession session = request.getSession();
			JobHunter hunter = (JobHunter) session.getAttribute("login");
			session.removeAttribute("login");
			if(hunter.getType()==1) {
				session.removeAttribute("CJob_list");
			}
			if(hunter.getType()==0) {
				session.removeAttribute("per_CV");
		    	session.removeAttribute("per_Jobs");
			}
			if(hunter.getType()==2) {
				session.removeAttribute("news_list");
			}
			response.sendRedirect("../Index.jsp");
		}
		if("deleteJob".equals(method))deleteJob(request,response);
		if("per_CV".equals(method))PerCVs(request,response);
		if("Index_Search".equals(method))find(request,response);
	}

	public void addHunter(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("username");
		String pass = req.getParameter("password");
		String phone = req.getParameter("phone");
		System.out.println(name+" "+pass+" "+phone);
		JobHunter hunter = new JobHunter();
		hunter.setName(name);
		hunter.setPassword(pass);
		hunter.setPhone(phone);
		
		if(!ControlDao.addHunter(hunter)) { 
		   //resp.sendRedirect("../Register1.jsp"); 
		   resp.setCharacterEncoding("GBK");
		   PrintWriter out = resp.getWriter();
		   out.println("<script language='javaScript'> alert(\"该手机号已被注册!\");</script>");	
		   resp.setHeader("refresh","1;url = /zhucheng/Register1.jsp");
		  
		}
		else {
			 resp.setCharacterEncoding("GBK");
			 PrintWriter out = resp.getWriter();
			 out.println("<script language='javaScript'> alert(\"注册成功,跳往登录界面!\");</script>");	
			 resp.setHeader("refresh","1;url = /zhucheng/Login.jsp");
		}
	}
	public void loginHunter(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		String name = req.getParameter("phone");
		String pass = req.getParameter("password");
		JobHunter hunter = ControlDao.loginHunter(name, pass);
		
		if(hunter==null) {
			//resp.sendRedirect("../Login.jsp");
			resp.setCharacterEncoding("GBK");
			PrintWriter out = resp.getWriter();
			out.println("<script language='javaScript'>alert(\"信息有误,请重新输入\");</script>");	
			resp.setHeader("refresh","1;url = /zhucheng/Login.jsp");
			
		}else {
			HttpSession session = req.getSession();
			session.setAttribute("login",hunter);
			if(hunter.getType()==0)
			    resp.sendRedirect("../Person.jsp");
			else if(hunter.getType()==2) {
				List<News> list = ControlDao.read();
				session.setAttribute("news_list",list);
				resp.sendRedirect("../news.jsp");
			}
			else {
				//将该公司的所有信息搜索出来
				List<Job>list = ControlDao.joblist(hunter.getName());
				session.setAttribute("CJob_list", list);
				resp.sendRedirect("../Positions.jsp");	
			}
		}
			
	}
	public void search(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		String content = req.getParameter("kd");
			//去写dao里面的方法
		List<Job>list = ControlDao.search(content);
		HttpSession session = req.getSession();
		session.removeAttribute("job_list1");
		session.setAttribute("job_list1",list);
		resp.sendRedirect("../CompanyList.jsp");

	}
	public void find(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		String content = req.getParameter("kd");
		if(content.equals("C  "))content = "C++";
		//去写dao里面的方法
		List<Job>list = ControlDao.search(content);
		HttpSession session = req.getSession();
		session.removeAttribute("job_list1");
		session.setAttribute("job_list1",list);
		resp.sendRedirect("../CompanyList.jsp");
	}
	public void update(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException {
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("jobhunter_id"));
		System.out.println(id);
		String name = req.getParameter("username");
		String identify = req.getParameter("textfield2");
		String sex = req.getParameter("sex");
		String address = req.getParameter("address");
		String edu = req.getParameter("edu");
		String birthday = req.getParameter("select2")+"月"+req.getParameter("select3")+"日";
		String workexp = req.getParameter("gongzuo");
		String hopejob = req.getParameter("hopejob");
		String exp = req.getParameter("exp");
		String eduback = req.getParameter("eduback");
		String selftalk = req.getParameter("selftalk");
		String showwork = req.getParameter("showwork");
		//JobHunter hunter = new JobHunter();
		
		HttpSession session = req.getSession();
		
		JobHunter hunter = (JobHunter)session.getAttribute("login");
		session.removeAttribute("login");
		hunter.setId(id);
		hunter.setName(name);
		hunter.setIdentify(identify);
		hunter.setSex(sex);
		hunter.setEdu(edu);
		hunter.setAddress(address);
		hunter.setBirthday(birthday);
		hunter.setWorkexp(workexp);
		hunter.setHopejob(hopejob);
		hunter.setEduback(eduback);
		hunter.setExp(exp);
		hunter.setSelftalk(selftalk);
		hunter.setShowwork(showwork);
		ControlDao.personalupdate(hunter);
		System.out.println(hunter.getName());
		//System.out.println("hahhahahwdwadawfeaf");
		session.setAttribute("login",hunter);
		resp.setCharacterEncoding("GBK");
		PrintWriter out = resp.getWriter();
		out.println("<script language='javaScript'>alert(\"修改成功!\");</script>");	
		resp.setHeader("refresh","1;url = /zhucheng/Person.jsp");
	}
	public void addJob(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		String jobkind = req.getParameter("positionType");
		String job = req.getParameter("positionName");
		String depart = req.getParameter("department");
		String attribute = req.getParameter("jobNature");
		String salary = req.getParameter("salaryMin")+"k-"+req.getParameter("salaryMax")+"k";
		String number = req.getParameter("numberMin")+"-"+req.getParameter("numberMax")+"人";
		String city = req.getParameter("workAddress");
		String experience = req.getParameter("workYear");
		String edu = req.getParameter("education");
		String advantage = req.getParameter("positionAdvantage");
		String duty = req.getParameter("miaoshu");
		String place = req.getParameter("positionAddress");
		String email = req.getParameter("email");
		String company = req.getParameter("companyName");
	
		Job jobs = new Job();
		jobs.setJobkind(jobkind);
		jobs.setJob(job);
		jobs.setDepart(depart);
		jobs.setAttribute(attribute);
		jobs.setSalary(salary);
		jobs.setNumber(number);
		jobs.setCity(city);
		jobs.setExperience(experience);
		jobs.setEdu(edu);
		jobs.setAdvantage(advantage);
		jobs.setDuty(duty);
		jobs.setPlace(place);
		jobs.setEmail(email);
		jobs.setCompany(company);
		
		ControlDao.addJob(jobs);
		HttpSession session = req.getSession();
		session.removeAttribute("CJob_list");
		List<Job>list = ControlDao.joblist(company);
		session.setAttribute("CJob_list", list);
		resp.setCharacterEncoding("GBK");
		PrintWriter out = resp.getWriter();
		out.println("<script language='javaScript'>alert(\"添加成功!\");</script>");	
		resp.setHeader("refresh","1;url = /zhucheng/Positions.jsp");
	}
	
	public void updateJob(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("jobid"));
		String jobkind = req.getParameter("positionType");
		String job = req.getParameter("positionName");
		String depart = req.getParameter("department");
		String attribute = req.getParameter("jobNature");
		String salary = req.getParameter("salaryMin")+"k-"+req.getParameter("salaryMax")+"k";
		String number = req.getParameter("numberMin")+"-"+req.getParameter("numberMax")+"人";
		String city = req.getParameter("workAddress");
		String experience = req.getParameter("workYear");
		String edu = req.getParameter("education");
		String advantage = req.getParameter("positionAdvantage");
		String duty = req.getParameter("miaoshu");
		String place = req.getParameter("positionAddress");
		String email = req.getParameter("email");
		String company = req.getParameter("CompanyName");
	
		Job jobs = new Job();
		jobs.setId(id);
		jobs.setJobkind(jobkind);
		jobs.setJob(job);
		jobs.setDepart(depart);
		jobs.setAttribute(attribute);
		jobs.setSalary(salary);
		jobs.setNumber(number);
		jobs.setCity(city);
		jobs.setExperience(experience);
		jobs.setEdu(edu);
		jobs.setAdvantage(advantage);
		jobs.setDuty(duty);
		jobs.setPlace(place);
		jobs.setEmail(email);
		jobs.setCompany(company);
		
		ControlDao.updateJob(jobs);
		HttpSession session = req.getSession();
		List<Job>list = ControlDao.joblist(company);
		session.removeAttribute("CJob_list");
		session.setAttribute("CJob_list", list);
		resp.sendRedirect("../Positions.jsp");	
	}
	
	public static void deleteJob(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("jobid"));
		String company = req.getParameter("company");
		ControlDao.deleteJob(id);
		HttpSession session = req.getSession();
		List<Job>list = ControlDao.joblist(company);
		session.removeAttribute("CJob_list");
		session.setAttribute("CJob_list", list);
		resp.sendRedirect("../Positions.jsp");	
	}
	
	public void PerCVs(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException{ 
		HttpSession session = req.getSession();
		JobHunter hunter = (JobHunter) session.getAttribute("login");
		if(hunter==null)resp.sendRedirect("../Login.jsp");
		else {
			String phone = hunter.getPhone();
			List<CV>cvs = ControlDao.cvs(phone);
			session.setAttribute("per_CV",cvs);
			List<Job>jobs = ControlDao.CVtoJob(cvs);
			session.setAttribute("per_Jobs",jobs);
			resp.sendRedirect("../per_CV.jsp");
		}
	}
}
