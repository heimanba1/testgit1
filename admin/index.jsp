<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set  value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>欢迎使用风信子管理系统</title>
		<!--basic styles-->

		<link href="${ctx}/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="${ctx}/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${ctx}/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!--page specific plugin styles-->

		<!--fonts-->

		<!--ace styles-->

		<link rel="stylesheet" href="${ctx}/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="${ctx}/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${ctx}/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!--inline styles related to this page-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	

	</head>

	<body>
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container-fluid">
					<a href="#" class="brand">
						<small>
							<i class="icon-leaf"></i>
							欢迎使用风信子管理系统
						</small>
					</a><!--/.brand-->

				</div><!--/.container-fluid-->
			</div><!--/.navbar-inner-->
		</div>




		<div class="main-container container-fluid">
			<a class="menu-toggler" id="menu-toggler" href="#">
				<span class="menu-text"></span>
			</a>
<!-- 设置酒店管理系统下的四颗小按钮 -->
			<div class="sidebar" id="sidebar">
				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-small btn-success">
							<i class="icon-signal"></i>
						</button>

						<button class="btn btn-small btn-info">
							<i class="icon-pencil"></i>
						</button>

						<button class="btn btn-small btn-warning">
							<i class="icon-group"></i>
						</button>

						<button class="btn btn-small btn-danger">
							<i class="icon-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!--#sidebar-shortcuts-->

				<ul class="nav nav-list">
					<li>
						<a id="advertisementId" onclick="manageadvertisement()" class="dropdown-toggle">
						<i class="icon-dashboard"></i>
							<span class="menu-text">网站广告管理 </span>
							<b class="arrow icon-angle-down"></b>
						</a>
						<ul class="submenu">
							<li>
								<a id="addadvertisementId" onclick="addadvertisement()">
									<i class="icon-double-angle-right"></i>
									<span>发布广告</span>
								</a>
							</li>

<li>
								<a id="showadvertisementId" onclick="showadvertisement()">
									<i class="icon-double-angle-right"></i>
									<span>查看广告</span>
								</a>
							</li>


						</ul>
					</li>


					<li>
						<a id="announcesManageId" onclick="announceManage()" class="dropdown-toggle">
							<i class="icon-home"></i>
							<span class="menu-text">公告管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a id="announceId" onclick="addannounce()">
									<i class="icon-double-angle-right"></i>
									<span>添加公告</span>
								</a>
							</li>

							<li>
								<a id="announcemanageId" onclick="manageannounce()">
									<i class="icon-double-angle-right"></i>
									<span>公告管理页面</span>
								</a>
							</li>
