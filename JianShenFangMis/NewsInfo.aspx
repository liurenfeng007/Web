<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsInfo.aspx.cs" Inherits="NewsInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
            cellpadding="0" cellspacing="0" style="width: 100%">
            <tbody>
                <tr>
                    <td align="center"  class="tabTitle" colspan="1" height="22"
                        style="width: 100%;">
                        <b>
                            <asp:Label ID="Label2" runat="server" ></asp:Label></b></td>
                </tr>
                <tr>
                    <td align="center"  class="tabTitle" colspan="1" style="width: 100%;
                        height: 22px">
                        <asp:Label ID="Label1" runat="server"  ></asp:Label></td>
                </tr>
                <tr>
                    <td colspan="1" style="width: 100%; height: auto; text-align: left">
                        <strong>
                            <div id="DIV1" runat="server" style="width: 100%; height: auto">
                            </div>
                        </strong>
                    </td>
                </tr>
            </tbody>
        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    健身资讯</asp:Content>

