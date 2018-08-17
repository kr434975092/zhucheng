
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.*"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css">
#body #container .clearfix .content_l #basicInfo .basicShow form p {
	text-align: right;
}
</style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="助成招聘 - 助成招聘">
<meta name="keywords" content="助成,助成网,助成招聘,助成, 助成网 ,互联网招聘,助成互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 助成官网,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
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
<%
      JobHunter hunter = (JobHunter)session.getAttribute("login");   
      String name = null;
      String sex = null;
      String edu = null;
      String workexp = null;
      String hopejob = null;
      String exp = null;
      String selftalk = null;
      String showwork = null;
      String eduback = null;
      if(hunter.getName()==null||"".equals(hunter.getName()))name = "暂无";
      else name = hunter.getName();
      if(hunter.getSex()==null||"".equals(hunter.getSex()))sex = "暂无";
      else sex = hunter.getSex();
      if(hunter.getEdu()==null||"".equals(hunter.getEdu()))edu = "暂无";
      else edu = hunter.getEdu();
      if(hunter.getWorkexp()==null||"".equals(hunter.getWorkexp()))workexp = "暂无";
      else workexp = hunter.getWorkexp();
      if(hunter.getHopejob()==null||"".equals(hunter.getHopejob()))hopejob = "目前暂无";
      else hopejob = hunter.getHopejob();
      if(hunter.getExp()==null||"".equals(hunter.getExp()))exp = "目前暂无";
      else exp = hunter.getExp();
      if(hunter.getSelftalk()==null||"".equals(hunter.getSelftalk()))selftalk = "目前暂无";
      else selftalk = hunter.getSelftalk();
      if(hunter.getShowwork()==null||"".equals(hunter.getShowwork()))showwork = "目前暂无";
      else showwork = hunter.getShowwork();
      if(hunter.getEduback()==null||"".equals(hunter.getEduback()))eduback = "目前暂无";
      else eduback = hunter.getEduback();
