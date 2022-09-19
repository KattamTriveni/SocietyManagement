<%@ Page Title="" Language="C#" MasterPageFile="~/Memberfun.Master" AutoEventWireup="true" CodeBehind="SellReport.aspx.cs" Inherits="HManage.UI.SellReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 59%;
    }
    .auto-style2 {
        height: 351px;
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
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" GridLines="Vertical" Width="723px" DataKeyNames="SellId" Height="16px" ForeColor="Black">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="SellId" HeaderText="SellId" SortExpression="SellId" />
                    <asp:BoundField DataField="HID" HeaderText="HID" SortExpression="HID" />
                    <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="Sell" HeaderText="Sell" SortExpression="Sell" />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
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
&nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteSell" SelectMethod="GetHSells" TypeName="HManage.BusinessLayer.SellService" UpdateMethod="UpdateSell">
                <DeleteParameters>
                    <asp:Parameter Name="SellId" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SellId" Type="Int32" />
                    <asp:Parameter Name="HID" Type="Int32" />
                    <asp:Parameter Name="SName" Type="String" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                    <asp:Parameter Name="Sell" Type="Int32" />
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
        </td>
    </tr>
</table>
        </div>
</asp:Content>
