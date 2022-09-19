<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="HManage.UI.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="background-color:paleturquoise">
    <br />
    <br />
<br />
    <br />
    <table align="center" style="width: 40%; height: 290px;">
        <tr>
            <td style="height: 38px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADMIN LOGIN PANEL&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="nav-justified" style="height: 227px">
                    <tr>
                        <td style="height: 61px">User Name:</td>
                        <td style="height: 61px">
                            <asp:TextBox ID="txtun" runat="server" Width="260px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 59px">Password:</td>
                        <td style="height: 59px">
                            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="260px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 60px"></td>
                        <td style="height: 60px">
                            <asp:Button ID="btnlogin" runat="server" Height="37px"  Text="Login" Width="154px" OnClick="Admin_Login" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="lbn1" runat="server"></asp:Label>
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
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
         </div>
</asp:Content>
