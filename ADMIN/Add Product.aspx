<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Add Product.aspx.cs" Inherits="ADMIN_Add_Product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
        height: 100%;
        border: 1px solid #000000;
    }
        .style2
        {
        }
        .style3
        {
            width: 94%;
            height: 176px;
            margin-left: 16px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
        }
        .style4
        {
       
        }
        .style5
        {
        }
        .style6
        {
            width: 340px;
        }
        .style7
        {
            width: 151px;
        }
        .style9
        {
            color: #FFFFFF;
            font-size: large;
        }
        .style10
        {
            height: 33px;
        }
        .style11
        {
            width: 100%;
            height: 36%;
        }
        .style13
        {
            height: 86px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="font-family: Arial, Helvetica, sans-serif; text-align: left; background-color: #333333;" 
            class="style9" bgcolor="#CC0000">
            Manage Product</td>
    </tr>
    <tr>
        <td class="style2">
            <table cellspacing="0" class="style3">
                <tr>
                    <td s valign="top" align="center">
                        <table class="style11">
                            <tr>
                                <td align="center">
                        <asp:Image ID="image1" runat="server" Height="182px" ImageAlign="Middle" 
                            Width="160px" ImageUrl="~/images/product.png" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="211px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnuplode" runat="server" Text="Upload" 
                onclick="btnuplode_Click" BackColor="#CC0000" 
                                        ForeColor="White" Height="40px" 
                                        style="font-weight: 700; background-color: #333333;" Width="150px"/>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="style6" rowspan="3" valign="top">
                        <table cellspacing="15" class="style3">
                            <tr>
                                <td class="style5">
                                    Product Code</td>
                                <td>
                                    <asp:TextBox ID="txtpid" runat="server" Height="30px" Width="200px" 
                                        Enabled="False"></asp:TextBox>
                                </td>
                                <td class="style7">
                                    Product size</td>
                                <td>
                                    <asp:TextBox ID="txtpspeci" runat="server" Height="30px" TextMode="MultiLine" 
                                        Width="200px"></asp:TextBox>
                                </td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Product name</td>
                                <td>
                                    <asp:TextBox ID="txtpname" runat="server" ontextchanged="TextBox2_TextChanged" 
                                        Height="30px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="style7">
                                    Product Carat</td>
                                <td>
                                    <asp:DropDownList ID="drpcarat" runat="server" Height="30px" Width="200px">
                                        <asp:ListItem>16</asp:ListItem>
                                        <asp:ListItem>18</asp:ListItem>
                                        <asp:ListItem>22</asp:ListItem>
                                        <asp:ListItem>24</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                                        DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Company]">
                                    </asp:AccessDataSource>
                                </td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Product category</td>
                                <td>
                                    <asp:DropDownList ID="drppcategoery" runat="server" 
                                        DataSourceID="AccessDataSource5" DataTextField="cname" 
                                        DataValueField="cname" Height="40px" AutoPostBack="True" Width="200px">
                                    </asp:DropDownList>
                                    <asp:AccessDataSource ID="AccessDataSource5" runat="server" 
                                        DataFile="~/jwellery.mdb" SelectCommand="SELECT [cname] FROM [Categorey]">
                                    </asp:AccessDataSource>
                                    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                        DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Categorey]">
                                    </asp:AccessDataSource>
                                </td>
                                <td class="style7">
                                    Prise</td>
                                <td>
                                    <asp:TextBox ID="txtprise" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Product Subcategory</td>
                                <td>
                                    <asp:DropDownList ID="drppsubcategoery" runat="server" 
                                        DataSourceID="AccessDataSource4" DataTextField="subcatname" 
                                        DataValueField="subcatname" Height="40px" AutoPostBack="True" 
                                        Width="200px">
                                    </asp:DropDownList>
                                    <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
                                        DataFile="~/jwellery.mdb" 
                                        SelectCommand="SELECT distinct[subcatname] FROM [subcategory]">
                                    </asp:AccessDataSource>
                                    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                                        DataFile="~/jwellery.mdb" 
                                        SelectCommand="SELECT * FROM [subcategory] WHERE ([maincat] LIKE '%' + ? + '%')">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="drppcategoery" Name="maincat" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:AccessDataSource>
                                </td>
                                <td class="style5">
                                    Product Weight</td>
                                <td>
                                    <asp:TextBox ID="txtweight" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="style7">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5" colspan="4">
                                    <asp:Button ID="btnadd" runat="server" Text="Add New" onclick="btnadd_Click" BackColor="#CC0000" 
                                        ForeColor="White" Height="40px" 
                                        style="font-weight: 700; background-color: #333333;" Width="150px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnsave" runat="server" 
                                        Text="Save" onclick="btnsave_Click" BackColor="#CC0000" 
                                        ForeColor="White" Height="40px" 
                                        style="font-weight: 700; background-color: #333333;" Width="150px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btnupdate" runat="server" Text="Update" 
                onclick="btnupdate_Click" BackColor="#CC0000" 
                                        ForeColor="White" Height="40px" 
                                        style="font-weight: 700; background-color: #333333;" Width="150px"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        &nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style5" colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    <asp:GridView ID="GridView1" runat="server" 
                CellPadding="3" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                style="text-align: center" Width="60px" AllowPaging="True" Height="500px" BackColor="White" BorderColor="#999999" 
                                        BorderStyle="Solid" BorderWidth="1px" 
                                        onpageindexchanging="GridView1_PageIndexChanging" PageSize="5" 
                                        ForeColor="Black" GridLines="Vertical" AllowSorting="True">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                    </asp:GridView>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td rowspan="3" valign="top">
                                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" valign="top">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4" valign="top">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td class="style2">
&nbsp;&nbsp;&nbsp;
            </td>
    </tr>
    <tr>
        <td class="style10">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
    </tr>
    </table>
</asp:Content>

