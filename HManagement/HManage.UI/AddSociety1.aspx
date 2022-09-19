<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFun.Master" AutoEventWireup="true" CodeBehind="AddSociety1.aspx.cs" Inherits="HManage.UI.AddSociety1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
    .auto-style3 {
        width: 31%;
    }
    .auto-style4 {
        height: 101px;
    }
    .auto-style5 {
        height: 51px;
    }
    .auto-style6 {
        height: 53px;
    }
    .auto-style8 {
        height: 50px;
    }
    .auto-style10 {
        margin-bottom: 7px;
    }
</style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:pink">
    <p>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADD&nbsp; SOCIETY</p>
<table align="center" class="auto-style3">
        <tr>
            <td class="auto-style8">SocietyID:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="PlsEnterId"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">SocietyName:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="PlsEnterName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Address:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtadderss" runat="server" CssClass="auto-style10"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">City:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Pincode:</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">No of Houses:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">
                <asp:Button ID="btn1" runat="server"  Text="ADD SOCIETY" OnClick="Add_Society" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
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
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
