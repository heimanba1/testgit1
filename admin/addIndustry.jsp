<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE HTML>
      <html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加产业公益页面</title>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<SCRIPT type="text/javascript" src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></SCRIPT>
<style type="text/css">
<!--
body {
	margin-left: 5px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
}
.STYLE1 {font-size: 17px}
.STYLE3 {font-size: 17px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 17px;
}
-->
</style>


</head>

<body>
<form action="${pageContext.request.contextPath }/industryAction!addIndustry.go" name="myForm" method="post" enctype="multipart/form-data">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="d5d4d4" >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">添加课程页面</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1"><table width="70%" border="0" align="center" cellpadding="0" cellspacing="0">
     
     <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">所属课程类型：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <select class="STYLE1" name="industry.i_groupname"  style="width:200px; height:17px; font-size:12px;">
           
            <option class="STYLE1" value=1>交通安全</option>
            <option class="STYLE1" value=2>三T培训</option>
            <option class="STYLE1" value=3>团队拓展</option>
            <option class="STYLE1" value=4>马伽术（自我防卫）</option>
            <option class="STYLE1" value=5>康复技能</option>    
          </select>          
        </div></td>
        </tr>
     
      <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">课程标题：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="industry.i_title" required="required"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">课程来源：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="industry.i_source" required="required"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
         <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">课程价格：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="industry.i_price" required="required"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        
         <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">课程联系方式：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="text" name="industry.i_contact" required="required"  style="width:300px; height:17px; font-size:12px; border:solid 1px #ccc; " />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">添加时间：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
         <input class="Wdate" name="industry.i_time" required="required" type="text" onClick="WdatePicker({ dateFmt: 'yyyy-MM-dd HH:mm:ss' })"> <font color=red>&lt;- 点我弹出日期</font>
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">上传课程图片：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <input type="file" name="i_images" />
        </div></td>
        </tr>
        <tr>
        <td width="142" height="35" class="STYLE1" nowrap="nowrap"><div align="left">内容：<br /></div></td>
        <td height="35" colspan="1" class="STYLE1"><div align="left">
          <textarea name="industry.i_content" htmlEscape="true" required="required"  style=" width:600px; height:200px;"></textarea>
          
          <script type="text/javascript">
          		 CKEDITOR.replace('industry.i_content');
          			          		
          </script>
          
        </div></td>
        </tr>      
        
      <tr>
        <td height="40" class="STYLE1">&nbsp;</td>
        <td height="35" colspan="2" class="STYLE1"><input type="submit" width="62" height="21" value="提交" /> <br /></td>
      </tr>
    </table>
   </td>
  </tr> 
</table></form>
</body>
</html>