<li>
								<a id="groupnameannounceId" onclick="showannouncebygroupname()">
									<i class="icon-double-angle-right"></i>
									<span>按类型查看公告</span>
								</a>
							</li>
						</ul>
					</li>
					
					
					
					<li>
						<a id="newsManageId" onclick="newManage()" class="dropdown-toggle">
							<i class="icon-move"></i>
							<span class="menu-text">新闻管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a id="newId" onclick="addnew()">
									<i class="icon-double-angle-right"></i>
									<span>添加新闻</span>
								</a>
							</li>

							<li>
								<a id="newmanageId" onclick="managenew()">
									<i class="icon-double-angle-right"></i>
									<span>管理新闻</span>
								</a>
							</li>
							
							<li>
								<a id="newcategorymanageId" onclick="managenewbygroupname()">
									<i class="icon-double-angle-right"></i>
									<span>按类型管理新闻</span>
								</a>
							</li>
							
							
								
							<!-- <li>
								<a id="groupId" onclick="group()">
									<i class="icon-double-angle-right"></i>
									<span>团队住宿登记 </span>
								</a>
							</li> -->

						</ul>
					</li>
					
					<li>
						<a id="industryManageId" onclick="industryManage()" class="dropdown-toggle">
							<i class="icon-move"></i>
							<span class="menu-text">产业公益管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>

						<ul class="submenu">
							<li>
								<a id="industryId" onclick="addindustry()">
									<i class="icon-double-angle-right"></i>
									<span>添加产业公益</span>
								</a>
							</li>

							<li>
								<a id="industrymanageId" onclick="manageindustry()">
									<i class="icon-double-angle-right"></i>
									<span>管理产业公益</span>
								</a>
							</li>
							
							<li>
								<a id="industrycategorymanageId" onclick="manageindustrybygroupname()">
									<i class="icon-double-angle-right"></i>
									<span>按类型管理产业公益</span>
								</a>
							</li>
							
							</ul>
					</li>
					
					<li>
						<a id="financeManageId" onclick="financeManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">相册管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="financeStatisticsId" onclick="financeStatistics()">
									<i class="icon-double-angle-right"></i>
									<span>管理相册 </span>
								</a>
							</li>

						</ul>
						
					</li>
					
					<li>
						<a id="passengerManageId" onclick="passengerManage()" class="dropdown-toggle">
							<i class="icon-user"></i>
							<span class="menu-text">活动管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="passengerInformationId" onclick="passengerInformation()" href="#">
									<i class="icon-double-angle-right"></i>
								<span>发布活动 </span>	
								</a>
							</li>
							<li>
								<a id="receiveTargetId" onclick="receiveTarget()" href="#">
									<i class="icon-double-angle-right"></i>
								<span>管理活动 </span>	
								</a>
							</li>
							
							<li>
								<a id="activitycheck" onclick="findactivitynotcheck()" href="#">
									<i class="icon-double-angle-right"></i>
								<span>活动审核(未审核) </span>	
								</a>
							</li>

						</ul>
						
					</li>




					<li>
						<a id="docManageId" onclick="docManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">资料管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="docId" onclick="doc()">
									<i class="icon-double-angle-right"></i>
									<span>管理资料 </span>
								</a>
							</li>

						</ul>
						
					</li>
					




<li>
						<a id="videoManageId" onclick="videoManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">视频管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="videoId" onclick="video()">
									<i class="icon-double-angle-right"></i>
									<span>管理视频 </span>
								</a>
							</li>

						</ul>
						
					</li>
					




<li>
						<a id="adminManageId" onclick="adminManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">管理员管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="addadminId" onclick="addadmin()">
									<i class="icon-double-angle-right"></i>
									<span>添加管理员 </span>
								</a>
							</li>
							
							<li>
								<a id="listadminId" onclick="listadmin()">
									<i class="icon-double-angle-right"></i>
									<span>管理员列表 </span>
								</a>
							</li>

						</ul>
						
					</li>
					


<li>
						<a id="adminTreeId" onclick="treeManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">成长树管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="addtreeId" onclick="addtree()">
									<i class="icon-double-angle-right"></i>
									<span>添加成长树 </span>
								</a>
							</li>
							
							<li>
								<a id="listtreeId" onclick="listtree()">
									<i class="icon-double-angle-right"></i>
									<span>成长树管理 </span>
								</a>
							</li>

						</ul>
						
					</li>



<li>
						<a id="goodsManageId" onclick="goodsManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">义卖商品管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="goodcategoryId" onclick="goodcategory()">
									<i class="icon-double-angle-right"></i>
									<span>商品类别操作 </span>
								</a>
							</li>
							
							<li>
								<a id="topcategoryId" onclick="topcategory()">
									<i class="icon-double-angle-right"></i>
									<span>上级商品类别操作 </span>
								</a>
							</li>
							
							<li>
								<a id="goodattributeId" onclick="goodattribute()">
									<i class="icon-double-angle-right"></i>
									<span>商品属性名称操作 </span>
								</a>
							</li>
							

<li>
								<a id="addgoodsId" onclick="addgoods()">
									<i class="icon-double-angle-right"></i>
									<span>添加新商品 </span>
								</a>
							</li>

