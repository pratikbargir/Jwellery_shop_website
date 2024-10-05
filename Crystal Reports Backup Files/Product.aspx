<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="USER_Product" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        width: 60%;
        height: 100%;
    }
    .style7
    {
        text-align: left;
        font-size: medium;
        font-weight: 700;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" cellspacing="3" class="style6">
    <tr>
        <td style="text-align: center">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
                DataSourceID="AccessDataSource1">
                <ItemTemplate>
                    <table align="center" cellpadding="5" cellspacing="10" class="style1" 
                        style="font-family: Arial, Helvetica, sans-serif; font-size: medium">
                        <tr>
                            <td rowspan="6">
                                <asp:Image ID="Image1" runat="server" Height="300px" 
                                    ImageUrl='<%# Eval("pphoto") %>' Width="300px" />
                            </td>
                            <td class="style7">
                                <asp:Label ID="Label1" runat="server" 
                                    style="font-weight: 700; font-size: large; color: #660033" 
                                    Text='<%# Eval("pname") %>'></asp:Label>
                                <asp:Label ID="Label6" runat="server" 
                                    style="font-weight: 700; font-size: medium" Text='<%# Eval("pid") %>' 
                                    Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Rs.<asp:Label ID="Label2" runat="server" 
                                    style="font-weight: 700; font-size: large" Text='<%# Eval("pprise") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Size:<asp:Label ID="Label3" runat="server" 
                                    style="font-weight: 700; font-size: medium" Text='<%# Eval("psize") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Purity:<asp:Label ID="Label4" runat="server" 
                                    style="font-weight: 700; font-size: medium" Text='<%# Eval("pcarat") %>'></asp:Label>
                                Carat</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                Net Weight:<asp:Label ID="Label5" runat="server" 
                                    style="font-weight: 700; font-size: medium" Text='<%# Eval("pweight") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style7">
                                <asp:Button ID="Button1" runat="server" BorderStyle="None" 
                                    CommandArgument='<%# Eval("pid", "{0}") %>' Height="35px" 
                                    onclick="Button1_Click" style="color: #FFFFFF; background-color: #660033" 
                                    Text="Buy Now" Width="200px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/jwellery.mdb" 
                SelectCommand="SELECT * FROM [Product] WHERE ([pid] = ?)">
                <SelectParameters>
                    <asp:SessionParameter Name="pid" SessionField="pid" Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
</table>
</asp:Content>

