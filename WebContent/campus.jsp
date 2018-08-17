<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.*" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.*" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>助成网-最专业的互联网招聘平台</title>
<style>
    #frame{position:absolute;width:300px;height:200px;overflow:hidden;border-radius:5px}
    #dis{position:absolute;left:-50px;top:-10px;opacity:.5}
    #dis li{display:inline-block;width:200px;height:20px;margin:0 50px;float:left;text-align:center;color:#fff;border-radius:10px;background:#000}
    #photos img{float:left;width:300px;height:200px}
    #photos {  position: absolute;z-index:9;  width: calc(300px * 4);/*---修改图片数量的话需要修改下面的动画参数*/  }
    .play{ animation: ma 20s ease-out infinite alternate;}
    @keyframes ma {
        0%,25% {        margin-left: 0px;       }
        30%,50% {       margin-left: -300px;    }
        55%,75% {       margin-left: -600px;    }
        80%,100% {       margin-left: -900px;    }

    }
</style>
<style type="text/css">

.tuijian {
	font-size: 18px;
	font-style: italic;
	font-weight: bold;
}
.hot {
	font-style: normal;
	color: #F00;
	font-size: 16px;
	font-weight: bold;
}
</style>
<meta property="qc:admins" content="23635710066417756375" />
<meta name="description" content="助成招聘  助成招聘">
<meta name="keywords" content="互联网招聘, 助成互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<%
     session.removeAttribute("job_list1");
     
%>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    	  <a class="logo" href="#"><img width="276" height="47" alt="助成招聘-专注互联网招聘" src="style/images/助成1.png"></a>
    	  <ul class="reset" id="navheader">
		    <li ><a href="Index.jsp">首页</a></li>
    			<li ><a href="CompanyList.jsp" >招聘</a></li>
    			<li ><a href="campus.jsp">校园招聘</a></li>
    				    			<li ><a href="<%=request.getContextPath() %>/Servlet/SServlet?method=person" rel="nofollow">我的</a></li>
	    							    			<li ><a href="tool.jsp" rel="nofollow">工具箱</a></li>
   		  </ul>
        	          <ul class="loginTop">
        	        	<%
        	        	   JobHunter hunter = (JobHunter)session.getAttribute("login");
        	        	   String tag1 = null;
        	        	   String url1 = null;
        	        	   String tag2 = null;
        	        	   String url2 = null;
        	        	   if(hunter==null){
        	        		   tag1 = "登陆";
        	        		   url1 = "Login.jsp";
        	        		   tag2 = "注册";
        	        		   url2 = "Register1.jsp";
        	        	   }else{
        	        		   if(hunter.getType()==0){
        	        			   tag1 = hunter.getPhone()+",你好!";
            	        		   url1 = "Person.jsp";
        	        		   }else if(hunter.getType()==1){
        	        			   tag1 = hunter.getName();
        	        			   url1 = "Positions.jsp";
        	        		   }else{
        	        			   tag1 = "管理员";
        	        			   url1 = "news.jsp";
        	        		   }
        	        		   tag2 = "退出登陆";
        	        		   url2 = "Servlet/SServlet?method=logout";
        	        	   }
        	        	%>
            	<li><a href="<%=url1 %>" rel="nofollow"><%=tag1 %></a></li> 
            	<li>|</li>
            	<li><a href="<%=url2 %>" rel="nofollow"><%=tag2 %></a></li>
            </ul>
      </div>
   	  <table width="1025" border="0" align="center">
    	  <tr>
    	    <td width="621" height="33">&nbsp;</td>
    	    <td width="122" class="tuijian">&nbsp;</td>
    	    <td width="268" class="tuijian">&nbsp;</td>
  	    </tr>
  	  </table>

   	  
     
      <table width="1025" border="0" align="center">
        <tr>
          <td width="608" rowspan="5"><img src="style/images/timg.png" width="632" height="180"></td>
          <td width="24">&nbsp;</td>
          <td width="88" class="tuijian">今日推荐</td>
          <td width="287" class="hot">HOT</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><a href="http://news.163.com/17/1229/10/D6QM0D7N0001875P.html" title="制造烟花的79岁非遗继承人杨风申免于刑事处罚">制造烟花的79岁非遗继承人杨风申免于刑事处罚</a></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><a href="http://news.163.com/17/1229/00/D6PJRAPB0001875O.html" title="渣男婚前出轨年轻女同事 婚礼前5天将未婚妻谋杀">渣男婚前出轨年轻女同事 婚礼前5天将未婚妻谋</a></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><a href="http://news.163.com/17/1222/09/D68G8SOC00018RQG.html" title="2017年12星座flag扑街盘点">2017年12星座flag扑街盘</a></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="2"><a href="http://news.163.com/17/1228/23/D6PGLGPF0001875N.html" title="局长找人管9个小金库 还时常让整点'野味儿'">局长找人管9个小金库 还时常让整点</a></td>
        </tr>
      </table>
      
      
   	  <%
   	      List<News>list = ControlDao.read();
   	      int len = list.size();
   	      
   	 
   	  %>
      <table width="1025" border="0" align="center">
        <tr>
          <td height="33"><hr></td>
        </tr>
      </table>
      <table width="1025" border="0" align="center">
      <%
      for(int i = len - 1;i>=0;--i){
      %>
        <tr>
          <td width="182" rowspan="2"><img src="style/images/5caf8f9631114bf990f87bb11360653e.png" width="118" height="118"></td>
          <td width="25" height="44">&nbsp;</td>
          <td width="371" colspan="2"><h2><a href="Job3.jsp?newsid=<%=list.get(i).getId() %>" title="<%=list.get(i).getTitle() %>"><%=list.get(i).getTitle() %></a></h2></td>
        
          <td width="429">&nbsp;</td>
        </tr>
        <tr>
          <td height="29">&nbsp;</td>
          <td><%=list.get(i).getCompany() %></td>
          <td>&nbsp;</td>
        </tr>
         <%} %>
      </table>
     
      <p>&nbsp;</p>
      <p></p>
    </div><!-- end #header --><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper"><a href="https://www.cnblogs.com/somedayOne/p/8016503.html" target="_blank" rel="nofollow">关于我们</a>
		    <a href="http://www.baidu.com" target="_blank">互联网公司导航</a>
		    <a href="https://www.cnblogs.com/somedayOne/" target="_blank" rel="nofollow">助成博客</a>
		    <a href="https://uykq1b.fanqier.com/f/fpotly" target="_blank" rel="nofollow">用户反馈</a>
		  <div class="copyright"></div>
		</div>
	</div>

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>	