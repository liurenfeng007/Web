<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KeChengList.aspx.cs" Inherits="KeChengList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    课程列表
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td align="left" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%">
                    <asp:DataList ID="DataList1" runat="server" Height="234px" RepeatColumns="3" Width="100%">
                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td style="width: 204px; height: 162px;">
                                        <a class="highlightit" href='KeCheng.aspx?id=<%#Eval("id") %>'>
                                            <img alt="" border="0" src='files/<%#Eval("Photo")%>' style="width: 210px; height: 174px" /></a></td>
                                </tr>
                                <tr>
                                    <td align="center" style="width: 204px">
                                        <a href='KeCheng.aspx?id=<%#Eval("id") %>'>
                                            <%#Eval("name").ToString().Length > 11 ? CutChar(Eval("name").ToString(), 11) + "..." : Eval("name")%>
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                    </td>
            </tr>
            <tr>
                <td align="center" bgcolor="#fbfbfb" class="middle_border_1 margin_middle1" style="width: 100%;
                    height: 38px">
                    共【<asp:Label ID="lblSumPage" runat="server"></asp:Label>】页 &nbsp; &nbsp; &nbsp;
                    当前第【<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>】页&nbsp;
                    <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp;<asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

