<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Rates.aspx.cs" Inherits="USER_Rates" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style6
    {
        height: 100%;
        font-family: Arial, Helvetica, sans-serif;
        font-size: medium;
       
        font-weight: 700;
            background-color: #FFFFFF;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" style="text-align: center" Width="100%" 
        BackImageUrl="../images/bg2.jpg" >
    
    <table cellpadding="4" cellspacing="10" class="style6" align="center" width="60%" BackColor="White">
        <tr>
            <td colspan="4" style="font-size: x-large">
                Rates</td>
        </tr>
        <tr>
            <td style="text-align: left">
                   &nbsp;<td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gold Rates</td>
            <td valign="top">
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Platinum Rates</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DataList ID="DataList2" runat="server" DataKeyField="rateid" 
                    DataSourceID="AccessDataSource1" GridLines="Horizontal" 
                    style="font-weight: 700; color: #000000" Width="200px">
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="subcatLabel0" runat="server" Text='<%# Eval("subcat") %>' />
                        <br />
                        rate:
                        <asp:Label ID="rateLabel0" runat="server" Text='<%# Eval("rate") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td valign="top">
            </td>
            <td>
                &nbsp;<asp:DataList ID="DataList3" runat="server" DataKeyField="rateid" 
                    DataSourceID="AccessDataSource1" GridLines="Horizontal" 
                    style="font-weight: 700; color: #000000" Width="200px">
                    <ItemTemplate>
                        &nbsp;<asp:Label ID="subcatLabel1" runat="server" Text='<%# Eval("subcat") %>' />
                        <br />
                        rate:
                        <asp:Label ID="rateLabel1" runat="server" Text='<%# Eval("rate") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/jwellery.mdb" 
                    SelectCommand="SELECT * FROM [rate] WHERE ([category] LIKE '%' + ? + '%')">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Platinum" Name="category" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

