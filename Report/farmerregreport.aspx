<%@ Page Language="C#" AutoEventWireup="true" CodeFile="farmerregreport.aspx.cs" Inherits="Report_farmerregreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtvill" runat="server"></asp:TextBox>
        <asp:Button ID="btnsearch" runat="server" Text="search" OnClick="Button1_Click" />
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="571px" Width="1260px"></rsweb:ReportViewer>
    </form>
</body>
</html>
