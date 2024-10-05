<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Platinum Ring.aspx.cs" Inherits="USER_Platinum_Ring" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style6
    {
        width: 80%;
        height: 100%;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="3" cellspacing="4" class="style6">
        <tr>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" Height="150px" 
                ImageUrl="~/images/pla ring/ring_11.jpg" Width="100%" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblring" runat="server" Text="Ring" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:DataList ID="DataList1" runat="server" CellSpacing="10" DataKeyField="pid" 
                DataSourceID="AccessDataSource1" RepeatColumns="4" Width="100%" >
                    <ItemTemplate>
                        <table align="center" cellpadding="3" class="style1" 
                        style="border: thin solid #000000; color: #990033; font-family: Arial, Helvetica, sans-serif">
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("pid") %>' Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton6" runat="server" 
                                    CommandArgument='<%# Eval("pid", "{0}") %>' Height="148px" 
                                    ImageUrl='<%# Eval("pphoto") %>' onclick="ImageButton6_Click" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: right">
                                    Rs.<asp:Label ID="Label6" runat="server" Text='<%# Eval("pprise") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/jwellery.mdb" 
                
                SelectCommand="SELECT * FROM [Product] WHERE (([pcategorey] LIKE '%' + ? + '%') AND ([psubcat] = ?))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Platinum" Name="pcategorey" Type="String" />
                        <asp:ControlParameter ControlID="lblring" DefaultValue="Ring" Name="psubcat" 
                        PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

