<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Add category.aspx.cs" Inherits="ADMIN_Add_category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 92%;
            height: 414px;
        }
        .style3
        {            text-align: right;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
        <tr>
            <td style="text-align: center">
    <table cellspacing="0" class="style2">
    <tr>
        <td 
            
            style="text-align: left; color: #FFFFFF; font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif; background-color: #666666;">
            &nbsp;&nbsp;&nbsp; MANAGE CATEGORIES<br />
        </td>
    </tr>
    <tr>
        <td class="style3">
            <br />
            <table align="right" cellpadding="3" class="style4">
                <tr>
            <td class="style3">
                <table align="center" width="60%">
                    <tr>
                        <td class="style4">
                Category Id</td>
                        <td style="text-align: left">
                <asp:TextBox ID="txtid" runat="server" Height="30px" MaxLength="30" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                Category Name</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter character only" 
                    ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
                <br />
            </td>
                    </tr>
                    <tr>
                        <td class="style4" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
            <td class="style3">
                <span class="style4">&nbsp;</span><br class="style4" />
                <span class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                <br class="style4" />
                <span class="style4">
                <asp:Button ID="btnadd" runat="server" Text="Add New" onclick="btnadd_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Update" runat="server" Text="Update" onclick="Update_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Delete" runat="server" Text="Delete" onclick="Delete_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                </td>
                                                    </tr>
                    <tr>
                        <td colspan="2" class="style4">
                            &nbsp;</td>
                   &nbsp;</td>
                    </tr>
                </table>
                    </td>
            <td>
                <br />
                <br />
            </td>
            <td rowspan="3">
                <table class="style1">
                    <tr>
                        <td>
                <asp:GridView ID="GridView2" runat="server" Width="500px" BackColor="#CCCCCC" 
                    BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    AutoGenerateColumns="False" CellSpacing="2" ForeColor="Black" 
                    Height="400px" AutoGenerateSelectButton="True" DataKeyNames="cid" 
                                DataSourceID="AccessDataSource1">
                    <RowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="cid" HeaderText="cid" ReadOnly="True" 
                            SortExpression="cid" />
                        <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
                            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Categorey]">
                            </asp:AccessDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Categorey]">
                </asp:AccessDataSource>
            </td>
                                                    </tr>
                <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
                                                    </tr>
                                                    <tr>
            <td class="style3">
                I         &nbsp;</td>
                </tr>
                </table>
        </td>
    </tr>
    </table>
            </td>
        </tr>
        </table>
</asp:Content>

