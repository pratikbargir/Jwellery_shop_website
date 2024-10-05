<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Accessories.aspx.cs" Inherits="USER_product1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
            font-weight: 700;
            font-family: Arial, Helvetica, sans-serif;
            border: 1px solid #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p align="center" 
        style="font-family: Arial, Helvetica, sans-serif; font-size: large; color: #FF00FF"> Accessories </p>

    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/cctv1.mdb" 
        SelectCommand="SELECT * FROM [Product] WHERE ([pcategorey] LIKE '%' + ? + '%')">
        <SelectParameters>
            <asp:Parameter DefaultValue="7" Name="pcategorey" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
        DataSourceID="AccessDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
            <table cellspacing="10" class="style2" width="100%">
                <tr>
                    <td>
                        Product Code:<asp:Label ID="lblpid" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" style="color: #CC0000" 
                            Text='<%# Eval("pname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="5" style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="157px" 
                            ImageUrl='<%# Eval("pphoto") %>' Width="129px" />
                    </td>
                    <td>
                        Resolution:<asp:Label ID="Label3" runat="server" 
                            Text='<%# Eval("presolvations") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Focal Lence:<asp:Label ID="Label4" runat="server" 
                            Text='<%# Eval("pFocallence") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Specification:<asp:Label ID="Label5" runat="server" 
                            Text='<%# Eval("pspecifications") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Company:<asp:Label ID="Label6" runat="server" 
                            Text='<%# Eval("pcompanyname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rs.<asp:Label ID="Label7" runat="server" Text='<%# Eval("pprise") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" 
                            ImageUrl="~/Mm/580b57fcd9996e24bc43c465.png" Width="200px" onclick="ImageButton1_Click" 
                            CommandArgument='<%# Eval("pid", "{0}") %>' />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

