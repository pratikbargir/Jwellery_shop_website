<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Manage rates.aspx.cs" Inherits="ADMIN_Manage_rates" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style2
        {
            width: 100%;
            height: 414px;
        }
        .style3
        {
            font-size: small;
        }
        .style3
        {            text-align: center;
        }
        .style4
        {
            width: 70%;
            height: 0;
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
        }
    .style5
    {
        text-align: right;
    }
        .style6
        {
            font-size: small;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="5" class="style2">
    <tr>
        <td 
            
            style="text-align: left; color: #FFFFFF; font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif; background-color: #666666;">
            &nbsp;&nbsp;&nbsp;
            MANAGE RATES<br />
        </td>
    </tr>
    <tr>
        <td class="style3">
            <br />
            <table align="right" cellpadding="3" class="style4">
                <tr>
        <td class="style6">
            <p>
&nbsp; Id</p>
                    </td>
        <td class="style5">
            <asp:TextBox ID="txtid" runat="server" Height="30px" Width="200px" 
                Enabled="False"></asp:TextBox>
        
        </td>
        <td rowspan="5">
                <asp:GridView ID="GridView1" runat="server" Width="500px" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    AutoGenerateColumns="False" CellSpacing="2" DataKeyNames="rateid" 
                    DataSourceID="AccessDataSource2" ForeColor="Black" Height="400px">
                    <RowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="rateid" HeaderText="rateid" ReadOnly="True" 
                            SortExpression="rateid" />
                        <asp:BoundField DataField="category" HeaderText="category" 
                            SortExpression="category" />
                        <asp:BoundField DataField="subcat" HeaderText="subcat" 
                            SortExpression="subcat" />
                        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [rate]">
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [rate]">
                </asp:AccessDataSource>
        </td>
                                                            </tr>
                                                            <tr>
        <td class="style6">
            <p>
            &nbsp; Category</p>
                                                                </td>
        <td class="style5">
          
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                Height="35px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                Width="200px">
                <asp:ListItem>Gold</asp:ListItem>
                <asp:ListItem>Platinum</asp:ListItem>
                <asp:ListItem>Diamond</asp:ListItem>
                <asp:ListItem>Kundan</asp:ListItem>
                <asp:ListItem>Solitaires</asp:ListItem>
                <asp:ListItem>Gold coins</asp:ListItem>
            </asp:DropDownList>
            <br />
        </td>
                </tr>
                                                            <tr>
        <td class="style6">
            <p>
            Sub category</p>
                                                                </td>
        <td class="style5">
          
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                Height="35px" Width="200px">
            </asp:DropDownList>
        </td>
                </tr>
                <tr>
        <td class="style6">
            <p>
            Rate</p>
                    </td>
        <td class="style5">
            <asp:TextBox ID="txtrate" runat="server" Height="30px" Width="200px"></asp:TextBox>
        </td>
                </tr>
                <tr>
        <td class="style3" colspan="2">
            <asp:Button ID="btnadd" runat="server" Text="Add New" onclick="btnadd_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
                &nbsp;
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px"  />
&nbsp;
                <asp:Button ID="Update" runat="server" Text="Update" onclick="Update_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
&nbsp;
                <asp:Button ID="Delete" runat="server" Text="Delete" onclick="Delete_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
                    </td>
                </tr>
                <tr>
        <td class="style3">
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                </tr>
                <tr>
                    <td colspan="2" class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style3">
                &nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td class="style3">
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

