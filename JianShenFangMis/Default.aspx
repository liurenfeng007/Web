<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%-- 在此处添加内容控件 --%>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

 
			
			
			<asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                    Width="100%">
                    <ItemTemplate>
                      <table id="Table8" runat="server" border="0" cellpadding="1" cellspacing="0" style="width: 100%">
                                    <tr>
                                        <td align="left" style="width: 329px">
                                         【<a href='<%#Eval("TypeName","JiaoLianTypeList.aspx?TypeName={0}")%>'>
                                        <%#Eval("TypeName").ToString().Length > 25 ? CutChar(Eval("TypeName").ToString(), 32) + "..." : Eval("TypeName")%>
                                    </a>】
                                        <a href='<%#Eval("id","JiaoLianInfo.aspx?id={0}")%>'>
                                        <%#Eval("name").ToString().Length > 25 ? CutChar(Eval("name").ToString(), 32) + "..." : Eval("name")%>
                                    </a> </td>
                                        <td align="center" style="width: 140px">
                                            <asp:Label ID="Label2" runat="server" Height="20px" Text='<%# DataBinder.Eval(Container, "DataItem.Addtime") %>'
                                                Width="193px"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                      
                            
                            
</ItemTemplate>
                </asp:DataList> 
			
			
	
           
		 
		<div class="c_title"><font>最新课程</font>  </div>
			<ul class="news_list">
		<asp:DataList ID="DataList2" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                    Width="100%">
                    <ItemTemplate>
                        <li><a href="KeCheng.aspx?id=<%#Eval("id") %>"><p class="KeCheng.aspx?id=<%#Eval("id") %>"><img src="files/<%#Eval("Photo")%>" style="width: 165px; height: 188px" /></p><p class="title"><%#Eval("Name").ToString().Length > 25 ? CutChar(Eval("Name").ToString(), 32) + "..." : Eval("Name")%></p></a></li>
                                        
                                        
                                      
                            
                            
</ItemTemplate>
                </asp:DataList>       
		</ul>
   </asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    推荐教练</asp:Content>
