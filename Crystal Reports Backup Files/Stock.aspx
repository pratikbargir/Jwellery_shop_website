<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Stock.aspx.cs" Inherits="ADMIN_Stock" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style3
        {
            width: 80%;
            height: 100%;
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
    }
    .style4
    {
        width: 80%;
        height: 0;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td>
                <table align="center" cellspacing="5" class="style3">
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table cellpadding="3" cellspacing="10" class="style4">
                                <tr>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Gold Ring</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblgoldring" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Gold Earring</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblgoldearing" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Gold Bangles</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblgoldbanles" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Gold Mangalsutra</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblgoldmangalsutra" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Gold Necklace</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblgoldnecklace" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Gold Coins</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblgoldcoins" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Diamond Ring</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbldiamondring" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Diamond Earrings</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbldiamondearrings" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Diamond Mangalsutra</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbldiamondmangalsutra" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Diamond Necklace</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbldiamondnecklace" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Diamond Bracelet</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lbldiamondbracelet" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Platinum Ring</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblplatinumring" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Platinum Earrings</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblplatinumearrings" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Platinum Bracelet</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblplatinumbracelet" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Platinum Necklace</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblplatinumnecklace" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table cellpadding="5" cellspacing="5" class="style2">
                                            <tr>
                                                <td style="color: #FFFFFF; background-color: #009999">
                                                    Platinum Mangalsutra</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblplatinummangalsutra" runat="server" Text="Label"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

