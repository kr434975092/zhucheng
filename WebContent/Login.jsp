<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录-助成招聘-最专业的互联网招聘平台</title>
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
        
    	<input type="hidden" id="resubmitToken" value="" />		
		 <div class="login_box">
        	<form id="loginForm" name="loginForm" action="Servlet/SServlet?method=login" target="_self" method="post" onsubmit="return check(loginForm)">
				<input type="text" id="email" name="phone" value="" tabindex="1" placeholder="请输入登录手机号" />
			  	<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
				<span class="error" style="display:none;" id="beError"></span>
			    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
			    <a href="reset.html" class="fr" target="_blank">忘记密码？</a>
			    
				<input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
				<!-- <a style="color:#fff;" href="index.html" class="submitLogin" title="登 &nbsp; &nbsp; 录"/>登 &nbsp; &nbsp; 录</a> -->
			    
			    <input type="hidden" id="callback" name="callback" value=""/>
                <input type="hidden" id="authType" name="authType" value=""/>
                <input type="hidden" id="signature" name="signature" value=""/>
                <input type="hidden" id="timestamp" name="timestamp" value=""/>
			</form>
			<div class="login_right">
				<div>还没有助成帐号？</div>
				<a  href="Register1.jsp"  class="registor_now">立即注册</a>
			    <div class="login_others"></div>
			</div>
        </div>
        <div class="login_box_btm"></div>
    </div>


</body>
</html>