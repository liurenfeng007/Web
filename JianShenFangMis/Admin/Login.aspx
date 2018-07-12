<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>健身房系统 后台登陆</title>

</head>
<body bgcolor="#ccccff">
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="width: 478px; height: 232px;">
  <tr>
    <td valign="top" class="tab2" style="height: 118px; background-image: url(../images/column9.gif); background-repeat: no-repeat;"><table border="0" cellspacing="8" cellpadding="0" style="width: 97%">
        <tr>
            <td align="center" colspan="2" style="height: 27px">
            </td>
        </tr>
      <tr>
        <td align="center" style="height: 27px; width: 186px;">用户名:</td>
        <td style="height: 27px">
            <input id="txtname" runat="server" class="l_input" name="username" type="text" style="width: 146px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                ErrorMessage="*"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="center" style="width: 186px">密&nbsp;&nbsp;码:</td>
        <td>
            <input id="txtpwd" runat="server" class="l_input" name="password" type="password" style="width: 146px" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd"
                ErrorMessage="*"></asp:RequiredFieldValidator></td>
      </tr>
      <tr>
        <td align="center" style="height: 41px" colspan="2">&nbsp;
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="skin/images/dx_04.gif"
                OnClick="ImageButton1_Click" /></td>
      </tr>
    </table></td>
  </tr>
</table>
    </form>
</body>
</html>
