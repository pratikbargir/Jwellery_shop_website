<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="USER_Payment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 60%;
            height: 100%;
        }
    .style3
    {
            width: 210px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style6
        {
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
        <tr>
            <td colspan="2" style="text-align: center" class="style5">
                <span class="style6">Payment</span><br class="style6" />
                <br class="style6" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style5">
                                    Customer Name</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style5">
                Bill Amount</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label" style="font-weight: 700"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left" class="style5">
                <span class="style4">Select Payment Mode</span><br class="style4" />
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" 
                    Text="Cash ON DIlivery" AutoPostBack="True" 
                    oncheckedchanged="RadioButton1_CheckedChanged" />
            </td>
            <td>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" 
                    Text="Online Payment" AutoPostBack="True" 
                    oncheckedchanged="RadioButton2_CheckedChanged" 
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
               <fieldset  width="200">
               <legend class="style5">
                   card detail
               </legend>
               <table id="banktable">
               <tr>
               <td class="style5">
                   Bank name:
               </td><td class="style3">
                
                       <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem>State Bank Of India</asp:ListItem>
                           <asp:ListItem>Bank Of India</asp:ListItem>
                           <asp:ListItem>Dena Bank</asp:ListItem>
                           <asp:ListItem>ICCI Bank</asp:ListItem>
                           <asp:ListItem>Bank Of Badoda</asp:ListItem>
                           <asp:ListItem>HDFC Bank</asp:ListItem>
                           <asp:ListItem>Axis Bank</asp:ListItem>
                       </asp:DropDownList>
                   </td>
                   
                   </tr>
                   <tr>
                   
                   <td>
                       <b><span class="style4">card No:</span><br class="style4" />
                       <span class="style4">&nbsp;</span></b></td>
<td class="style3">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

</td>
                   
                   </tr>
                 </table>
                 </fieldset><span class="style5">
                &nbsp;</span></td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="style5">
                <span class="style4">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
                    ImageUrl="~/Mm/submit-button-png-hi.png" Width="100px" 
                    onclick="ImageButton1_Click" />
                </span>
                <br class="style4" />
                <span class="style4">
                <asp:Label ID="Label3" runat="server" 
                    style="font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: large; background-color: #FF0000" 
                    Text="Your Order Placed Sussessfully!!!" Visible="False"></asp:Label>
                </span>
            </td>
        </tr>
    </table>
</asp:Content>

