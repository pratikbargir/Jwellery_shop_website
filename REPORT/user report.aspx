<%@ Page Language="C#" MasterPageFile="~/ADMIN/adminmaster.master" AutoEventWireup="true" CodeFile="user report.aspx.cs" Inherits="REPORT_user_report" Title="Untitled Page" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <p >
        <br />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
        Font-Size="8pt" Height="400px" Width="913px" BorderWidth="1px">
        <LocalReport ReportPath="Report5.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="AccessDataSource1" 
                    Name="jwelleryDataSet_Login" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/jwellery.mdb" SelectCommand="SELECT * FROM [Login]">
        </asp:AccessDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
            SelectMethod="GetData" 
            TypeName="jwelleryDataSetTableAdapters.LoginTableAdapter">
        </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        SelectMethod="GetData" TypeName="cctv1DataSetTableAdapters.LoginTableAdapter">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="GetData" TypeName="DataSet1TableAdapters.ProductTableAdapter">
    </asp:ObjectDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </p>
</asp:Content>

