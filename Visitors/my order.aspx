<%@ Page Language="C#" MasterPageFile="~/Visitors/Usermaster.master" AutoEventWireup="true" CodeFile="my order.aspx.cs" Inherits="Visitors_my_order" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="style2">
        <tr>
            <td style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                My&nbsp; Orders</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BorderColor="#999999" BorderStyle="Solid" 
                    BorderWidth="1px" CellPadding="3" DataSourceID="AccessDataSource1" 
                    ForeColor="Black" GridLines="Vertical" DataKeyNames="oid" 
                    BackColor="White" style="font-family: Arial, Helvetica, sans-serif">
                    <Columns>
                        <asp:BoundField DataField="oid" HeaderText="oid" SortExpression="oid" 
                            ReadOnly="True" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="odate" HeaderText="odate" 
                            SortExpression="odate" />
                        <asp:BoundField DataField="pname" HeaderText="pname" 
                            SortExpression="pname" />
                        <asp:BoundField DataField="totalamount" HeaderText="totalamount" 
                            SortExpression="totalamount" />
                        <asp:BoundField DataField="ostatus" HeaderText="ostatus" 
                            SortExpression="ostatus" />
                        <asp:BoundField DataField="bankname" HeaderText="bankname" 
                            SortExpression="bankname" />
                        <asp:BoundField DataField="cardno" HeaderText="cardno" 
                            SortExpression="cardno" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Order] WHERE ([name] = ?)" DeleteCommand="delete from [Order] where ([oid]=@oid)">
                    <SelectParameters>
                        <asp:SessionParameter Name="name" SessionField="name1" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

