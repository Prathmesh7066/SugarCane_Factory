<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookingreport.aspx.cs" Inherits="Report_bookingreport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
         <asp:Calendar ID="Calendar1"  runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="510px" Width="1351px"></rsweb:ReportViewer>
  
    </form>
</body>
</html>
