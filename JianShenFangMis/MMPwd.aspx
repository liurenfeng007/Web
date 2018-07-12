<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MMPwd.aspx.cs" Inherits="MMPwd" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="2" class="registeInfo" width="100%">
                                        <tr>
                                            <td colspan="2" style="height: 35px">
                                                <uc1:Home ID="Home1" runat="server" />
                                            </td>
                                        </tr>
        <tr>
            <td id="TD1" align="right" style="height: 35px" width="120">
                原密码：</td>
            <td style="height: 35px">
                <asp:TextBox ID="txtpwd1" runat="server" TextMode="Password" Width="142px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd1"
                    Display="Dynamic" ErrorMessage="密码不能空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="right" style="height: 35px" width="120">
                新密码：</td>
            <td style="height: 35px">
                <asp:TextBox ID="txtpwd2" runat="server" TextMode="Password" Width="138px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd2" Display="Dynamic"
                    ErrorMessage="密码不能空"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td align="right" style="height: 35px" width="120">
                确认密码：</td>
            <td style="height: 35px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="138px"></asp:TextBox><asp:CompareValidator
                    ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="txtpwd2"
                    Display="Dynamic" ErrorMessage="密码不一致"></asp:CompareValidator></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修改" />
                <br />
                <asp:Label ID="LabelWarningMessage" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    修改登录密码</asp:Content>

