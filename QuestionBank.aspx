<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="QuestionBank.aspx.vb" Inherits="online_project_final.QuestionBank" %>

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
    
        <asp:Button ID="Button1" runat="server" Height="33px" Text="&lt;-- Back" 
            Width="107px" />
    
    </div>
    <p class="style1">
        Question Bank</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="q_question" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="q_question" HeaderText="q_question" ReadOnly="True" 
                    SortExpression="q_question" />
                <asp:BoundField DataField="q_answer1" HeaderText="q_answer1" 
                    SortExpression="q_answer1" />
                <asp:BoundField DataField="q_answer2" HeaderText="q_answer2" 
                    SortExpression="q_answer2" />
                <asp:BoundField DataField="q_answer3" HeaderText="q_answer3" 
                    SortExpression="q_answer3" />
                <asp:BoundField DataField="q_answer4" HeaderText="q_answer4" 
                    SortExpression="q_answer4" />
                <asp:BoundField DataField="q_correctanswer" HeaderText="q_correctanswer" 
                    SortExpression="q_correctanswer" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="d:\login.mdb" SelectCommand="SELECT * FROM [quizpaper]">
        </asp:AccessDataSource>
    </p>
    </form>
</body>
</html>
