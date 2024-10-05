<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Create account.aspx.cs" Inherits="ADMIN_Create_account" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style3
        {
            width: 100%;
            height: 360px;
        }
        .style4
        {
            text-align: center;
            font-weight: bold;
            color: #FF0066;
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style5
        {
            width: 207px;
            text-align: center;
            height: 24px;
        }
        .style6
        {
            width: 34px;
            height: 24px;
        }
        .style7
        {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" class="style2">
        <tr>
            <td>
                <table align="center" cellpadding="5" cellspacing="5" class="style3" 
                    bgcolor="#CCCCFF">
                    <tr>
                        <td rowspan="6">
                            &nbsp;</td>
                        <td class="style4" colspan="2">
                            Create New User</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Image ID="Image2" runat="server" Height="200px" Width="200px" 
                                ImageUrl="~/Mm/administrator_add.png" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:TextBox ID="txtusername" runat="server" placeholder="Enter User Name" 
                                BorderStyle="Solid" Height="40px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:TextBox ID="txtpass" runat="server" placeholder="Enter Password" 
                                BorderStyle="Solid" Height="40px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:TextBox ID="txtconpass" runat="server" 
                                placeholder="Enter Confirm Password" BorderStyle="Solid" Height="40px" 
                                TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6" style="text-align: center">
                            <asp:Button ID="Button2" runat="server" Text="Create account" BackColor="Red" 
                                Height="40px" onclick="Button2_Click" style="color: #FFFFFF" />
                        </td>
                        <td class="style5">
                            <asp:Button ID="Button1" runat="server" Text="Clear" BackColor="Red" 
                                Enabled="False" Height="40px" onclick="Button1_Click" style="color: #FFFFFF" 
                                Width="100px" />
                        </td>
                        <td class="style7">
                            </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

