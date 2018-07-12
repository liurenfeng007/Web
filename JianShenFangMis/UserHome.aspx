<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
        cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" height="22"
                    style="width: 100%">
                    <uc1:Home id="Home1" runat="server">
                    </uc1:Home></td>
            </tr>
            <tr>
                <td colspan="1" style="width: 100%; height: auto; text-align: left">
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    用户中心</asp:Content>

