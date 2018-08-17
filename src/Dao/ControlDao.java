package Dao;

import Bean.JobHunter;
import Bean.Job;
import Bean.CV;
import Bean.News;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.io.File;

public class ControlDao {
	
	public static List<Job> HotSpot(){  //怎么着数据表里面也有4条或者6条招聘信息吧。。。
		List<Job>list = new ArrayList<Job>();
		Connection con = DBUtil.getConnection();
	    PreparedStatement pre = null;
	    ResultSet rs = null;
	    Job job = null;
	    String sql = "select * from Jobs";
	    int len = 0;
	    try {
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()&&len<6) {
				len++;
				job = new Job();
				job.setId(rs.getInt("id"));
				job.setJob(rs.getString("job"));
				job.setSalary(rs.getString("salary"));
				job.setExperience(rs.getString("experience"));
				job.setAdvantage(rs.getString("advantage"));
				job.setEdu(rs.getString("edu"));
				job.setPlace(rs.getString("place"));
				job.setUrl(rs.getString("url"));
				job.setCompany(rs.getString("company"));
				job.setCompanykind(rs.getString("companykind"));
				job.setJobkind(rs.getString("jobkind"));
				job.setNumber(rs.getString("number"));
				job.setCity(rs.getString("city"));
				//System.out.println(job.toString());
				list.add(job);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
	    
		return list;
	}

	public static boolean addHunter(JobHunter hunter) {
		boolean flag = true;
        Connection con = DBUtil.getConnection();
        PreparedStatement pre = null;
        ResultSet rs = null;
        String sql = "select count(*) from Job_seek where phone = ?"; 
        try {
        	
			pre = con.prepareStatement(sql);
			pre.setString(1,hunter.getPhone());
			rs = pre.executeQuery();
			while(rs.next()) {
				if(rs.getInt(1)>0) {
					flag = false;
					break;
				}
			}
			if(flag) {
				sql ="insert into Job_seek(name,password,phone,type) values(?,?,?,?)";
				pre = con.prepareStatement(sql);
				pre.setString(1,hunter.getName());
				pre.setString(2,hunter.getPassword());
				pre.setString(3,hunter.getPhone());
				pre.setInt(4,0);
				pre.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		return flag;
	}

	public static JobHunter loginHunter(String name,String pass) {
		JobHunter hunter = null;
		Connection con = DBUtil.getConnection();
        PreparedStatement pre = null;
        ResultSet rs = null;
        String sql = "select * from Job_seek where phone = ?";
        int id_tmp = 0;
        String name_tmp = "";
        String pass_tmp = "";
        String identify = "";
        String birthday = "";
        String workexp = "";
        String address = "";
        String edu = "";
        String sex = "";
        String hopejob = "";
        String exp = "";
        String eduback = "";
        String selftalk = "";
        String showwork = "";
        int type = 0;
        try {
			pre = con.prepareStatement(sql);
			pre.setString(1,name);
			rs = pre.executeQuery();
			while(rs.next()) {
				id_tmp = rs.getInt("id");
				name_tmp = rs.getString("name");
				pass_tmp = rs.getString("password");
				identify = rs.getString("identify");
				birthday = rs.getString("birthday");
				workexp = rs.getString("workexp");
				address = rs.getString("address");
				edu = rs.getString("edu");
				sex = rs.getString("sex");
				hopejob = rs.getString("hopejob");
				exp = rs.getString("exp");
				eduback = rs.getString("eduback");
				selftalk = rs.getString("selftalk");
				showwork = rs.getString("showwork");
				type = rs.getInt("type");
				if(pass_tmp.equals(pass)) {
					hunter = new JobHunter();
					hunter.setId(id_tmp);
					hunter.setName(name_tmp);
					hunter.setPhone(name);
					hunter.setPassword(pass);
					hunter.setAddress(address);
					hunter.setEdu(edu);
					hunter.setSex(sex);
					hunter.setWorkexp(workexp);
					hunter.setIdentify(identify);
				    hunter.setBirthday(birthday);
				    hunter.setEduback(eduback);
				    hunter.setHopejob(hopejob);
				    hunter.setSelftalk(selftalk);
				    hunter.setShowwork(showwork);
				    hunter.setExp(exp);
				    hunter.setType(type);
					break;
				}
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.out.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		return hunter;
	}
	
	public static JobHunter load(int id) {
		JobHunter hunter = new JobHunter();
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from Job_seek where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1,id);
			rs = pre.executeQuery();
			while(rs.next()) {
				hunter.setAddress(rs.getString("address"));
				hunter.setBirthday(rs.getString("birthday"));
				hunter.setEdu(rs.getString("edu"));
				hunter.setIdentify(rs.getString("identify"));
				hunter.setName(rs.getString("name"));
				hunter.setPassword(rs.getString("password"));
				hunter.setPhone(rs.getString("phone"));
				hunter.setEdu(rs.getString("edu"));
				hunter.setSex(rs.getString("sex"));
				hunter.setWorkexp(rs.getString("workexp"));
				hunter.setHopejob(rs.getString("hopejob"));
				hunter.setExp(rs.getString("exp"));
				hunter.setEduback(rs.getString("eduback"));
				hunter.setSelftalk(rs.getString("selftalk"));
				hunter.setShowwork(rs.getString("showwork"));
				hunter.setType(rs.getInt("type"));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
		return hunter;
	}
	
	public static List<Job> search(String content){
		List<Job>list = new ArrayList<Job>(0);
		Job job = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql =null;
		if("".equals(content)||content==null)
		{
			sql = "select * from Jobs";
		}
		else
		{
			sql = "select * from Jobs where job like '%"+content+"%'";
		}
		try {
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()) {
				job = new Job();
				job.setId(rs.getInt("id"));
				job.setJob(rs.getString("job"));
				job.setSalary(rs.getString("salary"));
				job.setExperience(rs.getString("experience"));
				job.setAdvantage(rs.getString("advantage"));
				job.setEdu(rs.getString("edu"));
				job.setPlace(rs.getString("place"));
				job.setUrl(rs.getString("url"));
				job.setCompany(rs.getString("company"));
				job.setCompanykind(rs.getString("companykind"));
				job.setJobkind(rs.getString("jobkind"));
				job.setNumber(rs.getString("number"));
				job.setCity(rs.getString("city"));
				//System.out.println(job.toString());
				list.add(job);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
		return list;
	}
	

	
	public static List<Job> all(){
		List<Job>list = new ArrayList<Job>(0);
		Job job = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql =null;


			sql = "select * from Jobs";

	
		try {
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()) {
				job = new Job();
				job.setId(rs.getInt("id"));
				job.setJob(rs.getString("job"));
				job.setSalary(rs.getString("salary"));
				job.setExperience(rs.getString("experience"));
				job.setAdvantage(rs.getString("advantage"));
				job.setEdu(rs.getString("edu"));
				job.setPlace(rs.getString("place"));
				job.setUrl(rs.getString("url"));
				job.setCompany(rs.getString("company"));
				job.setCompanykind(rs.getString("companykind"));
				job.setJobkind(rs.getString("jobkind"));
				job.setNumber(rs.getString("number"));
				job.setCity(rs.getString("city"));
				//System.out.println(job.toString());
				list.add(job);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
		return list;
	}
	
	
	public static Job search(int id) {
		Job job = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from Jobs where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1,id);
			rs = pre.executeQuery();
			while(rs.next()) {
				job = new Job();
				job.setId(rs.getInt("id"));
				job.setJob(rs.getString("job"));
				job.setSalary(rs.getString("salary"));
				job.setExperience(rs.getString("experience"));
				job.setDuty(rs.getString("duty"));
				job.setAdvantage(rs.getString("advantage"));
				job.setEdu(rs.getString("edu"));
				job.setPlace(rs.getString("place"));
				job.setUrl(rs.getString("url"));
				job.setCompany(rs.getString("company"));
				job.setCompanykind(rs.getString("companykind"));
				job.setJobkind(rs.getString("jobkind"));
				job.setNumber(rs.getString("number"));
				job.setCity(rs.getString("city"));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.out.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
		return job;
	}
	public static void personalupdate(JobHunter hunter) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "update Job_seek set name = ?,identify = ?,sex = ?,birthday = ?,workexp = ?,address = ?,hopejob = ?,exp = ?,selftalk = ?,showwork = ?,eduback = ?,edu = ? where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,hunter.getName());
			pre.setString(2,hunter.getIdentify());
			pre.setString(3,hunter.getSex());
			pre.setString(4,hunter.getBirthday());
			pre.setString(5,hunter.getWorkexp());
			pre.setString(6,hunter.getAddress());
			pre.setString(7,hunter.getHopejob());
			pre.setString(8,hunter.getExp());
			pre.setString(9,hunter.getSelftalk());
			pre.setString(10,hunter.getShowwork());
			pre.setString(11,hunter.getEduback());
			pre.setString(12,hunter.getEdu());
			pre.setInt(13,hunter.getId());
			pre.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
	}
	
	public static void addJob(Job jobs) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "insert into Jobs("
		                   +"job,salary,"
				           +"experience,edu,"
		                   +"advantage,url,"
				           +"city,company,"
		                   +"jobkind,companykind,"
				           +"number,duty,"
		                   +"depart,place,email,attribute"
				           +") values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,jobs.getJob());
			pre.setString(2,jobs.getSalary());
			pre.setString(3,jobs.getExperience());
			pre.setString(4,jobs.getEdu());
			pre.setString(5,jobs.getAdvantage());
			pre.setString(6,"");
			pre.setString(7,jobs.getCity());
			pre.setString(8,jobs.getCompany());
			pre.setString(9,jobs.getJobkind());
			pre.setString(10,"");
			pre.setString(11,jobs.getNumber());
			pre.setString(12,jobs.getDuty());
			pre.setString(13,jobs.getDepart());
			pre.setString(14,jobs.getPlace());
			pre.setString(15,jobs.getEmail());
			pre.setString(16,jobs.getAttribute());
			pre.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
		    DBUtil.close(pre);
		    DBUtil.close(con);
		}
	}
	
	public static void updateJob(Job jobs) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "update Jobs set "
		                   +"job = ?,salary = ?,"
				           +"experience = ?,edu = ?,"
		                   +"advantage = ?,url = ?,"
				           +"city = ?,company = ?,"
		                   +"jobkind = ?,companykind = ?,"
				           +"number = ?,duty = ?,"
		                   +"depart = ?,place = ?,email = ?,attribute = ?"
				           +" where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,jobs.getJob());
			pre.setString(2,jobs.getSalary());
			pre.setString(3,jobs.getExperience());
			pre.setString(4,jobs.getEdu());
			pre.setString(5,jobs.getAdvantage());
			pre.setString(6,"");
			pre.setString(7,jobs.getCity());
			pre.setString(8,jobs.getCompany());
			pre.setString(9,jobs.getJobkind());
			pre.setString(10,"");
			pre.setString(11,jobs.getNumber());
			pre.setString(12,jobs.getDuty());
			pre.setString(13,jobs.getDepart());
			pre.setString(14,jobs.getPlace());
			pre.setString(15,jobs.getEmail());
			pre.setString(16,jobs.getAttribute());
			pre.setInt(17,jobs.getId());
			pre.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
		    DBUtil.close(pre);
		    DBUtil.close(con);
		}
	}
	
	public static List<Job>joblist(String name){
		List<Job>list = new ArrayList<Job>();
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		Job job = null;
		String sql = "select * from Jobs where company = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,name);
			rs = pre.executeQuery();
			while(rs.next()) {
				job = new Job();
				job.setId(rs.getInt("id"));
				job.setJob(rs.getString("job"));
				job.setAttribute(rs.getString("attribute"));
				job.setSalary(rs.getString("salary"));
				job.setExperience(rs.getString("experience"));
				job.setDuty(rs.getString("duty"));
				job.setAdvantage(rs.getString("advantage"));
				job.setEdu(rs.getString("edu"));
				job.setPlace(rs.getString("place"));
				job.setUrl(rs.getString("url"));
				job.setCompany(rs.getString("company"));
				job.setCompanykind(rs.getString("companykind"));
				job.setJobkind(rs.getString("jobkind"));
				job.setNumber(rs.getString("number"));
				job.setCity(rs.getString("city"));
				list.add(job);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
		return list;
	}
	
	public static List<CV>getCVs(String company){
		List<CV>list = new ArrayList<CV>();
		CV cv = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from CV where company = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,company);
			rs = pre.executeQuery();
			while(rs.next()) {
				
					cv = new CV();
					cv.setId(rs.getInt("id"));
					cv.setCompany(company);
					cv.setPhone(rs.getString("phone"));
					cv.setJob(rs.getString("jobname"));
					cv.setName(rs.getString("name"));
					cv.setUrl(rs.getString("url"));
					list.add(cv);
				
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
		return list;
	}
	
	public static void deleteJob(int id) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "delete from Jobs where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1,id);
			pre.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
	}
	
	public static void addCV(CV cv) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "insert into CV(name,phone,company,jobname,url) values(?,?,?,?,?)";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,cv.getName());
			pre.setString(2,cv.getPhone());
			pre.setString(3,cv.getCompany());
			pre.setString(4,cv.getJob());
			pre.setString(5,cv.getUrl());
			pre.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.out.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
	}
	
