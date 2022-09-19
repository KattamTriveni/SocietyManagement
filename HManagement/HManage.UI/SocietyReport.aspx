<%@ Page Title="" Language="C#" MasterPageFile="~/AdminFun.Master" AutoEventWireup="true" CodeBehind="SocietyReport.aspx.cs" Inherits="HManage.UI.SocietyReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 64%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div style="background-color:pink">
    <table align="center" class="auto-style1">
        <tr>
            <td>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="ObjectDataSource1" GridLines="None" DataKeyNames="SocID" Height="123px" Width="874px" >
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="SocID" HeaderText="SocID" SortExpression="SocID" />
                        <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                        <asp:BoundField DataField="Addres" HeaderText="Addres" SortExpression="Addres" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                        <asp:BoundField DataField="NoHouse" HeaderText="NoHouse" SortExpression="NoHouse" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteSociety" SelectMethod="GetSocieties" TypeName="HManage.BusinessLayer.SocietyService" UpdateMethod="UpdateSociety" >
                    <DeleteParameters>
                        <asp:Parameter Name="SocID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SocID" Type="Int32" />
                        <asp:Parameter Name="SName" Type="String" />
                        <asp:Parameter Name="Addres" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="Pincode" Type="String" />
                        <asp:Parameter Name="NoHouse" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
            </td>
        </tr>
    </table>
        </div>
</asp:Content>
