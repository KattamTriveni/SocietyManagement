<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFun.Master" AutoEventWireup="true" CodeBehind="AddMember.aspx.cs" Inherits="HManage.UI.AddMember" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
    }
        .auto-style3 {
            margin-right: 214px;
        }
        .auto-style4 {
            height: 33px;
            width: 292px;
        }
    .auto-style5 {
        height: 145px;
    }
    .auto-style6 {
        height: 145px;
        width: 292px;
    }
    .auto-style7 {
        height: 604px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:pink">
    <p>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ALLOCATE HOUSE</p>
<table align="center" class="auto-style7">
    <tr>
        <td>User ID:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtuid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuid" ErrorMessage="PlsEnterUserId"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Full Name:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="PlsEnterName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Email:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mobile:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtmoblie" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>House ID:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txthid" runat="server" CssClass="auto-style3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txthid" ErrorMessage="PlsEnterHouseID"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Society Name:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Total Members:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtmembers" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>UserName:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtuname" ErrorMessage="PlsEnterUserName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td class="auto-style4">
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpwd" ErrorMessage="PlsEnterPassword"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style4">
            <asp:Button ID="btnadd" runat="server" Text="Add Member" OnClick="Add_Member" />
        </td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style6">
            <asp:Label ID="lbnmsg" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
        </div>
</asp:Content>