	public static List<CV> cvs(Job job){
		List<CV>list = new ArrayList<CV>();
		String jobname = job.getJob();
		String company = job.getCompany();
		CV cv = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from CV where jobname = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,jobname);
			rs = pre.executeQuery();
			while(rs.next()) {
				String company1 = rs.getString("company");
				if(company1.equals(company)) {
					cv = new CV();
					cv.setId(rs.getInt("id"));
					cv.setCompany(company1);
					cv.setPhone(rs.getString("phone"));
					cv.setJob(jobname);
					cv.setName(rs.getString("name"));
					cv.setUrl(rs.getString("url"));
					list.add(cv);
				}
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
		return list;
	}
	public static void deleteCV(int id,String url) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "delete from CV where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1,id);
			pre.executeUpdate();
            File file = new File(url);
           
            file.delete();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
	}
	
	public static List<CV>cvs(String phone){
		List<CV>list = new ArrayList<CV>();
		CV cv = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from CV where phone = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,phone);
			rs = pre.executeQuery();
			while(rs.next()) {
					cv = new CV();
					cv.setId(rs.getInt("id"));
					cv.setCompany(rs.getString("company"));
					cv.setPhone(rs.getString("phone"));
					cv.setJob(rs.getString("jobname"));
					cv.setName(rs.getString("name"));
					cv.setUrl(rs.getString("url"));
					list.add(cv);
				
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		return list;
	}
	
	public static String loadUrl(int id) {
		String str = null;
		Connection con = DBUtil.getConnection();
		String sql = "select * from CV where id = ?";
		PreparedStatement pre = null;
		ResultSet rs = null;
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1,id);
			rs = pre.executeQuery();
			while(rs.next()) {
				str = rs.getString("url");
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.out.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		return str;
	}
	
	public static List<Job> CVtoJob(List<CV>list){
		List<Job>joblist = new ArrayList<Job>();
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from Jobs where job = ? and company = ?";
		Job job = null;
		int len = list.size();
		for(int i = 0;i < len;++i) {
			try {
				pre = con.prepareStatement(sql);
				pre.setString(1,list.get(i).getJob());
				pre.setString(2,list.get(i).getCompany());
				rs = pre.executeQuery();
				while(rs.next()) {
					job = new Job();
					job.setId(rs.getInt("id"));
					job.setJob(rs.getString("job"));
					job.setAttribute(rs.getString("attribute"));
					job.setSalary(rs.getString("salary"));
					job.setExperience(rs.getString("experience"));
					job.setDuty(rs.getString("duty"));
					job.setAdvantage(rs.getString("advantage"));
					job.setEdu(rs.getString("edu"));
					job.setPlace(rs.getString("place"));
					job.setUrl(rs.getString("url"));
					job.setCompany(rs.getString("company"));
					job.setCompanykind(rs.getString("companykind"));
					job.setJobkind(rs.getString("jobkind"));
					job.setNumber(rs.getString("number"));
					job.setCity(rs.getString("city"));
					joblist.add(job);
				}
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				System.err.println(e.getMessage());
			}
			
		}
		DBUtil.close(rs);
		DBUtil.close(pre);
		DBUtil.close(con);
		return joblist;
	}
	
	public static Job getJob(String company,String jobname) {
		Job job = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from Jobs where job = ? and company = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,jobname);
			pre.setString(2,company);
			rs = pre.executeQuery();
			while(rs.next()) {
				job = new Job();
				job.setId(rs.getInt("id"));
				job.setJob(rs.getString("job"));
				job.setAttribute(rs.getString("attribute"));
				job.setSalary(rs.getString("salary"));
				job.setExperience(rs.getString("experience"));
				job.setDuty(rs.getString("duty"));
				job.setAdvantage(rs.getString("advantage"));
				job.setEdu(rs.getString("edu"));
				job.setPlace(rs.getString("place"));
				job.setUrl(rs.getString("url"));
				job.setCompany(rs.getString("company"));
				job.setCompanykind(rs.getString("companykind"));
				job.setJobkind(rs.getString("jobkind"));
				job.setNumber(rs.getString("number"));
				job.setCity(rs.getString("city"));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		return job;
	}
	
	public static void addNews(News news) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "insert into News(time,title,detail,company) values(?,?,?,?)";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1,news.getTime());
			pre.setString(2,news.getTitle());
			pre.setString(3,news.getDetail());
			pre.setString(4,news.getCompany());
			pre.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		
	}
	
	public static void deleteNews(int id) {
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		String sql = "delete  from News where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1,id);
			pre.executeUpdate();
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(pre);
			DBUtil.close(con);
		}
	}
	
	public static List<News> read(){
		List<News> list = new ArrayList<News>();
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		News news = null;
		String sql = "select * from News";
		try {
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while(rs.next()) {
				news = new News();
				news.setId(rs.getInt("id"));
				news.setTime(rs.getString("time"));
				news.setTitle(rs.getString("title"));
				news.setDetail(rs.getString("detail"));
				news.setCompany(rs.getString("company"));
				list.add(news);
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
			DBUtil.close(rs);
			DBUtil.close(pre);
			DBUtil.close(con);
		}
		return list;
	}
	
	public static News read(int id) {
		News news = null;
		Connection con = DBUtil.getConnection();
		PreparedStatement pre = null;
		ResultSet rs = null;
		String sql = "select * from News where id = ?";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1,id);
			rs = pre.executeQuery();
			while(rs.next()) {
				news = new News();
				news.setId(id);
				news.setTime(rs.getString("time"));
				news.setCompany(rs.getString("company"));
				news.setTitle(rs.getString("title"));
				news.setDetail(rs.getString("detail"));
			}
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			System.err.println(e.getMessage());
		}finally {
		    DBUtil.close(rs);
		    DBUtil.close(pre);
		    DBUtil.close(con);
		}
		
		return news;
	}
	
}
