<%@ Page Title="" Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="USER_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 80%;
            height: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="4" class="style6">
        <tr>
            <td style="text-align: center; font-size: x-large; font-family: Aharoni; font-weight: 700">
                Product List</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" BackColor="White" 
                    BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                    CellSpacing="1" DataKeyField="pid" DataSourceID="AccessDataSource1" 
                    RepeatColumns="4" RepeatDirection="Horizontal" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged">
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <ItemTemplate>
                        <table align="center" cellpadding="4" cellspacing="1" class="style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" 
                                        style="font-weight: 700; font-family: Arial, Helvetica, sans-serif" 
                                        Text='<%# Eval("pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="101px" 
                                        ImageUrl='<%# Eval("pphoto") %>' Width="168px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Rs.<asp:Label ID="Label2" runat="server" style="color: #CC0000" 
                                        Text='<%# Eval("pprise") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Height="33px" 
                                        style="color: #FFFFFF; font-weight: 700; background-color: #003366" 
                                        Text="Buy Now" Width="135px" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Product]">
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

