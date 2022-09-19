<%@ Page Title="" Language="C#" MasterPageFile="~/Memberfun.Master" AutoEventWireup="true" CodeBehind="RentReport.aspx.cs" Inherits="HManage.UI.RentReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 62%;
        }
    .auto-style2 {
        width: 826px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:navajowhite">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style2">
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" GridLines="Vertical" DataKeyNames="RID" Width="723px" Height="16px" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="RID" HeaderText="RID" SortExpression="RID" />
                        <asp:BoundField DataField="HID" HeaderText="HID" SortExpression="HID" />
                        <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                        <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                        <asp:BoundField DataField="Rent" HeaderText="Rent" SortExpression="Rent" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
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
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteRent" SelectMethod="GetHRents" TypeName="HManage.BusinessLayer.RentService" UpdateMethod="UpdateRent">
                    <DeleteParameters>
                        <asp:Parameter Name="RID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RID" Type="Int32" />
                        <asp:Parameter Name="HID" Type="Int32" />
                        <asp:Parameter Name="SName" Type="String" />
                        <asp:Parameter Name="UserID" Type="Int32" />
                        <asp:Parameter Name="Rent" Type="Double" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
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
        </div>
</asp:Content>
