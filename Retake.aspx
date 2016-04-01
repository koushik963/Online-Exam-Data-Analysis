<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Retake.aspx.vb" Inherits="online_project_final.Retake" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="188px" 
            ImageUrl="~/images/exam.jpg" Width="862px" />
    
    </div>
    <asp:Button ID="Button1" runat="server" 
        style="top: 256px; left: 284px; position: absolute; height: 88px; width: 429px; margin-top: 0px" 
        Text="RETAKE THE EXAM NOW!!!!!!" />
    </form>
</body>
</html>
