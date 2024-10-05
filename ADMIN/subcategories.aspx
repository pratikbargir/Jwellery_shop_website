<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="subcategories.aspx.cs" Inherits="ADMIN_subcategories" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style2
        {
            width: 92%;
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
            width: 100%;
            height: 100%;
        }
        .style5
        {
            font-size: small;
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
    <tr>
        <td 
            
            style="text-align: left; color: #FFFFFF; font-weight: 700; font-size: large; font-family: Arial, Helvetica, sans-serif; background-color: #666666;">
            &nbsp;&nbsp;&nbsp; MANAGE SUBCATEGORIES</td>
    </tr>
    <tr>
        <td class="style3">
            <br />
            <table align="right" cellpadding="3" class="style4">
                <tr>
                    <td class="style5">
                        <table class="style1">
                            <tr>
                                <td class="style6">
&nbsp;SubCategory Id</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtid" runat="server" Height="30px" Width="250px" 
                                        Enabled="False"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                                    Choose Main Category</td>
                                <td>
                                    <span class="style6">
                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                        DataSourceID="AccessDataSource1" DataTextField="cname" 
                                        DataValueField="cname" Height="30px" Width="250px">
                                    </asp:DropDownList>
                                    </span>
                                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                        DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Categorey]">
                                    </asp:AccessDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style6">
                Category Name</td>
                                <td>
                                    <span class="style6">
                                    <asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter character only" 
                    ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
                                    </span>
                                    <br class="style6" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                &nbsp;<span class="style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </span>
                                    <br class="style6" />
                                    <span class="style6">
                                    <asp:Button ID="btnadd" runat="server" Text="Add New" onclick="btnadd_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Update" runat="server" Text="Update" onclick="Update_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Delete" runat="server" Text="Delete" onclick="Delete_Click" 
                    BackColor="#CCCCCC" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" class="style6">
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
                    Height="400px" AutoGenerateSelectButton="True" DataKeyNames="subid" 
                                        DataSourceID="AccessDataSource2">
                                        <RowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="subid" HeaderText="subid" ReadOnly="True" 
                                                SortExpression="subid" />
                                            <asp:BoundField DataField="maincat" HeaderText="maincat" 
                                                SortExpression="maincat" />
                                            <asp:BoundField DataField="subcatname" HeaderText="subcatname" 
                                                SortExpression="subcatname" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                                        DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [subcategory]">
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
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style5">
                        I</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

