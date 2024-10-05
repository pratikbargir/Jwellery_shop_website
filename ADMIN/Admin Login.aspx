<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin Login.aspx.cs" Inherits="ADMIN_Admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        .style1
        {
            height: 190px;
        }
    </style>
    
</head>
<body class="grey">
    <form id="form1" runat="server">
     <asp:Panel ID="Panel1" runat="server" 
        BackImageUrl="~/Images/backgrund.jpg" Height="730px">
        <table border="0" class="style1" frame="void" cellpadding="5" cellspacing="5">
            <tr>
                <td 
            
                    
                    style="font-weight: 700; color: #FFFFFF; font-size: large; font-family: Arial, Helvetica, sans-serif; text-align: left;" 
                    valign="top">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td style="font-weight: 700; color: #FFFFFF; font-size: large; font-family: Arial, Helvetica, sans-serif; text-align: left;" 
                    valign="top">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <table align="center" border="1" class="style2" frame="void" rules="cols">
                        <tr>
                            <td class="style1">
                                <asp:Image ID="Image1" runat="server" Height="159px" 
                                    ImageUrl="~/Images/loginicon.png" Width="226px" />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Login<br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style6" ID="txt">
                                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:TextBox ID="txtpwd" runat="server" Height="30px" TextMode="Password" 
                                    Width="200px"></asp:TextBox>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click3" 
                                    Text="Login" Width="100px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </asp:Panel>
   
               </form>

</body>
</html>
