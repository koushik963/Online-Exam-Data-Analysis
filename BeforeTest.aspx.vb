Partial Public Class BeforeTest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("new") IsNot Nothing Then
            lbl_username.Visible = True

            lbl_username.Text = lbl_username.Text & UCase(Session("new").ToString)
        Else
            Response.Redirect("home.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Response.Redirect("TestHome1.aspx")
    End Sub

    
End Class