<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResultsAdmin.aspx.vb" Inherits="online_project_final.ResultsAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            color: #FF6600;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
        .style2
        {
            color: #3333FF;
        }
        .style3
        {
            color: #3333FF;
            margin-left: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Hello <span class="style1">Admin</span></div>
    <p class="style2">
        The Exam statistics are:</p>
    <p class="style3">
        No. of Students who attempted the exam:<asp:Label ID="lbl_attempted" 
            runat="server" style="color: #FF0000"></asp:Label>
    </p>
    <p class="style3">
        Students under POOR category are:<asp:Label ID="lbl_poor" runat="server" 
            style="color: #FF0000"></asp:Label>
    </p>
    <p class="style3">
        Students under AVERAGE category are:<asp:Label ID="lbl_average" runat="server" 
            style="color: #FF0000"></asp:Label>
    </p>
    <p class="style3">
        Students under EXCELLENT category are:<asp:Label ID="lbl_excellent" 
            runat="server" style="color: #FF0000"></asp:Label>
    </p>
    </form>
</body>
</html>
