Imports System.Data.OleDb

Partial Public Class ResultsAdmin
    Inherits System.Web.UI.Page
    Dim con As OleDbConnection
    Dim query As String
    Dim cmd As OleDbCommand
    Dim dr As DataRow
    Dim da As OleDbDataAdapter
    Dim dt As DataTable

    



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim i, j As Integer
        Dim poor, avg, exc As Integer

        con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
        con.Open()
        query = "select * from results"
        dt = New DataTable()
        da = New OleDbDataAdapter(query, con)
        da.Fill(dt)
        lbl_attempted.Text = lbl_attempted.Text & dt.Rows.Count
        For i = 0 To Convert.ToInt32(dt.Rows.Count) - 1
            dr = dt.Rows(i)
            j = Convert.ToInt32(dr(1).ToString)
            If j < 12 Then
                poor = poor + 1
            End If
            If j >= 12 And j < 22 Then
                avg = avg + 1

            End If
            If j >= 22 Then
                exc = exc + 1

            End If
        Next
        lbl_average.Text = lbl_average.Text & avg
        lbl_excellent.Text = lbl_excellent.Text & exc
        lbl_poor.Text = lbl_poor.Text & poor


    End Sub

End Class