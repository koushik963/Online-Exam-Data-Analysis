<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="online_project_final.admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="160px" 
            ImageUrl="~/images/oes.png" Width="902px" />
    
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" 
            style="top: 256px; left: 71px; position: absolute; height: 26px; width: 113px" 
            Text="Login Details" />
    </p>
    <asp:Button ID="Button3" runat="server" Height="26px" 
        style="top: 329px; left: 73px; position: absolute; height: 26px; width: 113px" 
        Text="User Information" Width="113px" />
    <asp:Button ID="Button5" runat="server" 
        style="top: 206px; left: 831px; position: absolute; height: 26px; width: 56px" 
        Text="Exit" />
    Welcome <span class="style1">Admin</span><asp:Button ID="Button2" 
        runat="server" 
        style="top: 294px; left: 72px; position: absolute; height: 26px; width: 113px" 
        Text="View Results" />
    <asp:Button ID="Button4" runat="server" 
        style="top: 371px; left: 72px; position: absolute; height: 27px; width: 113px" 
        Text="Question Bank" />
    <asp:Button ID="Button6" runat="server" 
        style="top: 419px; left: 78px; position: absolute; height: 26px; width: 105px" 
        Text="Test Analysis" />
    </form>
</body>
</html>
