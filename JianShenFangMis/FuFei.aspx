<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FuFei.aspx.cs" Inherits="FuFei" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    在线付款
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align="center" height="40" style="text-align: center">
                <uc1:Home ID="Home1" runat="server" />
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" height="40" style="text-align: center">
                现有金额：<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>需要付费金额：
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:Button ID="btnRegister" runat="server" Font-Size="12pt" OnClick="btnRegister_Click"
                    Text="付费" /></td>
        </tr>
    </table>
</asp:Content>

