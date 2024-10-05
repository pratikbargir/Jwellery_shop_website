<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Box cameras.aspx.cs" Inherits="USER_Box_cameras" Title="Untitled Page" %>

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
    <p align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; color: #FF00FF">Box Cameras</p>

    <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" DataSourceID="AccessDataSource1" 
        GridLines="Both" RepeatDirection="Horizontal" RepeatColumns="2" onselectedindexchanged="DataList1_SelectedIndexChanged" 
        >
        <%--<FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        --%>
        <ItemTemplate>
            <table  cellspacing="10" class="style2" width="100%">
                <tr>
                    <td>
                        Product Code:<asp:Label ID="Label1" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                    </td>
                    <td>
                        Product Name:<asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td rowspan="5" style="text-align: center">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="127px" 
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
                        Company Name:<asp:Label ID="Label6" runat="server" 
                            Text='<%# Eval("pcompanyname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Prise:<asp:Label ID="Label7" runat="server" Text='<%# Eval("pprise") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:ImageButton ID="ImageButton2" runat="server" 
                            ImageUrl="~/Mm/580b57fcd9996e24bc43c465.png" Height="100px" Width="200px" 
                            onclick="ImageButton2_Click" CommandArgument='<%# Eval("pid", "{0}") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/cctv1.mdb" 
        SelectCommand="SELECT * FROM [Product] WHERE ([pcategorey] LIKE '%' + ? + '%')">
        <SelectParameters>
            <asp:Parameter DefaultValue="3" Name="pcategorey" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
</asp:Content>

