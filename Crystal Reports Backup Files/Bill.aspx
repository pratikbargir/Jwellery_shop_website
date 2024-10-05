<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Bill.aspx.cs" Inherits="USER_Bill" Title="Untitled Page" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 130%;
            border-style: solid;
            border-width: 1px;
        }
        .style7
        {
            width: 565px;
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 700;
            text-align: center;
        }
        .style9
        {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }
        .style10
        {
            color: #003366;
        }
        .style11
        {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }
        .style12
        {
            text-align: left;
            width: 672px;
        }
        .style13
        {
            width: 223px;
        }
        .style14
        {
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
            width: 375px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" cellspacing="4" class="style12">
        <tr>
            <td class="style7" colspan="3">
                <br />
                <br />
                <span class="style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Payment Bill
                /Reciept<br />
                </span>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
            <td class="style7">
                <table cellpadding="5" cellspacing="5" class="style6">
                    <tr>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style14">
                            Reciept No:<asp:Label ID="lblreciptno" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style13" style="text-align: right">
                            <asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style11">
                            &nbsp;</td>
                        <td class="style14">
                            Customer Name: <asp:Label ID="lblcname" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style13" style="text-align: right">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td colspan="2" style="text-align: center">
                            <table border="1" cellpadding="5" cellspacing="1" class="style1" 
                                style="width: 84%">
                                <tr>
                                    <td class="style9">
                                        Product Name</td>
                                    <td class="style9">
                                        <asp:Label ID="lblpname" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Price
                                                        </td>
                                                        <td class="style9">
                                                            Rs.
                                                            <asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            <span class="style9">Tax(18%)</span></td>
                                    <td class="style9">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CGST(9%)&nbsp;</td>
                                    <td class="style9">
                                        <asp:Label ID="lblcgst" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SGST(9%)&nbsp;</td>
                                    <td class="style9">
                                        <asp:Label ID="lblsgst" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Total Amout</td>
                                    <td class="style9">
                                        <asp:Label ID="lbltotal" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="style7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

