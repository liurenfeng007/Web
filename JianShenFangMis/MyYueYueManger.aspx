<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyYueYueManger.aspx.cs" Inherits="MyYueYueManger" Title="Untitled Page" %>

<%@ Register Src="Home.ascx" TagName="Home" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    我的预约信息
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table1" align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#ffcf00"
        cellpadding="0" cellspacing="0" style="width: 100%">
        <tbody>
            <tr>
                <td align="center"   class="tabTitle" colspan="1" height="22"
                    style="width: 100%">
                    <uc1:Home ID="Home1" runat="server" />
                    &nbsp;
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="1" style="width: 100%; height: auto; text-align: left">
                    <table id="Table2" align="center" border="0" cellpadding="5" cellspacing="0" style="width: 98%">
                        <tr style="color: #000000">
                            <td colspan="4">
                                <asp:GridView ID="gvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvInfo_PageIndexChanging"
                                    OnRowDataBound="gvInfo_RowDataBound" OnRowDeleting="gvInfo_RowDeleting1" OnSelectedIndexChanged="gvInfo_SelectedIndexChanged"
                                    PageSize="12" Width="100%">
                                    <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                                        NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                                    <RowStyle HorizontalAlign="Left" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="课程名称">
                                            <ItemTemplate>
                                                <asp:Label ID="CDBianHao" runat="server" Text='<%# Bind("CDBianHao") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                                        </asp:TemplateField>
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
                                         <asp:TemplateField HeaderText="预约节次">
                                            <ItemTemplate>
                                                <asp:Label ID="ShiChang" runat="server" Text='<%# Bind("ShiChang") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                                        </asp:TemplateField>
                                         
                                        <asp:TemplateField HeaderText="预约状态">
                                            <ItemTemplate>
                                                <asp:Label ID="ZhuangTai" runat="server" Text='<%# Bind("ZhuangTai") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                                        </asp:TemplateField>
                                        
                                               
                                        <asp:TemplateField HeaderText="总费用">
                                            <ItemTemplate>
                                                <asp:Label ID="ZongFeiYong" runat="server" Text='<%# Bind("ZongFeiYong") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Left" Width="80px" />
                                        </asp:TemplateField>
                                        
                                        <asp:TemplateField HeaderText="付费">
                                <ItemTemplate>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "FuFei.aspx?id="+Eval("id") %>'
                                        Text="付费" Width="77px"></asp:HyperLink>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="80px" />
                            </asp:TemplateField>
                                        <asp:TemplateField HeaderText="取消预约" ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                                    Text="取消预约" Width="71px"></asp:LinkButton>
                                            </ItemTemplate>
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
                        <tr>
                            <td align="center" colspan="4">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

