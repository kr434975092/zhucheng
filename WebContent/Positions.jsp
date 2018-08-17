<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.*" %>
<%@page import="java.util.List" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
<script async src="style/js/analytics.js"></script><script type="text/javascript" async src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我发布的职位-招聘服务-助成招聘-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="助成招聘  助成招聘">
<meta name="keywords" content="互联网招聘, 助成互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.zhucheng.com";
console.log(1);
</script>
<link href="http://www.zhucheng.com/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="http://www.lagou.com/">
    			<img width="229" height="43" alt="助成招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="Index.jsp">首页</a></li>
    			<li><a href="CompanyList.jsp">招聘</a></li>
    			<li><a href="campus.jsp">校园招聘</a></li>
    				    			<li><a rel="nofollow" href="<%=request.getContextPath() %>/Servlet/SServlet?method=person">我的</a></li><li ><a rel="nofollow" href="tool.jsp">工具箱</a></li>
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
        	        		   tag1 = hunter.getName();
        	        		   url1 = "Positions.jsp";
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
    <%
        List<Job>list = (List<Job>)session.getAttribute("CJob_list");
        int len = list.size();
    %>
    <div id="container">
                	<div class="sidebar">
            	<a class="btn_create" href="CreateJob.jsp">发布新职位</a>
              <dl class="company_center_aside">
		<dt><a href="AllCV.jsp?company=<%=hunter.getName()%>">我收到的简历</a></dt>
		<dd>&nbsp;</dd>
</dl>
<dl class="company_center_aside">
		<dt><a href="Positions.jsp">我发布的职位</a></dt>
			<dd>&nbsp;</dd>
	</dl></div><!-- end .sidebar -->
            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                           有效职位 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber"><%=len %></i>个）</span>                        </h1>
                    </dt>
                    <dd>
                    		                    	<form id="searchForm">
	                    		<input type="hidden" value="Publish" name="type">
			                	<ul class="reset my_jobs">
			                	        <% 
			                	                  for(int i = 0;i<len;++i){
			                	        %>
				                			                            	<li>
		                                    <h3>
		                                        <a title="随便写" href="Job2.jsp?id=<%=list.get(i).getId()%>"><%=list.get(i).getJob() %></a> 
		                                        <span>[<%=list.get(i).getCity() %>]</span>
		                                        						                        		                                    </h3>
		                                    		                                  		<span class="receivedResumeNo"><a href="DownCV.jsp?positionId=<%=list.get(i).getId() %>">应聘简历</a></span>
		                                  			                                    <div><%=list.get(i).getAttribute() %> / <%=list.get(i).getSalary() %> / <%=list.get(i).getExperience() %> / <%=list.get(i).getEdu() %></div>
		                                    		                                    				                                    <div class="c9">发布时间： 2014-07-01 17:07:01</div>
			                                    		                                    		                                    		                                    <div class="links">
		                                    			                                       
		                                       			                                       	<a target="_blank" class="job_edit" href="UpdateJob.jsp?jobid=<%=list.get(i).getId()%>&company=<%=list.get(i).getCompany()%>">编辑</a>
		                                                             
		                                        <a class="job_del" href="Servlet/SServlet?method=deleteJob&jobid=<%=list.get(i).getId() %>&company=<%=list.get(i).getCompany()%>">删除</a>
		                                    </div>
		                                    		                                </li><%} %>
	                                	                           	</ul>
			                    			                </form>
		                                    </dd>
                </dl>
            </div><!-- end .content -->
<script src="style/js/job_list.min.js" type="text/javascript"></script> 
			<div class="clear"></div>
			<input type="hidden" value="74fb1ce14ebf4e2495270b0fbad64704" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="https://www.cnblogs.com/somedayOne/p/8016503.html" target="_blank" rel="nofollow">关于我们</a>
		    <a href="http://www.baidu.com" target="_blank">互联网公司导航</a>
		    <a href="https://www.cnblogs.com/somedayOne/" target="_blank" rel="nofollow">助成博客</a>
		    <a href="https://uykq1b.fanqier.com/f/fpotly" target="_blank" rel="nofollow">用户反馈</a>
			<div class="copyright"></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>
<script src="style/js/tongji.js" type="text/javascript"></script>
<!--  -->
<script src="style/js/analytics01.js" type="text/javascript"></script><script type="text/javascript" src="style/js/h.js"></script>
<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>