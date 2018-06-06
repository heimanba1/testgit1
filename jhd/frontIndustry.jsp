<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="/struts-tags"  prefix="s"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%! int initpage; %> 
          <!DOCTYPE html>
          <html>

          <head>
            <meta charset="utf-8">
            <title>探访慰问 — 风信子志愿者</title>
            <meta name="description" content="">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="icon" href="images/favicon.png">
            <link rel="stylesheet" href="css/style.css">
 <link rel="stylesheet" href="css/templatemo_style.css">
            <!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="js/vendor/html5shiv.js"><\/script>')</script>
        <![endif]-->
     
          </head>

          <body>
           <!--这仅仅加了一点注释来测试一下-->
            <section class="header-top-section">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <div class="header-top-content">
                      <ul class="nav nav-pills navbar-left">
                        <li>
                          <a>
                            <span>东莞市爱心志愿者协会&emsp;—</span>
                          </a>
                        </li>
                        <li>
                          <a>
                            <span>风信子服务队</span>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="header-top-menu">
                      <ul class="nav nav-pills navbar-right">
                        <li>
                          <a href="${pageContext.request.contextPath}/register.jsp">
                            <i class="pe-7s-lock"></i>志愿者注册</a>

                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/userLogin.jsp">
                            <i class="pe-7s-lock"></i>志愿者登录</a>

                        </li>
                        <li>
                          <a href="${pageContext.request.contextPath }/admin_login.jsp">
                            <i class="pe-7s-lock"></i>管理员登录</a>

                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </section>

            <header class="header-section-fixed">
              <nav class="navbar navbar-default">
                <div class="container">
                  <!-- Brand and toggle get grouped for better mobile display -->
                  <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                      aria-expanded="false">
                      <span class="sr-only">Toggle navigation</span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                      <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/jhcf/indexAction!showIndexInfo.go">
                      <b>风</b>信子</a>
                  </div>

                  <!-- Collect the nav links, forms, and other content for toggling -->
                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      <li class="active">
                        <a href="/jhcf/indexAction!showIndexInfo.go">首页</a>
                      </li>
                      <li class="dropdown">
                        <a href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go" class="dropdown-toggle">公益项目
                          <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                         
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=4">公益培训</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=5">公益巡讲</a>
                          </li>
                         
                        
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=2">探访慰问</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=3">儿童之家</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/newsAction!getNewsByGroupname_all.go?groupname=6">运动公益</a>
                          </li>
                        </ul>
                      </li>
                        <li>
                        <a href="${pageContext.request.contextPath }/activitysAction!getAllFrontActivitys.go">公益活动</a>
                      </li>
                      <li>
                        <a href="${pageContext.request.contextPath }/newsAction!getAllFrontNews.go">新闻动态</a>
                      </li>
                      <li class="dropdown">
                        <a href="${pageContext.request.contextPath }/indexAction!showAnnounce.go" class="dropdown-toggle">秘书办
                          <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                          <li>
                            <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=1">动态公告</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=3">财务公告</a>
                          </li>
                          <li>
                            <a href="${pageContext.request.contextPath }/announcesAction!getAnnouncesByGroupname_all.go?groupname=2">月度公告</a>
                          </li>
                        </ul>
                      </li>
                      <li>
                         <a href="${pageContext.request.contextPath }/album/album.action">网站相册</a>
                      </li>
                      <li>
                        <a href="${pageContext.request.contextPath }/tree_getAllFontTree.action">成长树</a>
                      </li>
                     
                      <li class="dropdown">
                        <a href="<%=path %>/shipinAll.action" class="dropdown-toggle">视频浏览
                          <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                          <li>
                            <a href="<%=path %>/docAll.action">资料下载</a>
                          </li>
                        </ul>
                      </li>

