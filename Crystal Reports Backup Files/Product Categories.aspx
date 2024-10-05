<%@ Page Language="C#" MasterPageFile="~/USER/Homemaster.master" AutoEventWireup="true" CodeFile="Product Categories.aspx.cs" Inherits="USER_Product_Categories" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
            height: 100%;
        }
        .style3
        {
            color: #FF0066;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
        <tr>
            <td rowspan="4">
                &nbsp;</td>
            <td colspan="2" style="text-align: center">
                &nbsp;&nbsp;<span class="style3">PRODUCT CATAEGOURS</span></td>
        </tr>
        <tr>
            <td colspan="2">
                CCTV Fourm&#39;s protfolio of products gives you a lot of a options when it comes of 
                choosing the perfact CCTV cameras. It includes megaf options ,Convert security 
                ,HD varieties and LCD monitors.</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="160px" 
                    ImageUrl="~/images/Survellience-Cat-Img.jpg" Width="500px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <span class="style3">SURVEILANCE PRODUCTS</span><br />
                Be it traffic signals or retail shops a 24*7 surveilance is required from a 
                security standpoints<br />
                Explore our products range here and find a completelyarray of cameras for 
                surveilance.</td>
            <td>
                <asp:Image ID="Image3" runat="server" Height="160px" 
                    ImageUrl="~/images/Time-Attendence-Cat-Img.jpg" Width="500px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <span class="style3">TIME AND ATTENDANCE</span><br />
                Attandance is of important in place like offices eductions institutions,keeping 
                trak of
                <br />
                attendance is key problemwe slove a out through range of CCTV.</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image4" runat="server" Height="160px" 
                    ImageUrl="~/images/Home-Solutions-Cat-Img[1].jpg" Width="500px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <span class="style3">HOME SOLUTIONS</span><br />
                Security is a major concern in todays world where came rate needs to be rining 
                movement . Descover our range of CCTV cameras were you will get plenty of 
                options to choose the best one per unit your needs.</td>
            <td>
                <asp:Image ID="Image5" runat="server" Height="160px" 
                    ImageUrl="~/images/Accessories-Cat-Img.jpg" Width="500px" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <span class="style3">ACCESSORIES</span><br />
                CCTV Fourm offers you a list of accesories to choose from, then giving you 
                various options add on to the CCTV camera have.<br />
            </td>
        </tr>
    </table>
</asp:Content>

