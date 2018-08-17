<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.*" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.ControlDao" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>助成网-最专业的互联网招聘平台</title>
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
<body>
<%
    List<Job>list = ControlDao.HotSpot();
    //session.setAttribute("HotSpot",list);  //长度为4
    session.removeAttribute("job_list1");
%>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    	  <a class="logo" href="#"><img width="276" height="47" alt="助成招聘-专注互联网招聘" src="style/images/助成1.png"></a>
    	  <ul class="reset" id="navheader">
		    <li class="current"><a href="Index.jsp">首页</a></li>
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
    </div><!-- end #header -->
    <div id="container">
        				
		<div id="sidebar">
			<div class="mainNavs">
						
									<div class="menu_box">
						<div class="menu_main">
							<h2>技术 <span></span></h2>
											            					            		<a href="Servlet/SServlet?method=Index_Search&kd=Java">Java</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=PHP">PHP</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=C">C</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=C++">C++</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=Android">Android</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=iOS">iOS</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=web前端">web前端</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=测试开发">测试开发</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=技术经理">技术经理</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=项目经理">项目经理</a>
				<a href="Servlet/SServlet?method=Index_Search&kd=架构师">架构师</a>
			</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				后端开发
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=Java"
										   		
										   		 									            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Java</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=C++"
										   		
										   		 									            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>C++</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=PHP"
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>PHP</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=数据挖掘"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>数据挖掘</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=C"
										   		
										   		 									            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>C</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=C#"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>C#</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=.NET"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>.NET</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Hadoop"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Hadoop</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Python"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Python</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Delphi"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Delphi</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=VB"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>VB</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Perl"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Perl</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Ruby"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Ruby</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Node.js"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Node.js</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				移动开发
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=HTML5"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>HTML5</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Android"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Android</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=iOS"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>iOS</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=WP"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>WP</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				前端开发
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=web前端"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>web前端</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Flash"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Flash</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=html5"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>html5</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=JavaScript"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>JavaScript</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=U3D"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>U3D</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=COCOS2D-X"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>COCOS2D-X</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				测试
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=测试工程师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>测试工程师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=自动化测试"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>自动化测试</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=功能测试"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>功能测试</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=性能测试"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>性能测试</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=测试开发"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>测试开发</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				运维
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=运维工程师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>运维工程师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=运维开发工程师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>运维开发工程师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=网络工程师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>网络工程师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=系统工程师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>系统工程师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=IT支持"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>IT支持</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				DBA
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=MySQL"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>MySQL</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=SQLServer"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>SQLServer</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Oracle"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Oracle</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=DB2"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>DB2</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=MongDB"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>MongoDB</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				项目管理
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=项目经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            										   		
										   	>项目经理</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            								            							            								            							            								            							            								            							            								            							            								            						        				高端职位
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=技术经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            										   		
										   	>技术经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=技术总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>技术总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=测试经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>测试经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=架构师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            										   		
										   	>架构师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=CTO"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>CTO</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=运维总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>运维总监</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>产品 <span></span></h2>
											            					            		<a href="Servlet/SServlet?method=Index_Search&kd=产品经理">产品经理</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=产品助理">产品助理</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=无线产品经理">无线产品经理</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=游戏策划">游戏策划</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				产品经理
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=产品经理"
										   		
										   		 									            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            										   		
										   	>产品经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=网页产品经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>网页产品经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=移动产品经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>移动产品经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=产品助理"
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            										   		
										   	>产品助理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=数据产品经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>数据产品经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=电商产品经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>电商产品经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏策划"
										   		
										   		 									            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            										   		
										   	>游戏策划</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				产品设计师
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=网页产品设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>网页产品设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=无线产品设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>无线产品设计师</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            								            							            								            							            								            							            								            							            								            						        				高端职位
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=产品部经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>产品部经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=产品总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>产品总监</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>设计 <span></span></h2>
											            					            		<a href="Servlet/SServlet?method=Index_Search&kd=UI">UI</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=UE">UE</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=设计师">设计师</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=交互设计">交互设计</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=数据分析">数据分析</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				视觉设计
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=视觉设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>视觉设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=网页设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>网页设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=Flash设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>Flash设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=APP设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>APP设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=UI设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>UI设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=平面设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>平面设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=美术设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>美术设计师（2D/3D）</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=广告设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>广告设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=多媒体设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>多媒体设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=原画师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>原画师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏特效"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>游戏特效</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏界面设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>游戏界面设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏场景"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>游戏场景</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏角色"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>游戏角色</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏动作"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>游戏动作</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				交互设计
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=交互设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>交互设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=无线交互设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>无线交互设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=网页交互设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>网页交互设计师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=硬件交互设计师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>硬件交互设计师</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				用户研究
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=数据分析师"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>数据分析师</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=用户研究员"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>用户研究员</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏数值策划"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>游戏数值策划</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            								            							            								            							            								            							            								            						        				高端职位
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=设计主管"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>设计经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=设计总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>设计总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=视觉设计主管"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>视觉设计主管</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=视觉设计总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>视觉设计总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=交互设计主管"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>交互设计主管</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=交互设计总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>交互设计总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=用户研究主管"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>用户研究主管</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=用户研究总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										            										   		
										   	>用户研究总监</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>运营 <span></span></h2>
											            					            		<a href="Servlet/SServlet?method=Index_Search&kd=运营">运营</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=游戏运营">游戏运营</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=编辑">编辑</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				运营
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=用户运营"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>用户运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=产品运营"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>产品运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=数据运营"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>数据运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=内容运营"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>内容运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=活动运营"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>活动运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=商家运营"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>商家运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=品类运营"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>品类运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=游戏运营"
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            										   		
										   	>游戏运营</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=网络推广"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>网络推广</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				编辑
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=副主编"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>副主编</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=内容编辑"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>内容编辑</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				客服
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=售前咨询"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>售前咨询</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=售后服务"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>售后客服</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            								            							            								            							            								            						        				高端职位
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=主编"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>主编</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=运营总监"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>运营总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=COO"
										   		
										   		 									            										            											            										            											            										            											            										            										   		
										   	>COO</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
									  <div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				市场/营销
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=市场营销"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>市场营销</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=市场策划"
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            											            										           											   		
										   	>市场策划</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=市场顾问"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>市场顾问</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=市场推广"
										   		
										   		 									            										            											            			class="curr"
									            											            										            											            										            											            										            											            										            											            										           											   		
										   	>市场推广</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=SEO"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>SEO</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=SEM"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>SEM</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=商务渠道"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>商务渠道</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=商业数据分析"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>商业数据分析</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=活动策划"
										   		
										   		 									            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            											            										           											   		
										   	>活动策划</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				公关
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=媒介经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>媒介经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=广告协调"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>广告协调</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=品牌公关"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>品牌公关</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				销售
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=销售专员"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>销售专员</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=销售经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            			class="curr"
									            											            										           											   		
										   	>销售经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=客户代表"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>客户代表</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=大客户代表"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>大客户代表</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=BD经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>BD经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=商务渠道"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>商务渠道</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=渠道销售"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>渠道销售</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=代理商销售"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>代理商销售</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            								            							            								            						        				高端职位
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=市场总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>市场总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=销售总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>销售总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=商务总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>商务总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=CMO"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>CMO</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=公关总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            											            										           											   		
										   	>公关总监</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
									<div class="menu_box">
						<div class="menu_main">
							<h2>职能 <span></span></h2>
											            					            		<a href="Servlet/SServlet?method=Index_Search&kd=HR">HR</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=行政">行政</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=会计">会计</a>
				            					            		<a href="Servlet/SServlet?method=Index_Search&kd=出纳">出纳</a>
				            					            					   	</div>
					   	<div class="menu_sub dn">
					   								    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				人力资源
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=人力资源"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>人力资源</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=招聘"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>招聘</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=HRBP"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>HRBP</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=HR"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>人事/HR</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=培训经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>培训经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=薪资福利经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>薪资福利经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=绩效考核经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>绩效考核经理</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				行政
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=助理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>助理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=前台"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>前台</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=法务"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>法务</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=行政"
										   		
										   		 									            										            											            										            											            			class="curr"
									            											            										            											            										            											            										            										   		
										   	>行政</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            						        				财务
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=会计"
										   		
										   		 									            										            											            										            											            										            											            			class="curr"
									            											            										            											            										            										   		
										   	>会计</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=出纳"
										   		
										   		 									            										            											            										            											            										            											            										            											            			class="curr"
									            											            										            										   		
										   	>出纳</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=财务"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>财务</a>
							            							        </dd>
					        	</dl>
													    	<dl class="reset">
					        							        		<dt>
					        			<a href="#">
					        									            								            							            								            							            								            							            								            							            								            							            								            								            						        				高端职位
					        			</a>
					        		</dt>
						        	<dd>
							        											   	<a href="Servlet/SServlet?method=Index_Search&kd=行政总监"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>行政总监</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=财务经理"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>财务经理</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=HRD+HRM"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>HRD/HRM</a>
							            										   	<a href="Servlet/SServlet?method=Index_Search&kd=CFO"
										   		
										   		 									            										            											            										            											            										            											            										            											            										            										   		
										   	>CFO</a>
							            							        </dd>
					        	</dl>
													</div>
					</div>
							</div>
			<a class="subscribe" href="CompanyList.jsp">订阅职位</a>
		</div>
        <div class="content">	
	        			<div id="search_box">
		<form id="searchForm" name="searchForm" action="Servlet/SServlet?method=search" method="post">
        <ul id="searchType">
        	        	<li data-searchtype="1" class="type_selected">职位</li>
        	<li data-searchtype="4">公司</li>
        	        </ul>
        <div class="searchtype_arrow"></div>
        <input type="text" id="search_input" name = "kd"  tabindex="1" value=""  placeholder="请输入职位名称，如：产品经理"  />
        <input type="hidden" name="spc" id="spcInput" value=""/>
        <input type="hidden" name="pl" id="plInput" value=""/>
        <input type="hidden" name="gj" id="gjInput" value=""/>
        <input type="hidden" name="xl" id="xlInput" value=""/>
        <input type="hidden" name="yx" id="yxInput" value=""/>
        <input type="hidden" name="gx" id="gxInput" value="" />
        <input type="hidden" name="st" id="stInput" value="" />
        <input type="hidden" name="labelWords" id="labelWords" value="" />
        <input type="hidden" name="lc" id="lc" value="" />
        <input type="hidden" name="workAddress" id="workAddress" value=""/>
                <input type="hidden" name="city" id="cityInput" value=""/>
                <input type="submit" id="search_button" value="搜索" />
				
    </form>
