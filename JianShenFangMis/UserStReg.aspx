<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserStReg.aspx.cs" Inherits="UserStReg" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table cellpadding="2" class="registeInfo" width="100%">
                            <tr>
                                <td align="right" style="height: 35px" width="120">
                                    登录账号：</td>
                                <td style="height: 35px">
                                    <asp:TextBox ID="txtname" runat="server" Width="109px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                        ErrorMessage="必填"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label>
                                    <asp:Label ID="Label5" runat="server" ForeColor="#FF8080"></asp:Label></td>
                            </tr>
                            <tr style="color: #000000">
                                <td align="right">
                                    姓名：</td>
                                <td>
                                    <asp:TextBox ID="XingMing" runat="server" Width="166px"></asp:TextBox></td>
                            </tr>
                            <tr style="color: #000000">
                                <td align="right">
                                    性别：</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="89px">
                                        <asp:ListItem>男</asp:ListItem>
                                        <asp:ListItem>女</asp:ListItem>
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    年龄：</td>
                                <td>
                                    <asp:TextBox ID="Age" runat="server" Width="58px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    电子邮箱：</td>
                                <td>
                                    <label for="ksIDType3">
                                        <asp:TextBox ID="txtemal" runat="server" Width="166px"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemal"
                                            ErrorMessage="格式不正确" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemal"
                                            ErrorMessage="必填"></asp:RequiredFieldValidator>
                                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label></label></td>
                            </tr>
                              <tr>
                                <td align="right">
                                    联系电话：</td>
                                <td>
                                    <asp:TextBox ID="Tel" runat="server"></asp:TextBox></td>
                            </tr>
                        
                            <tr>
                                <td align="right">
                                    用户头像：</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Width="134px" /><br />
                                    <asp:TextBox ID="pic" runat="server" CssClass="inputBox" ReadOnly="True" Width="72px"></asp:TextBox>
                                    <input id="file1" runat="server" class="inputBox" style="width: 141px" type="file" />
                                    <asp:Button ID="Button2" runat="server" CausesValidation="False" CssClass="formbutton" Height="22px"
                                            OnClick="Button2_Click" Text="上传头像" Width="89px" /><asp:Label ID="Label1" runat="server"
                                                Visible="False" Width="60px"></asp:Label>
                                </td>
                            </tr>
                      <tr>
                                <td align="right" style="height: 36px">
                                    登录密码：</td>
                                <td style="height: 36px">
                                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1"
                                        ErrorMessage="必填"></asp:RequiredFieldValidator>
                                    <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="right" style="height: 127px">
                                    用户描述：</td>
                                <td style="height: 127px">
                                    <asp:TextBox ID="txtds" runat="server" Height="115px" TextMode="MultiLine" Width="473px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" /></td>
                            </tr>
                        </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    用户注册</asp:Content>

