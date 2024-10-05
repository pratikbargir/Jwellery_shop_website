<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="ADMIN_Category" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 100%;
            height: 414px;
            font-weight: 700;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style3
        {            text-align: center;
        }
        .style4
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
    <tr>
        <td style="text-align: center" bgcolor="#CC3300">
                <span class="style4">ADD CATEGORY</span><br />
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Category Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtid" runat="server" BorderStyle="Solid" 
                style="text-align: center"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtname" runat="server" BorderStyle="Solid" 
                ontextchanged="txtname_TextChanged" style="text-align: center"></asp:TextBox>
            &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Enter character only" 
                    ValidationExpression="^([\sA-Za-z]+)$"></asp:RegularExpressionValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td class="style3">
                &nbsp;
                <br />
            <asp:Button ID="btnadd" runat="server" Text="Add New" onclick="btnadd_Click" 
                    BackColor="#CC3300" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #FFFFFF;" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" 
                    BackColor="#CC3300" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #FFFFFF;"  />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Update" runat="server" Text="Update" onclick="Update_Click" 
                    BackColor="#CC3300" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #FFFFFF;" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Delete" runat="server" Text="Delete" onclick="Delete_Click" 
                    BackColor="#CC3300" BorderColor="#CCCCCC" BorderStyle="Solid" Height="40px" 
                    Width="100px" 
                    
                    style="font-family: Arial, Helvetica, sans-serif; font-weight: 700; color: #FFFFFF;" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
    </tr>
    <tr>
        <td class="style3">
                <asp:GridView ID="GridView1" runat="server" Width="573px" BackColor="White" align="center"
                    BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            </asp:GridView>
                </td>
    </tr>
    <tr>
        <td class="style3">
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

