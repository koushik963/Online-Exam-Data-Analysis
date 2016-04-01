<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/NewMaster.Master" CodeBehind="home.aspx.vb" Inherits="online_project_final.home" 
    title="Online Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="tb_username" runat="server" 
    
        style="top: 403px; left: 818px; position: absolute; height: 22px; width: 128px; margin-top: 0px;"></asp:TextBox>
<asp:TextBox ID="tb_password" runat="server" 
    style="top: 443px; left: 819px; position: absolute; height: 22px; width: 128px" 
    TabIndex="1" TextMode="Password"></asp:TextBox>
<asp:Button ID="Button1" runat="server" BorderColor="#FF6600" 
    BorderStyle="Solid" ForeColor="#FF6600" 
    style="top: 495px; left: 789px; position: absolute; width: 56px" 
    TabIndex="3" Text="Sign in" />
<asp:Button ID="Button2" runat="server" BorderColor="#FF6600" 
    BorderStyle="Solid" ForeColor="#FF6600" 
    style="top: 493px; left: 944px; position: absolute; height: 26px; width: 56px" 
    Text="Sign Up" />
    <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ErrorMessage="Invalid username or password" 
        style="top: 532px; left: 796px; position: absolute; height: 21px; width: 205px"></asp:CustomValidator>
<asp:Image ID="Image2" runat="server" Height="319px" 
    ImageUrl="~/images/login2.png" Width="1037px" />
</asp:Content>
