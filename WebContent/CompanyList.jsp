<%@ page language="java" contentType="text/html; charset=UTF-8" import="Dao.ControlDao"  pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="Bean.*" %>
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
<meta content="全国condition-condition-公司列表-助成招聘-最专业的互联网招聘平台" name="description">
<meta content="全国condition-公司列表-助成招聘-最专业的互联网招聘平台" name="keywords">
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
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="#" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="助成招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="Index.jsp">首页</a></li>
    			<li class="current"><a href="CompanyList.jsp" >招聘</a></li>
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
            <div class="content_l">
            	<form id="companyListForm" name="companyListForm" method="get" action="#">
	                <input type="hidden" id="city" name="city" value="全国" />
	                <input type="hidden" id="fs" name="fs" value="" />
	                <input type="hidden" id="ifs" name="ifs" value="" />
	                <input type="hidden" id="ol" name="ol" value="" />
	              <br>
                    <dl class="hc_tag">
	                  
	                    <dd>
	                        <dl>
	                            <dt>发展阶段：</dt>
	                            <dd>
	                            			                            			                                <a href="CompanyList.jsp">初创型</a>
		                                	                                		                            			                                <a href="CompanyList.jsp">成长型</a>
		                                	                                		                            			                                <a href="CompanyList.jsp">成熟型</a>
		                                	                                		                            			                                <a href="CompanyList.jsp">已上市</a>
                              </dd>
	                        </dl>
	                        <dl>
	                            <dt>行业领域：</dt>
	                            <dd>
	                                	                                			                                <a href="CompanyList.jsp">移动互联网</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">电子商务</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">社交</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">企业服务</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">O2O</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">教育</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">文化艺术</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">游戏</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">在线旅游</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">金融互联网</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">健康医疗</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">生活服务</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">硬件</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">搜索</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">安全</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">运动体育</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">云计算\大数据</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">移动广告</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">社会化营销</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">视频多媒体</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">媒体</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">智能家居</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">智能电视</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">分类信息</a>
		                                	                                	                                			                                <a href="CompanyList.jsp">招聘</a>
                              </dd>
	                        </dl>
	                       <dl>
	                            <dt>热门标签：</dt>
	                            <dd>
	                                	                                			                               	<a href="CompanyList.jsp">年底双薪</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">专项奖金</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">股票期权</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">绩效奖金</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">年终分红</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">带薪年假</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">交通补助</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">通讯津贴</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">午餐补助</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">定期体检</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">弹性工作</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">年度旅游</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">节日礼物</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">免费班车</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">帅哥多</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">美女多</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">领导好</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">扁平管理</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">管理规范</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">技能培训</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">岗位晋升</a>
		                                	                                	                                			                               	<a href="CompanyList.jsp">五险一金</a>
                             </dd>
                          </dl> 
                      </dd>
	                </dl>
