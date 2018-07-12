<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PageCtrl.ascx.cs" Inherits="PageCtrl" %>
<asp:Table ID="Table1" runat="server" align="right" BackColor="White" border="0"
    BorderColor="Lime" Font-Size="12px" ForeColor="#00C0C0" Width="487px">
    <asp:TableRow ID="TableRow1" runat="server">
        <asp:TableCell ID="TableCell1" runat="server"></asp:TableCell>
        <asp:TableCell ID="TableCell2" runat="server" Width="35px">
            <asp:LinkButton ID="btnFirst" runat="server" CommandArgument="first" OnClick="PagerButtonClick">首 页</asp:LinkButton></asp:TableCell>
        <asp:TableCell ID="TableCell3" runat="server" Width="45px">
            <asp:LinkButton ID="btnPrev" runat="server" CommandArgument="prev" OnClick="PagerButtonClick">上一页</asp:LinkButton></asp:TableCell>
        <asp:TableCell ID="TableCell4" runat="server" Width="45px">
            <asp:LinkButton ID="btnNext" runat="server" CommandArgument="next" OnClick="PagerButtonClick">下一页</asp:LinkButton></asp:TableCell>
        <asp:TableCell ID="TableCell5" runat="server" Width="45px">
            <asp:LinkButton ID="btnLast" runat="server" CommandArgument="last" OnClick="PagerButtonClick">尾 页</asp:LinkButton></asp:TableCell>
        <asp:TableCell ID="TableCell6" runat="server" Width="40px">
            <asp:Label ID="LblCurrentIndex" runat="server"></asp:Label></asp:TableCell>
        <asp:TableCell ID="TableCell7" runat="server" Width="40px">
            <asp:Label ID="LblPageCount" runat="server"></asp:Label></asp:TableCell>
        <asp:TableCell ID="TableCell8" runat="server" Width="60px">
            <asp:Label ID="LblRecordCount" runat="server"></asp:Label></asp:TableCell>
        <asp:TableCell ID="TableCell9" runat="server" Width="0px">
            <asp:Label ID="LblNoRecord" runat="server" Text="记录为零" Visible="False"></asp:Label></asp:TableCell>
        <asp:TableCell ID="TableCell10" runat="server" Width="40px">跳转到</asp:TableCell>
        <asp:TableCell ID="TableCell11" runat="server" Width="60px">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="TextBoxStyle1" Height="15px"
                onkeydown="SubmitKeyClick('SearchNoCtrl1_btnSearch')" SkinID="TextBox1" Width="20px"></asp:TextBox>
            页</asp:TableCell>
        <asp:TableCell ID="TableCell12" runat="server" Width="40px">
            <asp:Button ID="btnGotoPage" runat="server" CssClass="But1" Height="18px" OnClick="btnGotoPage_Click"
                SkinID="Button1" Text="跳转" /></asp:TableCell>
        <asp:TableCell ID="TableCell13" runat="server"></asp:TableCell>
    </asp:TableRow>
</asp:Table>