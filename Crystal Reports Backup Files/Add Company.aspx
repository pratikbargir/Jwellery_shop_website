<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Add Company.aspx.cs" Inherits="ADMIN_Add_Company" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style6
        {
            height: 27px;
            text-align: center;
        }
        .style3
        {
            text-align: center;
        }
        .style7
        {
            color: #FFFFFF;
            font-weight: bold;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
    <tr>
        <td colspan="2" style="text-align: center" bgcolor="#CC3300">
                <span class="style7">Add Company</span><br />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Company id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcid" runat="server" BorderStyle="Solid" 
                CausesValidation="True"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Company Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcname" runat="server" style="text-align: center" 
                BorderStyle="Solid"></asp:TextBox>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" colspan="2" height="40px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" 
                    style="height: 29px; color: #FFFFFF; font-weight: 700;" Text="Add New" 
                    Height="40px" Width="100px" BackColor="#CC3300" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" Text="Save" onclick="btnsave_Click" 
                    Height="40px" Width="100px" BackColor="#CC3300" 
                    style="font-weight: 700; color: #FFFFFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnupdate" runat="server" Text="Update" 
                    onclick="btnupdate_Click" Height="40px" Width="100px" BackColor="#CC3300" 
                    style="font-weight: 700; color: #FFFFFF; font-family: Arial, Helvetica, sans-serif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btndelete" runat="server"
                    Text="Delete" onclick="btndelete_Click" Height="40px" Width="100px" 
                    BackColor="#CC3300" 
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #FFFFFF" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style3" colspan="2">
            <asp:GridView ID="GridView1" runat="server" Width="712px" align="center"
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    BackColor="#DEBA84" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" 
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
</table>
</asp:Content>