<% 
        List<Job>list = (List<Job>)session.getAttribute("job_list1");
        String index = request.getParameter("index");
        int pageCount = 0;
        int pageIndex = 0;
        if(index==null)pageIndex = 0;
        else pageIndex = Integer.parseInt(index);
        int len = 0;
        if(list!=null){
%>


<% 
               len = list.size();
               if(len!=0){
               pageCount = len%5==0?len/5:len/5+1;
               if(pageIndex == 0)pageIndex = 1;
               if(pageIndex == pageCount+1)pageIndex = pageCount;
               int start = (pageIndex - 1)*5;
               for(int i = start;i<len&&i<start+5;++i){
%>
<hr>
<table width="680" border="0">
<tr>
                       <td width="111" height="15" >&nbsp;</td>
                       <td width="121">&nbsp;</td>
                       <td width="162">&nbsp;</td>
                       <td width="99">&nbsp;</td>
                       <td width="83">&nbsp;</td>
                       <td width="78">&nbsp;</td>
</tr>
                <tr>
                
                        <td width="111" height="24" class="aa"><a href="Job2.jsp?id=<%=list.get(i).getId() %>"><span class="aa"><%=list.get(i).getJob()%></span></a></td>
                        <td width="121">&nbsp;</td>
                        <td width="162">今天</td>
                        <td width="99" class="black"><span id="black"><%=list.get(i).getCompany()%></span></td>
                        <td width="83">&nbsp;</td>
                        <td width="78">&nbsp;</td>
          </tr>
                       <tr>
                       <td width="111" height="24" >&nbsp;</td>
                      <td width="121">&nbsp;</td>
                        <td width="162">&nbsp;</td>
                        <td width="99">&nbsp;</td>
                        <td width="83">&nbsp;</td>
                        <td width="78">&nbsp;</td>
                     
                      </tr>
                      <tr>
                        <td><%=list.get(i).getCity()%></td>
                        <td><%=list.get(i).getExperience()%>/<%=list.get(i).getEdu()%></td>
                        <td class="abc"><span class="red"><%=list.get(i).getSalary()%></span></td>
                        <td><%=list.get(i).getJobkind()%></td>
                        <td><%=list.get(i).getCompanykind()%></td>
                        <td><%=list.get(i).getNumber()%></td>
                         
                      </tr>
                      <tr>
                       <td width="111" height="15" >&nbsp;</td>
                      <td width="121">&nbsp;</td>
                        <td width="162">&nbsp;</td>
                        <td width="99">&nbsp;</td>
                        <td width="83">&nbsp;</td>
                        <td width="78">&nbsp;</td>
                     
                      </tr>
                  </table>
                    
<%
     }
               }
     %>
  <hr>
<%
		//List<Job>list1 = (List<Job>)session.getAttribute("job_list1");
		//session.setAttribute("job_list",list1);
		//session.removeAttribute("job_list1");
        }
        else
        {
        	
       //session.setAttribute("s", "all");
         list = ControlDao.all();
 
              len = list.size();
              pageCount = len%5==0?len/5:len/5+1;
              if(pageIndex == 0)pageIndex = 1;
              if(pageIndex == pageCount+1)pageIndex = pageCount;
              int start = (pageIndex - 1)*5;
               for(int i = start;i<len&&i<start+5;++i){
%>
<hr>
<table width="680" border="0">
<tr>
                       <td width="111" height="15" >&nbsp;</td>
                       <td width="121">&nbsp;</td>
                       <td width="162">&nbsp;</td>
                       <td width="99">&nbsp;</td>
                       <td width="83">&nbsp;</td>
                       <td width="78">&nbsp;</td>
</tr>
                <tr>
                
                        <td width="111" height="24" class="aa"><a href="Job2.jsp?id=<%=list.get(i).getId() %>"><span class="aa"><%=list.get(i).getJob()%></span></a></td>
                        <td width="121">&nbsp;</td>
                        <td width="162">今天</td>
                        <td width="99" class="black"><span id="black"><%=list.get(i).getCompany()%></span></td>
                        <td width="83">&nbsp;</td>
                        <td width="78">&nbsp;</td>
          </tr>
                       <tr>
                       <td width="111" height="24" >&nbsp;</td>
                      <td width="121">&nbsp;</td>
                        <td width="162">&nbsp;</td>
                        <td width="99">&nbsp;</td>
                        <td width="83">&nbsp;</td>
                        <td width="78">&nbsp;</td>
                     
                      </tr>
                      <tr>
                        <td><%=list.get(i).getCity()%></td>
                        <td><%=list.get(i).getExperience()%>/<%=list.get(i).getEdu()%></td>
                        <td class="abc"><span class="red"><%=list.get(i).getSalary()%></span></td>
                        <td><%=list.get(i).getJobkind()%></td>
                        <td><%=list.get(i).getCompanykind()%></td>
                        <td><%=list.get(i).getNumber()%></td>
                         
                      </tr>
                      <tr>
                       <td width="111" height="15" >&nbsp;</td>
                      <td width="121">&nbsp;</td>
                        <td width="162">&nbsp;</td>
                        <td width="99">&nbsp;</td>
                        <td width="83">&nbsp;</td>
                        <td width="78">&nbsp;</td>
                     
                      </tr>
                  </table>
                    
<%
     }
     %>
  <hr>
<%
        }
%>

<%
     if(len==0){
    
%><div>共找到 0 条记录</div>
                   <%} %>

                    <div class="Pagination"></div>

              </form>
            </div>	
            
            <div class="content_r">
              
             <br>
              <br>
              <div class="greybg qrcode mt20"><img src="style/images/img/招聘a.png" width="280" height="639" alt="a"></div>
            
   	  <!-- <a href="h/speed/speed3.html" target="_blank" class="adSpeed"></a> --></div>
       	</div>
   	
   	<input type="hidden" value="" name="userid" id="userid" />
  
      
<script type="text/javascript" src="style/js/company_list.min.js"></script>
<script>
// $(function(){   //这个分页先别用了
// 	/*分页 */
//  	 	 				 		$('.Pagination').pager({
// 	      currPage: 1,
// 	      pageNOName: "pn",
// 	      form: "companyListForm",
// 	      pageCount: 20,
// 	      pageSize: 5
// 	});	
// })
</script>       	
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	<!-- end #body -->
	
	
	<div id="footer">
	<%
	    if(len!=0){
	%>
      <div class="wrapper">
   	    <a href="CompanyList.jsp?index=<%=1 %>">首页</a>
   	    <a href="CompanyList.jsp?index=<%=pageIndex-1 %>">上一页</a>
   	    <a href="CompanyList.jsp?index=<%=pageIndex+1 %>">下一页</a>
   	    <a href="CompanyList.jsp?index=<%=pageCount %>">尾页</a>
   	    <div class="copyright"></div>
	</div>
	<%} %>
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