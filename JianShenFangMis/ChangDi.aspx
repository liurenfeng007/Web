<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangDi.aspx.cs" Inherits="ChangDi" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    场地信息
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
        cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" height="22"
                    style="width: 100%">
                    <b>场地名称：<asp:Label ID="Label2" runat="server" Width="100%"></asp:Label></b></td>
            </tr>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" style="width: 100%;
                    height: 22px">
                    添加时间：<asp:Label ID="Label1" runat="server" Width="21%"></asp:Label>场地类型：<asp:Label
                        ID="Label3" runat="server" Width="13%"></asp:Label>状态：<asp:Label ID="Label4" runat="server"
                            Width="13%"></asp:Label>收费标准：<asp:Label ID="Label6" runat="server" Width="13%"></asp:Label></td>
            </tr>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" style="width: 100%;
                    height: 22px">
                    <asp:Image ID="Image2" runat="server" Height="246px" Width="248px" /></td>
            </tr>
           
            <tr>
                <td colspan="1" style="width: 100%; height: auto; text-align: left">
                    <strong>
                        <div id="DIV1" runat="server" style="width: 100%; height: auto">
                        </div>
                    </strong>
                </td>
            </tr>
            <tr>
                <td align="left" colspan="1" style="width: 100%; height: 21px; text-align: left">
                    &nbsp;</td>
            </tr>
        </tbody>
    </table>
</asp:Content>

