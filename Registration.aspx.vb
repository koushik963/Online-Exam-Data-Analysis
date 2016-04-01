Imports System.Data.OleDb

Partial Public Class Registration
    Inherits System.Web.UI.Page
    Dim con As OleDbConnection
    Dim cmd, cmd2 As OleDbCommand
    Dim query, qry2 As String
    Dim dr As OleDbDataReader
    Dim status, status2 As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_submit.Click
        
        Try

            con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
            con.Open()
            query = "insert into users values('" & tb_fullname.Text & "','" & tb_rollnumber.Text & "','" & tb_branch.Text & "','" & tb_college.Text & "','" & tb_email.Text & "','" & tb_country.Text & "')"
            cmd = New OleDbCommand(query, con)
            status = cmd.ExecuteNonQuery
            If status > 0 Then
                ' MsgBox("entered if")
                qry2 = "insert into login values('" & tb_email.Text & "','" & tb_rollnumber.Text & "')"
                cmd2 = New OleDbCommand(qry2, con)
                status2 = cmd2.ExecuteNonQuery
                If status2 > 0 Then
                    MsgBox("Succesfully Registered!!!!!!!!!!!" & vbNewLine & "Login details:" & vbNewLine & "username=" & tb_email.Text & vbNewLine & "password=" & tb_rollnumber.Text)
                    Response.Redirect("home.aspx", False)
                Else
                    MesgBox("!!!REGISTRATION FAILED!!!!!!!!")
                End If
            Else

                MesgBox("!!!!!!!!!!REGISTRATION FAILED!!!!!!!!!!!")
            End If
        Catch ex As Exception
            MesgBox("===" & ex.Message)

        End Try

    End Sub
    Private Sub MesgBox(ByVal sMessage As String)
        Dim msg As String
        msg = "<script language='javascript'>"
        msg += "alert('" & sMessage & "');"
        msg += "<" & "/script>"
        Response.Write(msg)
    End Sub
    Protected Sub btn_cancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_cancel.Click
        
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub tb_fullname_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles tb_fullname.TextChanged

    End Sub

    Protected Sub tb_branch_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles tb_branch.TextChanged

    End Sub
End Class