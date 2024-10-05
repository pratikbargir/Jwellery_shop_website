<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="manage user.aspx.cs" Inherits="ADMIN_manage_user" Title="Untitled Page" %>

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
                User List</td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BorderColor="#999999" BorderStyle="Solid" 
                    BorderWidth="1px" CellPadding="3" DataSourceID="AccessDataSource2" 
                    ForeColor="Black" GridLines="Vertical" BackColor="White">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" 
                            SortExpression="Zipcode" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" 
                            SortExpression="State" />
                        <asp:BoundField DataField="Mobno" HeaderText="Mobno" SortExpression="Mobno" />
                        <asp:BoundField DataField="Telno" HeaderText="Telno" SortExpression="Telno" />
                        <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                        <asp:BoundField DataField="Emailaddress" HeaderText="Emailaddress" 
                            SortExpression="Emailaddress" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Login]">
                </asp:AccessDataSource>
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

