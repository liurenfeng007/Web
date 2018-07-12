<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="Admin_UserList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>健身房系统 </title>
    <link rel="stylesheet" type="text/css" href="skin/css/base.css"/>
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
      会员信息管理</td>
 </tr>
</table>
     <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label></td>
</tr>
</table>
    </div>
        <table align="center" bgcolor="#e3ebfe" border="0" cellpadding="2" cellspacing="1"
            style="margin-top: 8px" width="98%">
            <tr align="right" bgcolor="#eef4ea">
                <td align="left" colspan="10" height="36">
                    <asp:GridView ID="gvInfo" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        BackColor="White" CellPadding="5" DataKeyNames="id" OnPageIndexChanging="gvInfo_PageIndexChanging"
                        OnRowDataBound="gvInfo_RowDataBound" OnRowDeleting="gvInfo_RowDeleting" PageSize="10"
                        Width="100%">
                        <PagerSettings FirstPageText="首页" LastPageText="尾页" Mode="NextPreviousFirstLast"
                            NextPageText="下一页" PageButtonCount="12" PreviousPageText="上一页" />
                        <RowStyle HorizontalAlign="Left" />
                        <Columns>
                            <asp:TemplateField HeaderText="帐号">
                                <ItemTemplate>
                                    <asp:Label ID="UserName" runat="server" Text='<%# Bind("UserName") %>' Width="117px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="60px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="姓名">
                                <ItemTemplate>
                                    <asp:Label ID="XingMing" runat="server" Text='<%# Bind("XingMing") %>' Width="104px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="60px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="性别">
                                <ItemTemplate>
                                    <asp:Label ID="Sex" runat="server" Text='<%# Bind("Sex") %>' Width="83px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="电子邮件">
                                <ItemTemplate>
                                    <asp:Label ID="emal" runat="server" Text='<%# Bind("emal") %>' Width="83px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="100px" />
                            </asp:TemplateField>
                               <asp:TemplateField HeaderText="联系电话">
                                <ItemTemplate>
                                    <asp:Label ID="Tel" runat="server" Text='<%# Bind("Tel") %>' Width="83px"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Left" Width="100px" />
                            </asp:TemplateField>
                                   
                           
                            <asp:TemplateField HeaderText="年龄" >
                                <ItemTemplate>
                                    <asp:Label ID="Age" runat="server" Text='<%# Bind("Age") %>' Width="80px"></asp:Label>
                                </ItemTemplate>
                                 <ItemStyle HorizontalAlign="Left" Width="100px" />
                            </asp:TemplateField>
                            
                                 
                            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete"
                                        OnClientClick="return confirm('确定要删除吗？')" Text="删除" Width="71px"></asp:LinkButton>
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
        </table>
    </form>
</body>
</html>
