<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ZaiXianYuYue.aspx.cs" Inherits="ZaiXianYuYue" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    课程预约
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<table style="width: 100%">
        <tr>
            <td align="left" height="40" style="text-align: left">
                选择课程：<asp:DropDownList ID="DropDownList2" runat="server" Width="357px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList></td>
        </tr>
    <tr>
        <td align="left" height="40" style="text-align: left">
            每节课费用：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    </tr>
    <tr>
        <td align="left" height="40" style="text-align: left">
            课程教练：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <input id="Hidden1" runat="server" type="hidden" /></td>
    </tr>
        <tr>
            <td align="left" height="40" style="text-align: left">
                预约日期：<asp:TextBox ID="TextBox2" runat="server" onclick="fPopCalendar(event,this,this)" onfocus="this.select()" ></asp:TextBox></td>
        </tr>
    <tr>
        <td align="left" height="40" style="text-align: left">
            预约时间：<asp:TextBox ID="TextBox4" runat="server" Width="182px"></asp:TextBox></td>
    </tr>
    <tr>
        <td align="left" height="40" style="text-align: left">
            特殊要求：<asp:TextBox ID="TextBox3" runat="server" Width="443px"></asp:TextBox></td>
    </tr>
    <tr>
        <td align="left" height="40" style="text-align: left">
            预约节次：<asp:TextBox ID="TextBox5" runat="server" Width="104px" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>小时</td>
    </tr>
    <tr>
        <td align="left" height="40" style="text-align: left">
            总费用：<asp:Label ID="Label3" runat="server" Text="0"></asp:Label></td>
    </tr>
        <tr>
            <td style="color: #999999; border-bottom: #cccccc 1px dashed; text-align: center">
                备注信息</td>
        </tr>
        <tr>
            <td style="height: 161px" valign="top">
                <asp:TextBox ID="TextBox1" runat="server" Height="151px" Width="100%" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" valign="top">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="预约" />&nbsp;<asp:Label
                    ID="Label1" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

