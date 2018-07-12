﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddQiCai.aspx.cs"ValidateRequest="false" EnableEventValidation="false"  Inherits="Admin_AddQiCai" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>健身房系统 </title>
    <link rel="stylesheet" type="text/css" href="skin/css/base.css"/>
      <link rel="stylesheet" href="../kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="../kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="../kindeditor/kindeditor.js"></script>
	<script charset="utf-8" src="../kindeditor/lang/zh_CN.js"></script>
	<script charset="utf-8" src="../kindeditor/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('#content1', {
				cssPath : '../kindeditor/plugins/code/prettify.css',
				uploadJson : 'upload_json.ashx',
				fileManagerJson : 'file_manager_json.ashx',
				allowFileManager : true,
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						K('form[name=example]')[0].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
</head>
<body >
    <form id="form1" runat="server">
    <div>
    <table width="98%" border="0" cellpadding="0" cellspacing="1" bgcolor="#e3ebfe" align="center">
<tr>
 <td height="26" >
  <table width="98%" border="0" cellspacing="0" cellpadding="0">
  <tr>
  <td align="center" style="height: 22px">
      添加器材</td>
 </tr>
</table>
</td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    器材名称：<asp:TextBox ID="title" runat="server" Style="border-right: #ffcc00 1px solid;
                        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
                        Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="title"
                        ErrorMessage="必填"></asp:RequiredFieldValidator></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    器材类型：<asp:DropDownList ID="DropDownList2" runat="server" Width="122px" AutoPostBack="True"  >
                         <asp:ListItem>篮球器材</asp:ListItem>
                    <asp:ListItem>羽毛球器材</asp:ListItem>
                    <asp:ListItem>乒乓球器材</asp:ListItem>
                      <asp:ListItem>台球器材</asp:ListItem>
                    <asp:ListItem>健身室</asp:ListItem>
                       <asp:ListItem>其他器材</asp:ListItem>
                                     
                                        
                    
                    </asp:DropDownList></td>
            </tr>
           
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    器材价格：<asp:TextBox ID="TextBox2" runat="server" Style="border-right: #ffcc00 1px solid;
                        border-top: #ffcc00 1px solid; border-left: #ffcc00 1px solid; border-bottom: #ffcc00 1px solid"
                        Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                        ErrorMessage="必填"></asp:RequiredFieldValidator></td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td colspan="10" style="height: 24px">
                    <asp:Image ID="Image2" runat="server" Width="126px" /><br />
                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox><input
                        id="file1" runat="server" class="inputBox" style="width: 141px" type="file" />&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="上传器材图片" />
                    <asp:Label ID="Label1" runat="server" Visible="False" Width="60px"></asp:Label>
                    &nbsp; &nbsp;</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    器材描述</td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="left" colspan="10" height="24">
                    <textarea id="content1" runat="server" cols="100" rows="8" style="visibility: hidden; width: 100%; height: 200px"></textarea>
                   
                </td>
            </tr>
            <tr bgcolor="#e7e7e7">
                <td align="center" colspan="10" height="24">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
