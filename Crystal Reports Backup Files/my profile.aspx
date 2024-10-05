<%@ Page Language="C#" MasterPageFile="~/Visitors/Usermaster.master" AutoEventWireup="true" CodeFile="my profile.aspx.cs" Inherits="Visitors_my_profile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style3
        {
            width: 70%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="5" class="style2">
        <tr>
            <td style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif">
                My Profile<br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" align="center">
                <asp:DetailsView ID="DetailsView1" runat="server" align="Center"
                    AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
                    DataSourceID="AccessDataSource2" Height="50px" style="text-align: center; font-weight: 700; font-family: Arial, Helvetica, sans-serif;" 
                    Width="521px" DataKeyNames="Username" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <RowStyle BackColor="White" />
                    <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
                    <Fields>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="sex" HeaderText="sex" SortExpression="sex" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Zipcode" HeaderText="Zipcode" 
                            SortExpression="Zipcode" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                        <asp:BoundField DataField="Mobno" HeaderText="Mobno" SortExpression="Mobno" />
                        <asp:BoundField DataField="Telno" HeaderText="Telno" SortExpression="Telno" />
                        <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                        <asp:BoundField DataField="Emailaddress" HeaderText="Emailaddress" 
                            SortExpression="Emailaddress" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                    </Fields>
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                </asp:DetailsView>
                <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/jwellery.mdb" 
                    SelectCommand="SELECT * FROM [Login] WHERE ([Username] = ?)" 
                    UpdateCommand ="update Login set [Address]=@Address,[Zipcode]=@Zipcode,[City]=@City,[State]=@State,[Mobno]=@Mobno,[Telno]=@Telno,[Fax]=@Fax,[Emailaddress]=@Emailaddress,[Password]=@Password where ([Username]=@Username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Username" SessionField="name1" Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" 
                    DataSourceID="AccessDataSource2" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <table align="center" cellpadding="3" cellspacing="3" class="style3">
                    <tr>
                        <td>
                            Name</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Email ID</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Gender</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mobile No</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Telephone No</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Fax No</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            State</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            City</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Pincode</td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Username</td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password</td>
                        <td>
                            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

