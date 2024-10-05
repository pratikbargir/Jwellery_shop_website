<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="ADMIN_Change_Password" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
            }
        .style5
    {
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        font-size: x-large;
    }
    .style7
    {
        text-align: center;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" cellpadding="0" cellspacing="0" bgcolor="#FFFFCC">
    <tr>
        <td align="center" class="style5" colspan="2">
            <asp:Image ID="Image3" runat="server" Height="70px" 
                ImageUrl="~/Mm/reset-password-png-hi.png" Width="400px" />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Image ID="Image2" runat="server" Height="300px" 
                ImageUrl="~/Mm/ChangePassword.png" Width="400px" />
        </td>
        <td class="style7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtusernm" runat="server" BorderStyle="Solid" 
                placeholder=" Enter username" Height="40px" Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtusernm" ErrorMessage="User name must be enter"></asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtoldpass" runat="server" BorderStyle="Solid" 
                placeholder="Enter Old Password" Height="40px" Width="190px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtoldpass" ErrorMessage="Old password must be enter"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:TextBox ID="txtnewpass" runat="server" BorderStyle="Solid" 
                placeholder="Enter New Password" Height="40px" Width="190px"></asp:TextBox>
            <br />
            <br />
            &nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                ImageUrl="~/Mm/reset-password-png-hi.png" onclick="ImageButton1_Click1" />
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>

