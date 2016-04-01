<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TestAnalysis.aspx.vb" Inherits="online_project_final.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            background-color: #00FFFF;
        }
        .style2
        {
            width: 263px;
        }
        .style3
        {
            width: 264px;
        }
        .style4
        {
            width: 256px;
        }
        .style5
        {
            width: 265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" Height="234px" 
            ImageUrl="~/images/analysis.jpg" Width="1069px" />
    
    </div>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <b>&nbsp;First attempt&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Retake1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Retake2&nbsp;</b></p>
    <table class="style1">
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                MIN</td>
            <td>
                MAX</td>
            <td>
                MEAN</td>
            <td>
                MIN</td>
            <td>
                MAX</td>
            <td>
                MEAN</td>
            <td>
                MIN</td>
            <td>
                MAX</td>
            <td>
                MEAN</td>
        </tr>
        <tr>
            <td class="style2">
                Incorrect Answers:</td>
            <td>
                <asp:Label ID="incrct_Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label3" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label5" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label6" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label7" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label8" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="incrct_Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Correct Answers:</td>
            <td>
                <asp:Label ID="crct_Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label3" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label5" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label6" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label7" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label8" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crct_Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Time Spent:</td>
            <td>
                <asp:Label ID="tottime_Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label3" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label5" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label6" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label7" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label8" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="tottime_Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Incorrect Answers Time:</td>
            <td>
                <asp:Label ID="inctime_Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label3" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label5" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label6" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label7" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label8" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="inctime_Label9" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Correct Answers Time:</td>
            <td>
                <asp:Label ID="crcttime_Label1" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label2" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label3" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label4" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label5" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label6" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label7" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label8" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crcttime_Label9" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