</div>
<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>
<div id="home_banner">
          <ul class="banner_bg">
	            		                <li  class="banner_bg_1 current" >
	                    <a href="#" target="_blank"><img src="style/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612" height="160" alt="好买基金——来了就给100万" /></a>
	                </li>
	                	                <li  class="banner_bg_2" >
	                    <a href="#" target="_blank"><img src="style/images/c9d8a0756d1442caa328adcf28a38857.jpg" width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a>
	                </li>
	                	                <li  class="banner_bg_3" >
	                    <a href="#" target="_blank"><img src="style/images/d03110162390422bb97cebc7fd2ab586.jpg" width="612" height="160" alt="出北京记——第一站厦门" /></a>
	                </li>
	                	            </ul>
	            <div class="banner_control">
	                <em></em> 
	                <ul class="thumbs">
	                		                    <li  class="thumbs_1 current" >
	                        <i></i>
	                        <img src="style/images/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_2" >
	                        <i></i>
	                        <img src="style/images/381b343557774270a508206b3a725f39.jpg" width="113" height="42" />
	                    </li>
	                    	                    <li  class="thumbs_3" >
	                        <i></i>
	                        <img src="style/images/354d445c5fd84f1990b91eb559677eb5.jpg" width="113" height="42" />
	                    </li>
	                    	                </ul>
	            </div>
	        </div><!--/#main_banner-->
			
        	<ul id="da-thumbs" class="da-thumbs">
	        		        		<li >
	                    <a href="#">
	                        <img src="style/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="联想" />
	                        <div class="hot_info">
	                        	<h2 title="联想">联想</h2>
	                            <em></em>
	                            <p title="世界因联想更美好">
	                            	世界因联想更美好
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="#">
	                        <img src="style/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="淘米" />
	                        <div class="hot_info">
	                        	<h2 title="淘米">淘掏</h2>
	                            <em></em>
	                            <p title="将心注入 追求极致">
	                            	将心注入 追求极致
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="#">
	                        <img src="style/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="优酷土豆" />
	                        <div class="hot_info">
	                        	<h2 title="优酷土豆">优酷土豆</h2>
	                            <em></em>
	                            <p title="专注于视频领域，是中国网络视频行业领军企业">
	                            	专注于视频领域，是中国网络视频行业领军企业
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="#">
	                        <img src="style/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="思特沃克" />
	                        <div class="hot_info">
	                        	<h2 title="思特沃克">思特沃克</h2>
	                            <em></em>
	                            <p title="一家全球信息技术服务公司">
	                            	一家全球信息技术服务公司
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li >
	                    <a href="#">
	                        <img src="style/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="奇猫" />
	                        <div class="hot_info">
	                        	<h2 title="奇猫">奇猫</h2>
	                            <em></em>
	                            <p title="专注于移动互联网、互联网产品研发">
	                            	专注于移动互联网、互联网产品研发
	                            </p>
	                        </div>
	                    </a>
	                </li>
                	        		<li  class="last" >
	                    <a href="#">
	                        <img src="style/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="堆糖网" />
	                        <div class="hot_info">
	                        	<h2 title="堆糖网">堆糖网</h2>
	                            <em></em>
	                            <p title="分享收集生活中的美好，遇见世界上的另外一个你">
	                            	分享收集生活中的美好，遇见世界上的另外一个你
	                            </p>
	                        </div>
	                    </a>
	                </li>
                            </ul>
            
            <ul class="reset hotabbing">
            	            		<li class="current">热门职位</li>
            	            	
          </ul>
            <div id="hotList">
	            <ul class="hot_pos reset">
	            <%
	                List<Job>lists = ControlDao.HotSpot();
	                for(int i = 0;i<=4;i+=2){
	             %>
	            		            		            				            		<li class="clearfix">
		            																		            					                	<div class="hot_pos_l">
			                    	<div class="mb10">
			                        	<a href="Job2.jsp?id=<%=lists.get(i).getId() %>" target="_blank"><%=lists.get(i).getJob() %></a> 
			                            &nbsp;
			                            <span class="c9">[<%=lists.get(i).getCity() %>]</span>
			                            			                        </div>
			                        <span><em class="c7">月薪： </em><%=lists.get(i).getSalary() %></span>
			                        <span><em class="c7">经验：</em><%=lists.get(i).getExperience() %></span>
			                        <span><em class="c7">最低学历： </em><%=lists.get(i).getEdu() %></span>
			                        <br />
			                        <span><em class="c7">职位诱惑：</em><%=lists.get(i).getAdvantage() %></span>
			                        <br />
				                    <span>1天前发布</span>
			                        <!-- <a  class="wb">分享到微博</a> -->
			                    </div>
			                	<div class="hot_pos_r">
			                    	<div class="mb10 recompany"><a href="Job2.jsp?id=<%=lists.get(i+1).getId() %>" target="_blank"><%=lists.get(i+1).getJob() %></a></div>
			                        <span><em class="c7">月薪：</em><%=lists.get(i+1).getSalary() %></span>
			                        			                        <span><em class="c7">经验：</em><%=lists.get(i+1).getExperience() %></span>
			                        			                        <br />
			                        <span><em class="c7">最低学历：</em><%=lists.get(i+1).getEdu() %></span>
			                        <span><em class="c7">职位诱惑：</em><%=lists.get(i+1).getAdvantage() %></span>
			                        <ul class="companyTags reset">
			                        				                        					                        			<li>移动互联网</li>
			                        					                        				                        					                        			<li>五险一金</li>
			                        					                        				                        					                        			<li>扁平管理</li>
			                        					                        				                        </ul>
			                    </div>
			                    			                </li><%} %>
       				            		<a href="CompanyList.jsp" class="btn fr">查看更多</a>
	                	            </ul>
	            
	                	                	               
	            </ul>
            </div>
            
            <div class="clear"></div>
			<div id="linkbox">
			    <dl>
			        <dt>友情链接</dt>
			        <dd>
			        		<a href="http://www.zhuqu.com/" target="_blank">住趣家居网</a> <span>|</span>
			        		<a href="http://www.woshipm.com/" target="_blank">人人都是产品经理</a> <span>|</span>
			        		<a href="http://zaodula.com/" target="_blank">互联网er的早读课</a> <span>|</span>
			                <a href="http://lieyunwang.com/" target="_blank">猎云网</a> <span>|</span>
			        		<a href="http://www.ucloud.cn/" target="_blank">UCloud</a> <span>|</span>
			          		<a href="http://www.iconfans.com/" target="_blank">iconfans</a>  <span>|</span>
			          		<a href="http://www.html5dw.com/" target="_blank">html5梦工厂</a>   <span>|</span>
			          		<a href="http://www.sykong.com/" target="_blank">手游那点事</a> 
			          		
			          		<a href="http://www.mycodes.net/" target="_blank">源码之家</a> <span>|</span>
			          		<a href="http://www.uehtml.com/" target="_blank">uehtml</a> <span>|</span>
			          		<a href="http://www.w3cplus.com/" target="_blank">W3CPlus</a> <span>|</span>
			          		<a href="http://www.boxui.com/" target="_blank">盒子UI</a> <span>|</span>
			          		<a href="http://www.uimaker.com/" target="_blank">uimaker</a> <span>|</span>
			          		<a href="http://www.yixieshi.com/" target="_blank">互联网的一些事</a> <span>|</span>
			          		<a href="http://www.chuanke.com/" target="_blank">传课网</a> <span>|</span>
			          		<a href="http://www.eoe.cn/" target="_blank">安卓开发</a> <span>|</span>
			          		<a href="http://www.eoeandroid.com/" target="_blank">安卓开发论坛</a> 
			          		<a href="http://hao.360.cn/" target="_blank" >360安全网址导航</a> <span>|</span>
			          		<a href="http://se.360.cn/" target="_blank" >360安全浏览器</a> <span>|</span>
			          		<a href="http://www.hao123.com/" target="_blank" >hao123上网导航</a> <span>|</span>
			          		<a href="http://www.ycpai.com" target="_blank" >互联网创业</a><span>|</span>
			          		<a href="http://www.zhongchou.cn" target="_blank" >众筹网</a><span>|</span>
			          		<a href="http://www.marklol.com/" target="_blank" >马克互联网</a><span>|</span>
			          		<a href="http://www.chaohuhr.com/" target="_blank" >巢湖英才网</a>
			          		
			          		<a href="http://www.zhubajie.com/" target="_blank" >创意服务外包</a><span>|</span>
			          		<a href="http://www.thinkphp.cn/" target="_blank" >thinkphp</a><span>|</span>
			          		<a href="http://www.chuangxinpai.com/" target="_blank" >创新派</a><span>|</span>

			          		<a href="http://w3cshare.com/" target="_blank" >W3Cshare</a><span>|</span>
			          		<a href="http://www.518lunwen.cn/" target="_blank" >论文发表网</a><span>|</span>
			          		<a href="http://www.199it.com" target="_blank" >199it</a><span>|</span>

			          		<a href="http://www.shichangbu.com" target="_blank" >市场部网</a><span>|</span>
			          		<a href="http://www.meitu.com/" target="_blank" >美图公司</a><span>|</span>
			          		<a href="https://www.teambition.com/" target="_blank" >Teambition</a>
			          		<a href="http://oupeng.com/" target="_blank" >欧朋浏览器</a><span>|</span>
			          		<a href="http://iwebad.com/" target="_blank">网络广告人社区</a>
			          		<a href="http://www.baidu.com" target="_blank" class="more">更多</a>
			        </dd>
			    </dl>
			</div>
        </div>	
 	    <input type="hidden" value="" name="userid" id="userid" />
 		<!-- <div id="qrSide"><a></a></div> -->
<!--  -->

<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="#" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有助成帐号？</div>
			<a href="Register1.jsp" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="#" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="#" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
<script type="text/javascript" src="style/js/Chart.min.js"></script>
<script type="text/javascript" src="style/js/home.min.js"></script>
<script type="text/javascript" src="style/js/count.js"></script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<div class="menu_main">
			  <h2>市场与销售 <span></span></h2>
			  <a href="CompanyList.jsp">市场推广</a> <a href="CompanyList.jsp">市场策划</a> <a href="CompanyList.jsp">活动策划</a> <a href="CompanyList.jsp">BD</a> <a href="CompanyList.jsp">销售经理</a> </div>
			<a href="https://www.cnblogs.com/somedayOne/p/8016503.html" target="_blank" rel="nofollow">关于我们</a>
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