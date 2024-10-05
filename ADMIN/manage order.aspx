<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="manage order.aspx.cs" Inherits="ADMIN_manage_order" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
            font-weight: 700;
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" cellspacing="5" class="style2">
        <tr>
            <td style="text-align: center" colspan="2">
                Manage Order</td>
        </tr>
        <tr>
            <td align="center">
                
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Order]"
                    UpdateCommand = "update [Order] set [ostatus]=@ostatus  where [oid]=@oid">
                    
                </asp:AccessDataSource>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                Change Status:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
            </td>
            <td align="center">
                
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="oid" DataSourceID="AccessDataSource1" 
                    AutoGenerateSelectButton="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:BoundField DataField="oid" HeaderText="oid" ReadOnly="True" 
                            SortExpression="oid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="odate" HeaderText="odate" SortExpression="odate" />
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="totalamount" HeaderText="totalamount" 
                            SortExpression="totalamount" />
                        <asp:BoundField DataField="ostatus" HeaderText="ostatus" 
                            SortExpression="ostatus" />
                        <asp:BoundField DataField="bankname" HeaderText="bankname" 
                            SortExpression="bankname" />
                        <asp:BoundField DataField="cardno" HeaderText="cardno" 
                            SortExpression="cardno" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

