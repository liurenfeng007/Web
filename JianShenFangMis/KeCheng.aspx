<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="KeCheng.aspx.cs" Inherits="KeCheng" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    课程信息
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
        cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" height="22"
                    style="width: 100%">
                    <b>课程名称：<asp:Label ID="Label2" runat="server" Width="100%"></asp:Label></b></td>
            </tr>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" style="width: 100%;
                    height: 22px">
                    添加时间：<asp:Label ID="Label1" runat="server" Width="21%"></asp:Label>课程教练：<asp:Label
                        ID="Label3" runat="server" Width="13%"></asp:Label>状态：<asp:Label ID="Label4" runat="server"
                            Width="13%"></asp:Label>每节课费用：<asp:Label ID="Label6" runat="server" Width="13%"></asp:Label></td>
            </tr>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" style="width: 100%;
                    height: 22px">
                    <asp:Image ID="Image2" runat="server" Height="246px" Width="248px" /></td>
            </tr>
           
            <tr>
                <td colspan="1" style="width: 100%; height: auto; text-align: left">
                    <strong>
                        <div id="DIV1" runat="server" style="width: 689px; height: auto">
                        </div>
                    </strong>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="1" style="width: 100%; height: auto; text-align: center">
                    该课程的预约情况</td>
            </tr>
            <tr>
                <td align="left" colspan="1" style="width: 100%; height: 21px; text-align: left">
                    <asp:GridView ID="gvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvInfo_PageIndexChanging"
                        OnRowDataBound="gvInfo_RowDataBound" OnRowDeleting="gvInfo_RowDeleting1" OnSelectedIndexChanged="gvInfo_SelectedIndexChanged"
                        PageSize="12" Width="100%">
                        <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                        <RowStyle HorizontalAlign="Left" />
                        <Columns>
                             
                            <asp:TemplateField HeaderText="预约日期">
                                <ItemTemplate>
                                    <asp:Label ID="RiQi" runat="server" Text='<%# Bind("RiQi") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="预约时间">
                                <ItemTemplate>
                                    <asp:Label ID="YuYueTime" runat="server" Text='<%# Bind("YuYueTime") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                             
                            <asp:TemplateField HeaderText="预约状态">
                                <ItemTemplate>
                                    <asp:Label ID="ZhuangTai" runat="server" Text='<%# Bind("ZhuangTai") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                                 
                            <asp:TemplateField HeaderText="特殊要求">
                                <ItemTemplate>
                                    <asp:Label ID="Yaoqiu" runat="server" Text='<%# Bind("Yaoqiu") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                        </Columns>
                        <PagerTemplate>
                            <table border="0" width="100%">
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButtonFirstPage" runat="server" CommandArgument="First" CommandName="Page"
                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">首页 </asp:LinkButton>
                                        <asp:LinkButton ID="LinkButtonPreviousPage" runat="server" CommandArgument="Prev"
                                            CommandName="Page" Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != 0 %>">上一页 </asp:LinkButton>
                                        <asp:LinkButton ID="LinkButtonNextPage" runat="server" CommandArgument="Next" CommandName="Page"
                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">下一页 </asp:LinkButton>
                                        <asp:LinkButton ID="LinkButtonLastPage" runat="server" CommandArgument="Last" CommandName="Page"
                                            Visible=" <%# ((GridView)Container.NamingContainer).PageIndex != ((GridView)Container.NamingContainer).PageCount - 1 %>">尾页 </asp:LinkButton>
                                        共
                                        <asp:Label ID="LabelPageCount" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageCount %>"> </asp:Label>页
                                        第
                                        <asp:Label ID="Label2" runat="server" Text=" <%# ((GridView)Container.NamingContainer).PageIndex + 1 %>"> </asp:Label>页
                                    </td>
                                    <td align="right" width="20%">
                                    </td>
                                </tr>
                            </table>
                        </PagerTemplate>
                        <PagerStyle BackColor="#F6F6F6" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#F6F6F6" />
                    </asp:GridView>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

