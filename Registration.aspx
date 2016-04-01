<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registration.aspx.vb" Inherits="online_project_final.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Registration</title>
    <style type="text/css">
        .style1
        {
            font-family: Aharoni;
            font-weight: bold;
        }
        .style2
        {
            font-size: xx-large;
            text-align: center;
        }
        .style3
        {
            width: 74%;
            height: 435px;
        }
        .style4
        {
            width: 114px;
            font-size: x-large;
                color: #FFFFFF;
            height: 22px;
            }
        .style11
        {
            font-family: Algerian;
            color: #FF6600;
            background-color: #FFFFFF;
        }
        .style12
        {
            width: 114px;
            font-size: large;
            height: 26px;
            color: #FFFFFF;
            background-color: #FF6600;
        }
        .style13
        {
            width: 131px;
            height: 26px;
            color: #FFFFFF;
            background-color: #FF6600;
            text-align: center;
        }
        .style14
        {
            width: 229px;
            font-size: large;
            height: 26px;
            text-align: left;
            color: #FFFFFF;
            margin-left: 40px;
            background-color: #FFFFFF;
        }
        .style19
        {
            width: 131px;
            height: 22px;
            color: #FFFFFF;
            background-color: #FF6600;
            text-align: center;
        }
        .style25
        {
            width: 229px;
            font-size: large;
            text-align: left;
            height: 35px;
            margin-left: 40px;
            background-color: #FFFFFF;
        }
        .style27
        {
            width: 229px;
            height: 22px;
            text-align: left;
            color: #FFFFFF;
            background-color: #FFFFFF;
        }
        .style30
        {
            width: 229px;
            font-size: large;
            height: 6px;
            text-align: left;
            color: #FFFFFF;
            margin-left: 40px;
            background-color: #FFFFFF;
        }
        .style32
        {
            color: #FFFFFF;
        }
        .style33
        {
            width: 100%;
        }
        .style34
        {
            width: 383px;
            height: 33px;
        }
        .style35
        {
            height: 33px;
        }
        .style36
        {
            width: 114px;
            font-size: large;
            height: 24px;
            color: #FFFFFF;
            background-color: #FF6600;
        }
        .style37
        {
            width: 229px;
            font-size: large;
            height: 24px;
            text-align: left;
            color: #FFFFFF;
            margin-left: 40px;
            background-color: #FFFFFF;
        }
        .style38
        {
            width: 131px;
            height: 24px;
            color: #FFFFFF;
            background-color: #FF6600;
            text-align: center;
        }
        .style40
        {
            width: 114px;
            font-size: large;
            color: #FFFFFF;
            height: 6px;
            background-color: #FF6600;
        }
        .style41
        {
            width: 131px;
            height: 6px;
            color: #FFFFFF;
            background-color: #FF6600;
            text-align: center;
        }
        .style42
        {
            width: 114px;
            font-size: large;
            height: 35px;
            color: #FFFFFF;
            background-color: #FF6600;
        }
        .style43
        {
            width: 131px;
            height: 35px;
            color: #FFFFFF;
            background-color: #FF6600;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <p class="style2">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/oes.png" 
                style="top: 59px; left: 15px; position: absolute; height: 277px; width: 1027px" />
        </p>
        <p class="style2">
            &nbsp;</p>
        <p class="style2">
            &nbsp;</p>
        <p class="style2">
            &nbsp;</p>
        <p class="style2">
            &nbsp;</p>
        <p class="style2">
            &nbsp;</p>
        <p class="style2">
            &nbsp;</p>
        <p class="style2">
            <span class="style11">REGISTRATION FORM:</span></p>
        <h1 class="style2">
            <table class="style3" 
                align="center" width="150" bgcolor="White">
                <tr>
                    <td class="style4" style="font-size: large" bgcolor="#FF6600">
                        Full Name</td>
                    <td class="style19">
                        <asp:TextBox ID="tb_fullname" runat="server" Width="178px"></asp:TextBox>
                    </td>
                    <td class="style27">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="please enter full name" 
                            style="font-size: large; text-align: left" ControlToValidate="tb_fullname"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style36">
                        Roll Number</td>
                    <td class="style38">
                        <asp:TextBox ID="tb_rollnumber" runat="server" Width="178px"></asp:TextBox>
                    </td>
                    <td class="style37">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="please enter roll number" ControlToValidate="tb_rollnumber"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style36">
                        Branch</td>
                    <td class="style38">
                        <asp:TextBox ID="tb_branch" runat="server" Width="178px"></asp:TextBox>
                    </td>
                    <td class="style37">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ErrorMessage="please enter branch name" ControlToValidate="tb_branch"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style40">
                        College</td>
                    <td class="style41">
                        <asp:TextBox ID="tb_college" runat="server" Width="178px" Wrap="False"></asp:TextBox>
                    </td>
                    <td class="style30">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ErrorMessage="please enter college name" ControlToValidate="tb_college"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style42" bgcolor="#FF6600">
                        Email</td>
                    <td class="style43">
                        <asp:TextBox ID="tb_email" runat="server" Height="22px" Width="178px"></asp:TextBox>
                    </td>
                    <td class="style25">
                        <span class="style32">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="tb_email" ErrorMessage="enter a valid email address" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </span>
                        <br class="style32" />
                        <span class="style32">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ControlToValidate="tb_email" ErrorMessage="please enter email address"></asp:RequiredFieldValidator>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        Country</td>
                    <td class="style13">
                        <asp:TextBox ID="tb_country" runat="server" Width="178px"></asp:TextBox>
                    </td>
                    <td class="style14">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="please enter country name" ControlToValidate="tb_country"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </h1>
    
    </div>
    <table class="style33">
        <tr>
            <td class="style34">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn_submit" runat="server" Text="Submit" BorderColor="#FF6600" 
                    ForeColor="#FF6600" 
                    style="top: 945px; left: 240px; position: absolute; width: 61px" />
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            <td class="style35">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btn_cancel" runat="server" 
                    Text="Cancel" BorderColor="#FF6600" CausesValidation="False" 
                    ForeColor="#FF6600" 
                    style="top: 944px; left: 360px; position: absolute; height: 26px; width: 60px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

