Public Partial Class Results
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim s As String
        Dim score As Integer

        s = Request.QueryString("crctans")
        's = Session("correct").ToString

        Label1.Text = Label1.Text & s
        Label4.Text = Label4.Text & s
        Label3.Text = Label3.Text & Session("new")
        score = 30 - Convert.ToInt32(s)
        Label2.Text = Label2.Text & score

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Response.Redirect("home.aspx")
    End Sub
End Class