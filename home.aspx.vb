Imports System.Data.OleDb

Partial Public Class home
    Inherits System.Web.UI.Page

    Dim con As OleDbConnection
    Dim cmd, cmd2 As OleDbCommand
    Dim query, query2 As String
    Dim row As DataRow

    Dim dr, dr2 As OleDbDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Response.Redirect("Registration.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim qry2, qry3 As String
        Dim com, com2 As OleDbCommand
        Dim dr3, dr4 As OleDbDataReader

        Try
            con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
            con.Open()
            query = "select * from login where username='" & tb_username.Text & "' and password='" & tb_password.Text & "'"
            cmd = New OleDbCommand(query, con)
            dr = cmd.ExecuteReader
            dr.Read()
            
            If dr.HasRows Then
                Session("new") = tb_username.Text
                If (dr.GetValue(0).Equals("admin") And dr.GetValue(1).Equals("admin")) Then
                    Response.Redirect("admin.aspx", False)
                Else

                    'Response.Redirect("BeforeTest.aspx", False)
                    query2 = "select * from results where username='" & tb_username.Text & "'"
                    cmd2 = New OleDbCommand(query2, con)
                    dr2 = cmd2.ExecuteReader
                    dr2.Read()
                    If dr2.HasRows Then
                        qry2 = "select * from retake where username='" & tb_username.Text & "'"
                        com = New OleDbCommand(qry2, con)
                        dr3 = com.ExecuteReader
                        dr3.Read()
                        If dr3.HasRows Then
                            qry3 = "select * from retake2 where username='" & tb_username.Text & "'"
                            com2 = New OleDbCommand(qry3, con)
                            dr4 = com2.ExecuteReader
                            dr4.Read()
                            If dr4.HasRows Then
                                Response.Redirect("Maximum.aspx")
                            Else
                                Response.Redirect("TestHome1.aspx?retake=2")
                            End If
                        Else
                            Response.Redirect("TestHome1.aspx?retake=1")
                        End If
                    Else
                        Response.Redirect("TestHome1.aspx?retake=0")
                    End If

                End If

                
            Else

                MsgBox("invalid username or password" & vbNewLine & "Please try again....")
                Response.Redirect("home.aspx", False)
            End If
        Catch ex As Exception
            MesgBox(ex.Message)
        End Try



    End Sub
    Private Sub MesgBox(ByVal sMessage As String)
        Dim msg As String
        msg = "<script language='javascript'>"
        msg += "alert('" & sMessage & "');"
        msg += "<" & "/script>"
        Response.Write(msg)
    End Sub
End Class