%>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="h/">
    			<img width="229" height="43" alt="助成招聘-专注互联网招聘" src="style/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="Index.jsp">首页</a></li>
    			<li><a href="CompanyList.jsp">招聘</a></li>
    			<li><a href="campus.jsp">校园招聘</a></li>
    				    			<li ><a rel="nofollow" href="tool.jsp">工具箱</a></li>
   		  </ul>
        	        	<ul class="loginTop">
        	        	<%
        	        	   JobHunter hunter1 = (JobHunter)session.getAttribute("login");
        	        	   String tag1 = null;
        	        	   String url1 = null;
        	        	   String tag2 = null;
        	        	   String url2 = null;
        	        	   if(hunter1==null){
        	        		   tag1 = "登陆";
        	        		   url1 = "Login.jsp";
        	        		   tag2 = "注册";
        	        		   url2 = "Register1.jsp";
        	        	   }else{
        	        		   tag1 = hunter1.getPhone()+",你好!";
        	        		   url1 = "Person.jsp";
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
        
  		<div class="clearfix">
            <div class="content_l">
            

           	  <div class="profile_box" id="basicInfo">
           		  <h2>基本信息</h2>
            		<div class="basicShow">
            			            			<span>姓名:<%=name %>|性别:<%=sex %>|学历:<%=edu %><br>
            			            			手机号:<%=hunter.getPhone() %><br>
           			  </span>
            			            			<form name="form1" method="post" action="PersonalUpdate.jsp?id=<%=hunter.getId()%>">
           			                              <p>
           			                                      <input name="alter" type="submit" class="btn_profile_save" id="alter" value="修改个人信息">
       			                                  </p>
                        </form>
           		  </div><!--end .basicShow-->

           		  <div class="basicEdit dn">
            			<!--end #profileForm-->
						<div class="new_portrait">
						  
						  
							
						  	<span style="display:none;" id="headPic_error" class="error"></span>
						</div><!--end .new_portrait-->
            		</div><!--end .basicEdit-->
            		
            	</div><!--end #basicInfo-->

            	<div class="profile_box" id="expectJob">
            		<h2>期望工作</h2>
            		            		<span class="c_edit dn"></span>
            		<div class="expectShow dn">
            		            			<span></span>
            		</div><!--end .expectShow-->
            		<div class="expectEdit dn">
            			<!--end #expectForm-->
            		</div><!--end .expectEdit-->
           		  <div >
            		            			<%=hopejob %><br>
					
           		</div><!--end .expectAdd-->
            		
            		
            	</div><!--end #expectJob-->
            		
            	<div class="profile_box" id="workExperience">
            		<h2>工作经历  <span> （投递简历时必填）</span></h2>
            		            		<span class="c_add dn"></span>
            		<div class="experienceShow dn">
            		            			
            			
            			<ul class="wlist clearfix">
           			  </ul>
            		</div><!--end .experienceShow-->
            		<div class="experienceEdit dn">
            			
            		</div><!--end .experienceEdit-->
            		
           		  <div >
            		            			<%=workexp %><br>
			
           		</div><!--end .experienceAdd-->
            	</div><!--end #workExperience-->

            	<div class="profile_box" >
            		<h2>项目经验</h2>
            		            		<span class="c_add dn"></span>
            		<div class="projectShow dn">
            		            			<ul class="plist clearfix">
           			  </ul>
            		</div><!--end .projectShow-->
            		<div class="projectEdit dn">
            			
            		</div><!--end .projectEdit-->
           		  <div>
            		            			<%=exp %><br>
					
           		</div><!--end .projectAdd-->
            	</div><!--end #projectExperience-->

            	<div class="profile_box" >
            		<h2>教育背景<span>（投递简历时必填）</span></h2>
            							<span class="c_add dn"></span>
            		<div class="educationalShow dn">
            		            			

            			<ul class="elist clearfix">
           			  </ul>
            		</div><!--end .educationalShow-->
            		<div class="educationalEdit dn">
            			
            		</div><!--end .educationalEdit-->
           		  <div >
            		            			<%=eduback %><br>
					
           		</div><!--end .educationalAdd-->
            	</div><!--end #educationalBackground-->

           	  <div class="profile_box" >
            		<h2>自我描述</h2>
            		            		
            		<div class="descriptionShow dn">
            		            			
            		</div><!--end .descriptionShow-->
            		<div class="descriptionEdit dn">
            			
            		</div><!--end .descriptionEdit-->
           		<div >
            		            			<%=selftalk %><br>
				 
       		  </div><!--end .descriptionAdd-->
            	</div><!--end #selfDescription-->

            	<div class="profile_box" >
            		<h2>作品展示</h2>
            		            		<span class="c_add dn"></span>
            		<div class="workShow dn">
            		            			<ul class="slist clearfix">
           			  </ul>
            		</div><!--end .workShow-->
            		<div class="workEdit dn">
            			
            		</div><!--end .workEdit-->
           		  <div >
            		            			<%=showwork %><br>
					
           		</div><!--end .workAdd-->
            	</div><!--end #worksShow-->
				
            </div><!--end .content_l-->
          <div class="content_r">
           	<div class="mycenterR" id="myInfo">
            		<h2>我的信息</h2>
            		<a href="Servlet/SServlet?method=per_CV">我提交的职位</a>
            		<br>
            		            		            		
           	</div><!--end #myInfo--><!--end #myResume--><!--end #resumeSet--><!--end #myShare--></div><!--end .content_r-->
        </div>
        



<!------------------------------------- end ----------------------------------------->  

<script src="style/js/Chart.min.js" type="text/javascript"></script>
<script src="style/js/profile.min.js" type="text/javascript"></script>
<!-- <div id="profileOverlay"></div> -->
<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src="">
		<a class="close" href="javascript:;"></a>
	</div>
</div>

			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
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

<!--  -->

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