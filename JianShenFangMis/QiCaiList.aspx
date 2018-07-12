<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QiCaiList.aspx.cs" Inherits="QiCaiList" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    器材
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
      <ul class="con1_right product">
					<asp:DataList ID="DataList2" runat="server" Height="234px" RepeatColumns="3" Width="100%">
                        <ItemTemplate>
                         
                            <li>
                        <a href="QiCai.aspx?id=<%#Eval("id") %>" class="pro-img"><img src="files/<%#Eval("Photo")%>" width="229" height="172"></a>
                        <span class="zoom"></span>
                        <p><a href="QiCai.aspx?id=<%#Eval("id") %>">   <%#Eval("name").ToString().Length > 11 ? CutChar(Eval("name").ToString(), 11) + "..." : Eval("name")%></a></p>
                    </li>
                             
                        </ItemTemplate>
                    </asp:DataList>
                    
					
				</ul>
				
				  <div class="Page clearfix">
       <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
    
      <asp:HyperLink ID="lblSumPage" runat="server">[HyperLink2]</asp:HyperLink>
                        <asp:HyperLink ID="hyfirst" runat="server">首页</asp:HyperLink>
                     <asp:HyperLink ID="lnkPrev" runat="server">上一页</asp:HyperLink>
                        
                        <asp:HyperLink ID="lnkNext" runat="server">下一页</asp:HyperLink>
                    
                        <asp:HyperLink ID="hylastpage" runat="server">尾页</asp:HyperLink>
  </div>
     
</asp:Content>

