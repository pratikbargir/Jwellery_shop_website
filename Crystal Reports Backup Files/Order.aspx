<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="USER_Order" Title="Untitled Page" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style6
        {
            width: 60%;
            height: 100%;
        }
        .style8
        {
            text-align: center;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            font-size: large;
        }
        .style10
        {
            text-align: left;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 700;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="6" cellspacing="0" class="style2">
        <tr>
            <td>
                <table cellpadding="4" class="style2">
                    <tr>
                        <td colspan="2" style="text-align: center" class="style9">
                            Order Details</td>
                    </tr>
                    <tr>
                        <td>
                            <table align="center" cellpadding="3" cellspacing="10" class="style6">
                                <tr>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: medium;" 
                                        class="style8">
                                        <div class="style8">
                                            &nbsp;&nbsp;&nbsp;&nbsp;<b>&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" Enabled="False" BorderStyle="None" Visible="False"></asp:TextBox>
                            <br />
                                        </div>
                            <asp:ScriptManager ID="ScriptManager2" runat="server">
                            </asp:ScriptManager>
                                    </td>
                                    <td style="font-family: Arial, Helvetica, sans-serif; font-size: medium;" 
                                        class="style8" rowspan="4" valign="top">
    <table cellspacing="0" class="style2">
        <tr>
            <td colspan="2" style="text-align: center; font-weight: 700;" class="style5">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
                            </tr>
        <tr>
            <td colspan="2" style="text-align: center; font-weight: 700;" class="style5">
                <span class="style6">Payment </span>Detail</td>
                            </tr>
        <tr>
            <td colspan="2" style="text-align: center">
               <fieldset style="border: thin solid #000000; width: 388px; height: 133px;">
               <legend class="style5" style="font-size: large">
                   card detail
               </legend>
               <table id="banktable">
               <tr>
               <td class="style5" style="text-align: left; font-weight: 700">
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

    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

</td>
                   
                   </tr>
                 </table>
                 </fieldset><span class="style5">
                <br />
                <br />
                &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                Text="Order Confirm" 
                    style="height: 29px; font-size: large; font-family: Arial, Helvetica, sans-serif; background-color: #FF9900;" 
                    Height="35px" />
                </span></td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center" class="style5">
                <br class="style4" />
            </td>
        </tr>
    </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style10">
                                                Coustomer Name:&nbsp;&nbsp;&nbsp;&nbsp;                             <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; font-weight: 700; font-family: Arial, Helvetica, sans-serif;">
                                        Order Summry</td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:DataList ID="DataList1" runat="server" DataKeyField="pid" 
                                            DataSourceID="AccessDataSource1">
                                            <ItemTemplate>
                                                <table align="center" cellpadding="0" cellspacing="5" class="style1" 
                                                    style="border: thin solid #000000; font-family: Arial, Helvetica, sans-serif; font-size: medium">
                                                    <tr>
                                                        <td rowspan="5">
                                                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                                                ImageUrl='<%# Eval("pphoto") %>' Width="200px" />
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="lblname" runat="server" 
                                                                style="font-size: x-large; font-weight: 700; color: #660033" 
                                                                Text='<%# Eval("pname") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Rs.<asp:Label ID="lblprise" runat="server" Text='<%# Eval("pprise") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Size:<asp:Label ID="Label9" runat="server" Text='<%# Eval("pweight") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            Purity:<asp:Label ID="Label10" runat="server" Text='<%# Eval("pcarat") %>'></asp:Label>
                                                            &nbsp;carat</td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                                <br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                            DataFile="~/jwellery.mdb" 
                                            SelectCommand="SELECT * FROM [Product] WHERE ([pid] = ?)">
                                            <SelectParameters>
                                                <asp:SessionParameter Name="pid" SessionField="ppid" Type="Int32" />
                                            </SelectParameters>
                                        </asp:AccessDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top">
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
    </table>
</asp:Content>