<li>
								<a id="showgoodId" onclick="showgood()">
									<i class="icon-double-angle-right"></i>
									<span>查看/更新/删除商品 </span>
								</a>
							</li>

						</ul>
						
					</li>




					
					
					<li>
						<a id="adManageId" onclick="adManage()" class="dropdown-toggle">
							<i class="icon-heart"></i>
							<span class="menu-text">义卖广告管理 </span>

							<b class="arrow icon-angle-down"></b>
						</a>
						
						<ul class="submenu">

							<li>
								<a id="addAdId" onclick="addAd()">
									<i class="icon-double-angle-right"></i>
									<span>添加广告信息 </span>
								</a>
							</li>
							
							<li>
								<a id="showAdId" onclick="showAd()">
									<i class="icon-double-angle-right"></i>
									<span>查看/修改广告信息 </span>
								</a>
							</li>

						</ul>
						
					</li>
					
				</ul><!--/.nav-list-->

				<div class="sidebar-collapse" id="sidebar-collapse">
					<i class="icon-double-angle-left"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li>
							<i class="icon-home home-icon"></i>
							<a id="bigGuide" href="#"></a>

							<span class="divider">
								<i class="icon-angle-right arrow-icon"></i>
							</span>
						</li>
						<li id="smallGuide" class="active"></li>
					</ul><!--.breadcrumb-->
							
					</ul><!--.breadcrumb-->

				</div>
				
