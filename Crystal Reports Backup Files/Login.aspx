<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="USER_Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 488px;
            background-color: #FFFFFF;
        }
        .style3
        {
            width: 512px;
        }
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            font-weight: bold;
        }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style7
        {
            width: 591px;
        }
        .style8
        {
            color: #FF0000;
            font-size: xx-large;
        }
        .style9
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="">
        <tr ">
            <td class="style3" style="text-align: center">
                <br />
                <span class="style5">
                New Costomer</span><br />
                <b><span class="style6">Regsiter as an shopin Member and Enjoy shoping........</span><br 
                    class="style6" />
                <span class="style6">Track the you&#39;re items watching or bidding on</span><br 
                    class="style6" />
                <span class="style6">Shop with confidence with paypal buyer protection </span>
                <br class="style6" />
                <span class="style6">Connect with the shop in Community and more </span>
                <br class="style6" />
                <br />
                </b>
                <asp:Button ID="Button1" runat="server" Height="35px"  
                    PostBackUrl="~/USER/Signin.aspx" Text="Sign in" Width="133px" BackColor="#FF9900" />
                                </td>
                                <td style="text-align: center; font-family: Arial, Helvetica, sans-serif;" 
                class="style7">
                                    <asp:Image ID="Image3" runat="server" Height="150px" 
                                        ImageUrl="~/images/login-icon.png" 
                                        Width="200px" style="text-align: left" />
                                    <span class="style5">
                                    <br />
                                    </span>
                                    <span class="style9">
                                    <span class="style8">My account</span></span><span class="style5"><br />
                                    Log In</span><br class="style5" />
                <br />
                                    <b>&nbsp;Enter UserName <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                &nbsp;Enter Password <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                                    <br />
                                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" 
                                        Text="Login" 
                                        style="font-family: Arial, Helvetica, sans-serif; font-size: large; background-color: #FF6600" />
                <br />
                <br />
                </b>
            </td>
        </tr>
    </table>
</asp:Content>

