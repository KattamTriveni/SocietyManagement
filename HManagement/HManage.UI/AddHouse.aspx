<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFun.Master" AutoEventWireup="true" CodeBehind="AddHouse.aspx.cs" Inherits="HManage.UI.AddHouse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 50%;
    }
    .auto-style3 {
        height: 33px;
            width: 152px;
        }
        .auto-style4 {
            width: 37%;
            height: 562px;
        }
        .auto-style5 {
            width: 282px;
        }
        .auto-style6 {
            height: 33px;
            width: 282px;
        }
        .auto-style7 {
            width: 152px;
        }
        .auto-style8 {
            width: 152px;
            height: 301px;
        }
        .auto-style9 {
            width: 282px;
            height: 301px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div style="background-color:pink">
    <p>
    <br />
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADD HOUSE</p>
<table align="center" class="auto-style4">
    <tr>
        <td class="auto-style7">House ID:</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PlsEnterHouseID" runat="server" ControlToValidate="txtid" ErrorMessage="PlsEnterId"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Block Number:</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtblockno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtblockno" ErrorMessage="PlsEnterBlockNo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Type</td>
        <td class="auto-style5">
            <asp:TextBox ID="txttype" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Society Name:</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtsname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtsname" ErrorMessage="PlsEnterSocName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style6">
            <asp:Button ID="btnadd" runat="server" Text="Add House" OnClick="Add_House" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style9">
            <asp:Label ID="lbnmsg" runat="server"></asp:Label>
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
        </div>
</asp:Content>
