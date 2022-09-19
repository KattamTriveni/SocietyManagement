<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="HManage.UI.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div style="background-position: center center; background-color:paleturquoise; background-image: url('images/img2%20(1).jpg'); background-repeat: no-repeat; background-attachment: inherit; height: 728px;">
    <br /> <br />
    <table class="nav-justified" style="height: 707px; width: 91%;">
        
    <tr>
        <td class="modal-sm" style="width: 314px; height: 425px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MEMBER LOGIN AREA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table class="nav-justified" style="height: 132px">
                <tr>
                    <td>UserName:</td>
                    <td>
                        <asp:TextBox ID="txtuname" runat="server" Width="170px"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server" Width="170px"  TextMode="Password"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height: 38px"></td>
                    <td style="height: 38px">
                        <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="User_Login" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lbn1" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SOCIETY LIST<br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource2" Height="21px" Width="304px" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="#F7F7DE" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetSocieties" TypeName="HManage.BusinessLayer.SocietyService"></asp:ObjectDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td style="background-position: right center; height: 425px; background-repeat: no-repeat; background-attachment: inherit;">&nbsp;</td>
    </tr>
</table>
          </div>
</asp:Content>
