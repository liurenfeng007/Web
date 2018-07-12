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
	 
		<li><a href="ModifyPwd.aspx"  Target="main">修改密码</a></li>
	 <li><a href="tpJiaoLian_updt.aspx"  Target="main">个人信息修改</a></li>
	</ul>
	
	 
	
	
	<div class="left_title" onClick='showHide("items1_3")'>我的课表</div>
	<ul class="side"  style='display:none'   id='items1_3'>
			 
		<li><a href="KeChengManger.aspx"  Target="main">我的课表</a></li>
		
	
	</ul>
	
	
	
	
	 
	
	<div class="left_title" onClick='showHide("items1_6")'>预约信息管理</div>
	<ul class="side"  style='display:none'   id='items1_6'>
				<li><a href="YuYueManger.aspx"  Target="main">预约信息管理</a></li>
	 
	</ul>
 
	
	<div class="left_title" onClick='showHide("items1_4")'>系统管理</div>
	<ul class="side"  style='display:none'   id='items1_4'>
	 
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
