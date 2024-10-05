<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="ADMIN_Company" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            text-align: center;
            height: 27px;
        }
        .style6
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
        <tr>
            <td colspan="2" style="text-align: center">
                Add Company<br />
            </td>
        </tr>
        <tr>
            <td class="style5" style="text-align: center">
                Company id</td>
            <td class="style6">
                <asp:TextBox ID="txtcid" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                Company Name</td>
            <td>
                <asp:TextBox ID="txtcname" runat="server" style="text-align: center"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" style="text-align: center">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="712px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" CellSpacing="2">
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" colspan="2" height="40px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" 
                    style="height: 29px" Text="Add New" Height="40px" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" 
                    Height="40px" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" Height="40px" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btndelete" runat="server"
                    Text="Delete" onclick="btndelete_Click" Height="40px" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>

