<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="OrderDetails.aspx.cs" Inherits="USER_Order_Details" Title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
    {
        width: 100%;
        height: 100%;
    }
        .style7
        {
            text-align: left;
            font-weight: bold;
        }
        .style8
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }
        .style9
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style10
        {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
        .style11
        {
            width: 278px;
        }
        .style12
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            text-align: left;
        }
        .style13
        {
            font-size: xx-large;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table cellspacing="5" class="" width="90%" bgcolor="White" align="center" 
        cellpadding="3">
        <tr>
            <td class="style13" 
                style="font-weight: 700; font-family: Arial, Helvetica, sans-serif" >
                Order details<asp:TextBox ID="txtid" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style12">
                <b><span class="style9">Order Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtorderdate" runat="server" BorderStyle="Solid" 
                                        style="margin-left: 0px"></asp:TextBox>
                                    </span></b>
                                 
                                    </cc1:CalendarExtender>
                                    <br class="style10" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    <span class="style9">Coustomer Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                                    </span>
                <br class="style9" />
                                </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" DataKeyField="pid" 
                    DataSourceID="AccessDataSource1" 
                    style="text-align: left; font-weight: 700; font-family: Arial, Helvetica, sans-serif;">
                    <ItemTemplate>
                        <table cellspacing="5" class="style5">
                            <tr>
                                <td rowspan="3" valign="top">
                                    <asp:Image ID="Image3" runat="server" Height="250px" 
                                        ImageUrl='<%# Eval("pphoto") %>' Width="200px" />
                                </td>
                                <td class="style11">
                                    <b>Name:</b><asp:Label ID="Label3" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    <b>Specification:</b><asp:Label ID="Label4" runat="server" 
                                        Text='<%# Eval("pspecifications") %>' Width="200px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style11">
                                    <b>Prise:</b><asp:Label ID="Label5" runat="server" Text='<%# Eval("pprise") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/cctv1.mdb" 
                    SelectCommand="SELECT * FROM [Product] WHERE ([pid] = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="pid" SessionField="lblpid" Type="Int32" />
                    </SelectParameters>
                </asp:AccessDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style12">
                Quantity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    style="font-weight: 700; font-family: Arial, Helvetica, sans-serif" 
                    Width="100px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style8">
                Total:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" 
                    style="font-weight: 700; font-family: Arial, Helvetica, sans-serif"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btbconorder" runat="server" Text="Confirm Order" 
                    BackColor="#CCCCCC" Height="40px" Width="150px" 
                    onclick="btbconorder_Click" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