<li class="dropdown"><a href="<%=path %>/shipinAll.action"
							class="dropdown-toggle">产业公益 <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?i_groupname=1">交通安全</a></li>
								<li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?i_groupname=2">三T培训</a></li>
								<li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?i_groupname=3">团队拓展</a></li>
								<li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?i_groupname=4">伽术（自我防卫）</a></li>
								<li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?i_groupname=5">康复技能</a></li>
							</ul></li>
							
                      <li>
                        <a href="${pageContext.request.contextPath }/GoodsInfo_FindAll.action">公益义卖</a>
                      </li>
                      <li>
                        <a href="https://baike.baidu.com/item/%E9%A3%8E%E4%BF%A1%E5%AD%90%E5%85%AC%E7%9B%8A/20474422?fr=aladdin">关于我们</a>
                      </li>
                    </ul>
                  </div>
                  <!-- /.navbar-collapse -->
                </div>
                <!-- /.container -->
              </nav>
            </header>
			
			<div class="container">
			<s:iterator var="xwzx" value="listIndustry">
			</s:iterator>
			<div class="row">
			<div class="col-md-5"></div>
			 <div class="col-md-6">
			 <h1><c:choose>
			<c:when test="${xwzx.i_groupname eq 1}">交通安全</c:when>
			<c:when test="${xwzx.i_groupname eq 2}">三T培训</c:when>
			<c:when test="${xwzx.i_groupname eq 3}">团队拓展</c:when>
			<c:when test="${xwzx.i_groupname eq 4}">马伽术（自我防卫）</c:when>			
							
							
			<c:otherwise>康复技能</c:otherwise>
			</c:choose>
					
			</h1>
			 </div>
			 <div class="col-md-1"></div>
			</div>
			
				<div class="row">          
          <s:iterator var="xwzx" value="listIndustry">
            
                
                
                
                  <div class="row">
                        <div class="col-md-4 col-sm-6">
                            <div class="blog-post">
                                <div class="blog-thumb">
                                 <a href="${pageContext.request.contextPath }/industryAction!defaultIndustry.go?industry.i_id=${xwzx.i_id}" title="${xwzx.i_title}">
                                    <img src="${pageContext.request.contextPath}/uploadImages/${xwzx.i_images}" width="150px" height="260px" /></a>
                                </div>
                                <div class="blog-content">
                                    <div class="content-show">
                                      
                                         <h4> <a href="${pageContext.request.contextPath }/industryAction!defaultIndustry.go?industry.i_id=${xwzx.i_id}" title="${xwzx.i_title}">${xwzx.i_title}</a></h4>
                                        <span>${xwzx.i_price}元</span>
                                    </div>
                                    <div class="content-hide">
                                        <p> <a href="${pageContext.request.contextPath }/industryAction!defaultIndustry.go?industry.i_id=${xwzx.i_id}" title="${xwzx.i_title}">${xwzx.i_content}</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                
                
                  </s:iterator>
                <div class="row">  
                <div class="col-md-2"></div>
                <div class="col-md-8">
                <div class="text-center">
                    <div class="pagination">
                        <s:if test="currentPage==1">
                          <li class="disabled"><a>&lt;&lt;</a></li>        
                        </s:if>
                        <s:else>
                          <li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?currentPage=${currentPage-1}&&i_groupname=${xwzx.i_groupname}">&lt;&lt;</a></li>
                          <li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?currentPage=${currentPage-1}&&i_groupname=${xwzx.i_groupname}">${currentPage-1}</a></li>
                        </s:else>
        
                        <li class="active">
                          <a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?currentPage=${sumPage}&&i_groupname=${xwzx.i_groupname}">${currentPage}</a>
                        </li>
        
                        <s:if test="currentPage>=sumPage">
                          <li class="disabled"><a>&gt;&gt;</a></li>
                        </s:if>
                        <s:else>
                          <li><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?currentPage=${currentPage+1}&&i_groupname=${xwzx.i_groupname}">${currentPage+1}</a></li>                  
                          <li ><a href="${pageContext.request.contextPath }/industryAction!getIndustryByGroupname_all.go?currentPage=${currentPage+1}&&i_groupname=${xwzx.i_groupname}">&gt;&gt;</a></li>
                        </s:else>
                      </div>
                      </div>
                 <div class="col-md-2"></div>
                </div>
              
            
           
				
			</div>
   

      
           

            <script src="js/vendor/jquery-1.11.2.min.js"></script>
            <script src="js/vendor/bootstrap.min.js"></script>
            <script src="js/isotope.pkgd.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/wow.min.js"></script>
            <script src="js/custom.js"></script>
            
     <script type="text/javascript">
    $(document).ready(function() {

	$("div.blog-post").hover(
    function() {
        $(this).find("div.content-hide").slideToggle("fast");
    },
    function() {
        $(this).find("div.content-hide").slideToggle("fast");
    }
  );

});

        
        </script>
          </body>

          </html>