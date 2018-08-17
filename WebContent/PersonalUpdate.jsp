<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>全国-公司列表-助成招聘-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta name="description" content="助成招聘-最专业的互联网招聘平台">
<meta name="keywords" content="助成招聘-最专业的互联网招聘平台">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
function check(form){
	name = form.username.value;
	id = form.textfield2.value;
	address = form.address.value;
	gz = form.gongzuo.value;
	if(name==""){
		alert("姓名不能为空");
		form.username.focus;
		return false;
	}
	
	if(id.length!=18){
		alert("身份证号为18位");
		form.username.focus;
		return false;
	}
	for(i=0;i<id.length-1;++i)
		if(id.charAt(i)>='0'&&id.charAt(i)<='9')
			continue;
		else {
			alert("身份证号前17位为整数!");
			form.username.focus;
			return false;
			}
	if(id.charAt(17)!='x'&&(id.charAt(i)<'0'||id.charAt(i)>'9')){
		alert("身份证号最后一位是整数或x!");
		form.username.focus;
		return false;
	}
	if(address==""){
		alert("居住地不能为空!");
		form.address.focus;
		return false;
	}
	if(gz==""){
		alert("工作经历不能为空!");
		form.gongzuo.focus;
		return false;
	}
	return true;
}
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
<div id="body">
	<div id="header">
   	  <div class="wrapper">
    		<a href="index.html" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="助成招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="Index.jsp">首页</a></li>
    			<li><a href="CompanyList.jsp" >招聘</a></li>
    			<li ><a href="campus.jsp">校园招聘</a></li>
    				    			<li ><a href="#" rel="nofollow">我的</a></li>
	    							    			<li ><a href="tool.jsp" rel="nofollow">工具箱</a></li>
   		  </ul>
        	            <ul class="loginTop">
            	<li><a href="Login.jsp" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="Register1.jsp" rel="nofollow">注册</a></li>
            </ul>
      </div>
   	  <p>&nbsp;</p>
    </div><!-- end #header -->
    <form name="form2" action="Servlet/SServlet?method=update" method="post" onsubmit="return check(form2)"> 
    <td>&nbsp;</td>
            </tr>
            <tr>
              <td><table width="1300" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                <%
                   int id = Integer.parseInt(request.getParameter("id"));
                %>
                  <td>&nbsp;<input name="jobhunter_id" type="hidden" value="<%=id%>"/></td>
                  <td width="90" height="40" nowrap="nowrap" bgcolor="#0D9572" class="a1"><span class="a2">个人资料</span></td>
                  <td width="90" nowrap="nowrap" bgcolor="#E2E2E2" class="a1">&nbsp;</td>
                  <td bgcolor="#E2E2E2">&nbsp;</td>
                  <td width="80" bgcolor="#E2E2E2">&nbsp;</td>
                  <td bgcolor="#E2E2E2">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td width="200">&nbsp;</td>
                  <td colspan="4">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td width="200">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">姓名</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><input name="username" type="text" class="change" id="textfield" />
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">身份证号</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle" class="xiao"><input name="textfield2" type="text" class="change" id="textfield2" /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">性别</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><select name="sex" size="1" class="change" id="select">
                          <option>男</option>
                          <option>女</option>
                          <option selected="selected">保密</option>
                          </select>
                        <label for="select"></label>
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">现居住地</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><input name="address" type="text" class="change" id="textfield4"/></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">生日</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle">
                        <label for="select2"></label>
                        <select name="select2" id="select2">
                          <option selected="selected">1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                        </select>
                        <label for="select3"></label>
                        <select name="select3" id="select3">
                          <option selected="selected">1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                          <option>24</option>
                          <option>25</option>
                          <option>26</option>
                          <option>27</option>
                          <option>28</option>
                          <option>29</option>
                          <option>30</option>
                          <option>31</option>
                        </select>
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">学历</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><select name="edu" size="1" class="change" id="select">
                          <option>大专及以下</option>
                          <option selected="selected">本科</option>
                          <option>硕士</option>
                          <option>博士</option>
                          </select>
                        <label for="select"></label>
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">工作经历</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle"><label for="gongzuo"></label>
                        <textarea name="gongzuo" id="gongzuo" placeholder="谈一下你的工作时间和具体经历" cols="45" rows="5"></textarea></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                     <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">期望工作</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle"><label for="gongzuo"></label>
                        <textarea name="hopejob" id="hopejob" placeholder="谈一下你期望干的工作" cols="45" rows="5"></textarea></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                     <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">项目经验</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle"><label for="gongzuo"></label>
                        <textarea name="exp" id="exp" placeholder="谈一下你做过的项目" cols="45" rows="5"></textarea></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                  
                 <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">教育背景</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle"><label for="gongzuo"></label>
                        <textarea name="eduback" id="eduback" placeholder="谈一下你的学习背景" cols="45" rows="5"></textarea></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                     <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">自我描述</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle"><label for="gongzuo"></label>
                        <textarea name="selftalk" id="selftalk" placeholder="谈一下你对自己的评价" cols="45" rows="5"></textarea></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                     <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">作品展示</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle"><label for="gongzuo"></label>
                        <textarea name="showwork" id="showwork" placeholder="用文字描述一下你的作品" cols="45" rows="5"></textarea></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center"><input name="Personalupdate" type="submit" class="btn" id="button" value="保存" /></td>
                      <td>&nbsp;</td>
                    </tr>
              </table></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table></td>
        </tr>
        <table>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
      </form>
    <div id="container">
      <style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
      </style>
<input type="hidden" value="" name="userid" id="userid" />
      
<script type="text/javascript" src="style/js/company_list.min.js"></script>
<script>
$(function(){
	/*分页 */
 	 	 				 		$('.Pagination').pager({
	      currPage: 1,
	      pageNOName: "pn",
	      form: "companyListForm",
	      pageCount: 20,
	      pageSize: 5
	});	
})
</script>       	
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
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

<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!--  -->

</body>
</html>