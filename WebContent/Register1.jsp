<!DOCTYPE HTML>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册-助成网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta name="description" content="助成招聘  助成招聘">
<meta name="keywords" content="互联网招聘, 助成互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
function check(form){
	phone = form.phone.value;
	password = form.password.value;

	if(phone==""){
		alert("手机号不能为空!");
		form.phone.focus;
		return false;
	}
	
	if(password==""){
		alert("密码不能为空!");
		form.password.value;
		return false;
	}
	
	if(phone.length!=11){
		alert("手机号必须为11位!");
		form.phone.focus;
		return false;
	}
	
	for(i=0;i<phone.length;++i)
		if(phone.charAt(i)>='0'&&phone.charAt(i)<='9')
			continue;
		else{
			alert("手机号必须为11位整数!");
			form.phone.focus;
			return false;
		}
	
	return true;
}
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>

<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
        	<a href="h/"><img src="style/images/助成.png" width="285" height="62" alt="助成招聘" /></a>
          <div id="cloud_s"><img src="style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="9b207beb1e014a93bc852b7ba450db27" />		
		<div class="login_box">
        	<form id="loginForm" name="loginForm" action="Servlet/SServlet?method=add" target="_self" method="post" onsubmit="return check(loginForm)">
        		<ul class="register_radio clearfix">
<!-- 		            <li> -->
<!-- 		            	找工作 -->
<!-- 		              	<input type="radio" value="0" name="type" />  -->
<!-- 		            </li> -->
<!-- 		            <li> -->
<!-- 		           	           招人 -->
<!-- 		              	<input type="radio" value="1" name="type" />  -->
<!-- 		            </li> -->
		        </ul> 
            	<input type="text" id="email" name="phone" tabindex="1" placeholder="请输入常用手机号" />
                <span class="error" style="display:none;" id="beError"></span>
                <input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
            	<label class="fl registerJianJu" for="checkbox">
            		<input type="checkbox" id="checkbox" name="checkbox" checked  class="checkbox valid" />我已阅读并同意<a href="h/privacy.html" target="_blank">《助成用户协议》</a>
           		</label>
                <input type="submit" id="submitLogin" value="注 &nbsp; &nbsp; 册" />
                
                <input type="hidden" id="callback" name="callback" value=""/>
                <input type="hidden" id="authType" name="authType" value=""/>
                <input type="hidden" id="signature" name="signature" value=""/>
                <input type="hidden" id="timestamp" name="timestamp" value=""/>
            </form>
            <div class="login_right">
            	<div>已有助成帐号</div>
            	<a  href="Login.jsp"  class="registor_now">直接登录</a>
                <div class="login_others"></div>
            </div>
        </div>
        <div class="login_box_btm"></div>
    </div>

</body>
</html>
