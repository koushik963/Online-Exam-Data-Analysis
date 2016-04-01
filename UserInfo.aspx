<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserInfo.aspx.vb" Inherits="online_project_final.UserInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Height="29px" Text="&lt;-- Back" 
            Width="96px" />
        <br />
        <br />
        <span class="style1">User Information</span></div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="fullname" 
        DataSourceID="AccessDataSource1">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="fullname" HeaderText="fullname" ReadOnly="True" 
                SortExpression="fullname" />
            <asp:BoundField DataField="rollnumber" HeaderText="rollnumber" 
                SortExpression="rollnumber" />
            <asp:BoundField DataField="branch" HeaderText="branch" 
                SortExpression="branch" />
            <asp:BoundField DataField="college" HeaderText="college" 
                SortExpression="college" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="country" HeaderText="country" 
                SortExpression="country" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="d:\login.mdb" SelectCommand="SELECT * FROM [users]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
