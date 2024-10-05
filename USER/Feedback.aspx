<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="USER_Feedback" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style6
        {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" align="center" cellpadding="3" width="80%">
        <tr>
            <td rowspan="6" valign="top">
                
                
                &nbsp;</td>
            <td class="style6" align="center" colspan="2">
                <asp:Image ID="Image1" runat="server" Height="150px" 
                    ImageUrl="~/images/Feedback-Banner.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style6" align="center">
                <asp:TextBox ID="txtname" runat="server" Height="35px" Width="300px" 
                    placeholder="Enter Name"></asp:TextBox>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter the name" 
                    style="font-size: small"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="txtname" ErrorMessage="char only" 
                ValidationExpression="^([\sa-zA-Z])+$"></asp:RegularExpressionValidator>
                </td>
            <td class="style6" align="center">
                <asp:TextBox ID="txtcity" runat="server" Height="35px" Width="300px" placeholder="Enter City"></asp:TextBox>
             
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="City must be enter" 
                    style="font-size: small"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="char only" 
                ValidationExpression="^([\sa-zA-Z])+$"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:TextBox ID="txtmob" runat="server" ontextchanged="TextBox4_TextChanged" 
                    Height="35px" Width="300px" placeholder="Enter Mobile"></asp:TextBox>
           
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmob" ErrorMessage="mobile be 10 digit" 
                    ValidationExpression="[0-9]{10}" style="font-size: small"></asp:RegularExpressionValidator>
            </td>
            <td class="style6">
                Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="txtmale" runat="server" GroupName="a" Text="Male" />
                &nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="txtfemale" runat="server" 
                    oncheckedchanged="Female_CheckedChanged" GroupName="a" Text="Female" />
                </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:TextBox ID="txtemail" runat="server" Height="35px" Width="300px" placeholder="Enter Email"></asp:TextBox>
                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="email not in correct format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    style="font-size: small"></asp:RegularExpressionValidator>
            </td>
            <td class="style6">
                &nbsp;Select State&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="200px">
                    <asp:ListItem>maharashtra
                    </asp:ListItem>
                    <asp:ListItem>karnataka</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine" 
                    Height="79px" Width="318px" placeholder="Give your feedback here....."></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtfeedback" ErrorMessage="Feedback must be enter" 
                    style="font-size: small"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                <asp:Button ID="btnsubmit" runat="server" onclick="Button1_Click" 
                    Text="Submit" BackColor="#CC0000" Height="40px" 
                    style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; background-color: #CC9900;" 
                    Width="150px" ForeColor="White" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" BackColor="#CC0000" 
                    Height="40px" 
                    style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; background-color: #CC9900;" 
                    Width="150px" ForeColor="White" onclick="btnreset_Click" />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

