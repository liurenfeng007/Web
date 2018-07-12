<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>健身房系统</title>
    <link rel="stylesheet" type="text/css" href="css/admin_style.css" />
<link rel="stylesheet" type="text/css" href="css/skins/tpphp.css" />
      <script language="javascript" type="text/javascript" src="js/menu.js"></script>
</head>
<body>
    <form id="form1" runat="server">
  <div class="top">
	
	<div class="admin_logo">
		<img src="images/admin_logo.jpg">
	</div>
			
	<div class="top_member">
	欢迎您， <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        
	</div>
</div>

<div class="left">
	<div class="left_title"  onClick='showHide("items1_1")' >基础资料管理</div>
	<ul class="side" style='display:none'   id='items1_1'>
		<li><a href="AddAdmin.aspx" Target="main">添加账号</a></li>
		<li><a href="AdminList.aspx"  Target="main">账号管理</a></li>
		<li><a href="ModifyPwd.aspx"  Target="main">修改密码</a></li>

	</ul>
	
	
	<div class="left_title" onClick='showHide("items1_2")'>教练管理</div>
	<ul class="side"  style='display:none'   id='items1_2'>
		<li><a href="AddJiaoLian.aspx"  Target="main">添加教练</a></li>
		<li><a href="JiaoLianList.aspx"  Target="main">教练管理</a></li>
		
 
	</ul>
	
	
	
	<div class="left_title" onClick='showHide("items1_3")'>课程管理</div>
	<ul class="side"  style='display:none'   id='items1_3'>
			<li><a href="AddKeCheng.aspx"  Target="main">添加课程</a></li>
		<li><a href="KeChengManger.aspx"  Target="main">课程管理</a></li>
		
			<li><a href="YuYueManger.aspx"  Target="main">预约信息管理</a></li>
	</ul>
	
	
	
	
	 
	
	<div class="left_title" onClick='showHide("items1_6")'>用户信息管理</div>
	<ul class="side"  style='display:none'   id='items1_6'>
			<li><a href="UserList.aspx"  Target="main">用户信息管理</a></li>
	 
	</ul>
	
	<div class="left_title" onClick='showHide("items1_5")'>场地信息管理</div>
	<ul class="side"  style='display:none'   id='items1_5'>
			<li><a href="AddChangDi.aspx"  Target="main">添加场地信息</a></li>
	 	<li><a href="ChangDiManger.aspx"  Target="main">场地信息管理</a></li>
	  
	</ul>
	
	
	
	
	<div class="left_title" onClick='showHide("items1_7")'>器械信息管理</div>
	<ul class="side"  style='display:none'   id='items1_7'>
			<li><a href="AddQiCai.aspx"  Target="main">添加器械信息</a></li>
	 	<li><a href="QiCaiManger.aspx"  Target="main">器械信息管理</a></li>
	  
	</ul>
	
 
	
	<div class="left_title" onClick='showHide("items1_8")'>新闻管理</div>
	<ul class="side"  style='display:none'   id='items1_8'>
			<li><a href="AddNews.aspx"  Target="main">新闻发布</a></li>
	 	<li><a href="NewsList.aspx"  Target="main">新闻管理</a></li>
	  
	</ul>
	
	<div class="left_title" onClick='showHide("items1_4")'>系统管理</div>
	<ul class="side"  style='display:none'   id='items1_4'>
		<li><a href="Login.aspx" target=_top >退出系统</a></li>
		<li><a href="../Default2.aspx" target=_top >返回首页</a></li>
		 
	</ul>
	
	
</div>
<div  class=right_body>
 <div class="top_member" align="center">
     欢迎使用健身房系统</div>
 <iframe frameborder="0" name="main" src="aaa.aspx" style="width: 100%; height: 600px" tabindex="0" scrolling="yes">
            </iframe>
</div>
    </form>
</body>
</html>
