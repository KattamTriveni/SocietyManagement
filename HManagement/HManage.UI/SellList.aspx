<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SellList.aspx.cs" Inherits="HManage.UI.SellList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   

    <div style="background-color:paleturquoise">
    
    <table align="center" style="width: 50%">
    <tr>
        <td style="width: 1142px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ObjectDataSource1" Width="700px" AllowPaging="True" ForeColor="Black" GridLines="Vertical" Height="79px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="HID" HeaderText="HID" SortExpression="HID" />
                    <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
                    <asp:BoundField DataField="Sell" HeaderText="Sell" SortExpression="Sell" />
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
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetHSells" TypeName="HManage.BusinessLayer.SellService"></asp:ObjectDataSource>
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
        </div>
</asp:Content>