<!-- 后台右侧显示界面（浮动窗口） -->
				<div style="width:100%;height:100%;">
				  <iframe id="Mainid" src="admin_right.jsp" style="width:100%;height:100%;"  frameBorder="0" scrolling="yes"></iframe>
				</div>

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-mini btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-class="default" value="#438EB9" />#438EB9
									<option data-class="skin-1" value="#222A2D" />#222A2D
									<option data-class="skin-2" value="#C6487E" />#C6487E
									<option data-class="skin-3" value="#D0D0D0" />#D0D0D0
								</select>
							</div>
							<span>&nbsp; 选择皮肤</span>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-header" />
							<label class="lbl" for="ace-settings-header">固定头部</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar">固定侧栏</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
						</div>

						<div>
							<input type="checkbox" class="ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl">左右互换</label>
						</div>
					</div>
				</div><!--/#ace-settings-container-->
			</div><!--/.main-content-->
		</div><!--/.main-container-->

		<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-small btn-inverse">
			<i class="icon-double-angle-up icon-only bigger-110"></i>
		</a>

		<!--basic scripts-->

		<!--[if !IE]>-->

		<script src="assets/js/jquery-2.0.3.min.js"></script>
        
		<!--<![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.10.2.min.js"></script>

<![endif]-->

		<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${ctx}/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!--<![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${ctx}/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${ctx}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${ctx}/assets/js/bootstrap.min.js"></script>

		<!--page specific plugin scripts-->

		<!--[if lte IE 8]>
		  <script src="${ctx}/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="${ctx}/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${ctx}/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${ctx}/assets/js/jquery.slimscroll.min.js"></script>
		<script src="${ctx}/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="${ctx}/assets/js/jquery.sparkline.min.js"></script>
		<script src="${ctx}/assets/js/flot/jquery.flot.min.js"></script>
		<script src="${ctx}/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="${ctx}/assets/js/flot/jquery.flot.resize.min.js"></script>
		
        <script src="/${ctx}/assets/js/ace-extra.min.js"></script>
		

		<!--ace scripts-->

		<script src="${ctx}/assets/js/ace-elements.min.js"></script>
		<script src="${ctx}/assets/js/ace.min.js"></script>

		<!--inline scripts related to this page-->

		<script type="text/javascript">
			
			
			
			 
			  
			
			
			
			
			
			
			
			
				
			//网站广告
			function manageadvertisement(){
			    
			}
			
			function addadvertisement(){
			     var a=document.getElementById("advertisementId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("addadvertisementId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/banner_tiaozhuan_Banner.action';
			}
			
			function showadvertisement(){
			     var a=document.getElementById("advertisementId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("showadvertisementId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/banner_displayallBanner.action';
			}
			
			function passengerManage(){
			    
			}
			
			function passengerInformation(){
			     var a=document.getElementById("passengerManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("passengerInformationId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/activitysAction!tiaozhuan_Activitys.go';
			}
			function receiveTarget(){
			     var a=document.getElementById("passengerManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("receiveTargetId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/activitysAction!getAllActivitys.go';
			}
			
			function findactivitynotcheck(){
			     var a=document.getElementById("passengerManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("activitycheck").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/activityEnrollAction!getActivityNotCheck.go';
			}
			
			function announceManage(){
			    
			}
			function addannounce(){
			     var a=document.getElementById("announcesManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("announceId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/announcesAction!tiaozhuan_Announces.go';
			}
			function manageannounce(){
			  
			     var a=document.getElementById("announcesManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("announcemanageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/announcesAction!getAllAnnounces.go';
			}
			
			function showannouncebygroupname(){
			  
			     var a=document.getElementById("announcesManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("groupnameannounceId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/announcesAction!tiao_groupname.go';
			}
			
			
			function newManage(){
			    
			}
			function addnew(){
			     var a=document.getElementById("newsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("newId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/newsAction!tiaozhuan_News.go';
			}
			function managenew(){
			     var a=document.getElementById("newsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("newmanageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/newsAction!getAllNews.go';
			}
			function managenewbygroupname(){
			     var a=document.getElementById("newsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("newcategorymanageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/newsAction!tiao_groupname.go';
			}
			
			
			function industryManage(){
			    
			}
			function addindustry(){
			     var a=document.getElementById("industryManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("newId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/industryAction!tiaozhuan_Industry.go';
			}
			function manageindustry(){
			     var a=document.getElementById("industryManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("industrymanageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/industryAction!getAllIndustry.go';
			}
			function manageindustrybygroupname(){
			     var a=document.getElementById("industryManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("industrycategorymanageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/industryAction!tiao_groupname.go';
			}
			
			function group(){
			     var a=document.getElementById("stayManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("groupId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			}
			
			
			function financeManage(){
			    
			}
			function financeStatistics(){
			     var a=document.getElementById("financeManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("financeStatisticsId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/manage/album.action';
			}
	
			
			
			
			
				
			function docManage(){
			    
			}
			function doc(){
			     var a=document.getElementById("docManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("docId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/docMana.action';
			}
	
			function videoManage(){
			    
			}
			function video(){
			     var a=document.getElementById("videoManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("videoId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/shipinMana.action';
			}
			
		//商品管理	
			function goodsManage(){
			    
			}
			function goodcategory(){
			     var a=document.getElementById("goodsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("goodcategoryId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='jsp/back/addGoodsType.jsp';
			}
			
			function topcategory(){
			     var a=document.getElementById("goodsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("topcategoryId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='jsp/back/addGoodsParentType.jsp';
			}
			
			function goodattribute(){
			     var a=document.getElementById("goodsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("goodattributeId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='jsp/back/addGoodsAttr.jsp';
			}
			
			function addgoods(){
			     var a=document.getElementById("goodsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("addgoodsId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='jsp/back/addGoods.jsp';
			}
			
			function showgood(){
			     var a=document.getElementById("goodsManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("showgoodId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='jsp/back/showGoods.jsp';
			}
			
			
			
			
			
			//公益义卖广告管理
			function adManage(){
			    
			}
			function addAd(){
			     var a=document.getElementById("adManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("addAdId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='jsp/back/addAdvertising.jsp';
			}
			
			function showAd(){
			     var a=document.getElementById("adManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("showAdId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='jsp/back/showAdvertising.jsp';
			}
			
			
			
			
			
			
			//管理员信息管理
			function adminManage(){
			    
			}
			function addadmin(){
			     var a=document.getElementById("adminManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("addadminId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/adminAction!toaddadmin.go';
			}
			
			function listadmin(){
			     var a=document.getElementById("adminManageId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("listadminId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/adminAction!getAllAdmin.go';
			}
			
			
			
			
			//成长树信息管理
			function treeManage(){
			    
			}
			function addtree(){
			     var a=document.getElementById("adminTreeId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("addtreeId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/tree_uploadTree.action';
			}
			
			function listtree(){
			     var a=document.getElementById("adminTreeId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("bigGuide").innerHTML=a+"";
			     var s=document.getElementById("listadminId").getElementsByTagName('span')[0].innerHTML;
			     document.getElementById("smallGuide").innerHTML=s+"";
			     document.getElementById('Mainid').src='${ctx}/tree_getAllTree.action';
			}
			
			
		</script>
	</body>
</html>
