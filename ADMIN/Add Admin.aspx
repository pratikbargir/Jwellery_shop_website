<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="Add Admin.aspx.cs" Inherits="ADMIN_Add_Admin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td align="center" 
                style="font-family: Aharoni; font-size: x-large; font-weight: bold; color: #800000">
                ADD ADMIN</td>
        </tr>
        <tr>
            <td style="margin-left: 40px" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 40px" align="center">
                <asp:TextBox ID="txtname" runat="server" placeholder="Enter Admin Name" 
                    Width="200px" Height="30px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 40px" align="center">
                <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="margin-left: 120px" align="center">
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" BackColor="#990000" Font-Bold="True" 
                    Font-Size="Large" ForeColor="White" Height="30px" Width="100px" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium" />
            &nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    style="color: #FFFFFF; font-size: medium; font-family: Arial, Helvetica, sans-serif; background-color: #990000" 
                    Text="Update" />
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="AccessDataSource2" Width="338px" AutoGenerateSelectButton="True" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="aname" HeaderText="aname" SortExpression="aname" />
                        <asp:BoundField DataField="apassword" HeaderText="apassword" 
                            SortExpression="apassword" />
                    </Columns>
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Admin]"
                     UpdateCommand ="update [Admin] set [aname]=@aname and [apassword]=@apassword where [aname]=@aname">
                </asp:AccessDataSource>
            </td>
        </tr>
        <tr>
            <td style="margin-left: 120px" align="center">
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [admin]">
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

