<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="USER_register" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style8
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #B06A00;
            text-align: left;
        }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #FF0066;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="3" align="center" cellpadding="1" 
        style="font-family: Arial, Helvetica, sans-serif" width="70%">
    <tr>
        <td class="style8" colspan="2">
                Address Details:</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style8">
                &nbsp;</td>
        <td class="style8">
                &nbsp;</td>
        <td class="style6" height="500" rowspan="10" width="1000">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="">
                Name:</td>
        <td class="">
            <asp:TextBox ID="txtname" runat="server" Height="30px" Width="250px" 
                ontextchanged="submit_Click1"  ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="txtname" ErrorMessage="char only" 
                ValidationExpression="^([\sa-zA-Z])+$"></asp:RegularExpressionValidator>
        </td>
        <td class="">
            &nbsp;</td>
        <td class="">
                Gender:</td>
        <td class="">
            <asp:RadioButton ID="txtmale" runat="server" GroupName="a" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="txtfemale" runat="server" GroupName="a" 
                   Text="Female" />
        </td>
    </tr>
    <tr>
        <td class="">
                Address</td>
        <td class="">
            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtaddress" ErrorMessage="Address must be enter"></asp:RequiredFieldValidator>
        </td>
        <td class="">
            &nbsp;</td>
        <td class="">
                Zip Code:</td>
        <td class="">
            <asp:TextBox ID="txtcode" runat="server"  
                Height="30px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcode" ErrorMessage="pin code must be enter"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                    ControlToValidate="txtcode" ErrorMessage="zip code must be 6 digit" 
                    ValidationExpression="[0-9]{6}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="">
                City:</td>
        <td class="">
            <asp:TextBox ID="txtcity" runat="server" 
                Height="30px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="City must be enter"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="char only" 
                ValidationExpression="^[a-z]*$"></asp:RegularExpressionValidator>
        </td>
        <td class="">
            &nbsp;</td>
        <td class="">
                State:</td>
        <td class="">
            <asp:DropDownList ID="txtstate" runat="server" Height="30px" Width="250px">
                <asp:ListItem>Maharastra</asp:ListItem>
                <asp:ListItem>Karnatka</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujrat</asp:ListItem>
                <asp:ListItem>Telangana</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="" colspan="2" 
            style="color: #996600; font-weight: 700; background-color: #FFFFFF">
                Contact Information:</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style8">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="">
                Mob No:</td>
        <td class="">
            <asp:TextBox ID="txtmob" runat="server" Height="30px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmob" ErrorMessage="mobile no 10 digit must be enter" 
                    ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
        <td class="">
            &nbsp;</td>
        <td class="">
                Tel NO:</td>
        <td class="">
            <asp:TextBox ID="txttel" runat="server" 
                Height="30px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txttel" ErrorMessage="teliphone no 11 digit may be enter" 
                    ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
        &nbsp;</td>
    </tr>
    <tr>
        <td class="">
                Fax:</td>
        <td class="">
            <asp:TextBox ID="txtfax" runat="server" Height="30px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtfax" ErrorMessage="fax no must be enter" 
                    ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                    ControlToValidate="txtfax" ErrorMessage="fax no 11 digit must be enter" 
                    ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>
        </td>
        <td class="">
            &nbsp;</td>
        <td class="">
                Email Address:</td>
        <td class="">
            <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="250px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    BorderStyle="None" ControlToValidate="txtemail" 
                    ErrorMessage="Enter correct email address" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style8" colspan="2">
                Log In Details:</td>
        <td class="style8">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
        <td class="style8">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="">
                User Name:</td>
        <td class="">
            <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="250px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="Enter user name"></asp:RequiredFieldValidator>
        </td>
        <td class="">
            &nbsp;</td>
        <td class="">
                Password:</td>
        <td class="">
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="30px" 
                Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="5" style="text-align: left">
            <asp:Button 
                    ID="submit" runat="server" BackColor="#FFCCCC" BorderColor="Black" 
                    onclick="submit_Click1" Text="Submit" BorderStyle="None" Height="30px" 
                    Width="207px" style="background-color: #FF6600" />
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

