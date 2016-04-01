Imports System.Data.OleDb

Public Class WebForm1
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        results_stats()
        retake_stats()
        retake2_stats()
    End Sub

    Private Sub retake_stats()
        Dim con As OleDbConnection
        Dim cmd, cmd2 As OleDbCommand
        Dim dr, dr1, dr2 As OleDbDataReader
        Dim qry, qry2, qry3, qry4 As String
        Dim max1, max2, max3 As Integer
        Dim min1, min2, min3 As Integer
        Dim n1, n2 As Integer
        Dim da As OleDbDataAdapter
        Dim dt As DataTable
        Dim temp, temp1 As Integer
        con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
        con.Open()
        qry = "select max(score),min(score),sum(score) from retake"
        cmd = New OleDbCommand(qry, con)
        dr = cmd.ExecuteReader
        dr.Read()
        qry2 = "select min(total_time),min(total_time),min(incorrectans_time),max(incorrectans_time),min(correctans_time),max(correctans_time),sum(total_time),sum(incorrectans_time),sum(correctans_time) from statistics where retake=1"
        cmd2 = New OleDbCommand(qry2, con)
        dr1 = cmd2.ExecuteReader
        dr1.Read()
        qry3 = "select * from results"
        dt = New DataTable
        da = New OleDbDataAdapter(qry3, con)
        da.Fill(dt)
        n1 = dt.Rows.Count
        temp = Convert.ToInt32(dr(2).ToString)
        temp1 = (n1 * 25) - temp
        max1 = Convert.ToInt32(dr(0).ToString)
        min1 = Convert.ToInt32(dr(1).ToString)
        incrct_Label4.Text = "" & 25 - max1
        incrct_Label5.Text = "" & 25 - min1
        incrct_Label6.Text = "" & temp1 / n1
        crct_Label4.Text = min1
        crct_Label5.Text = max1
        crct_Label6.Text = "" & temp / n1
        tottime_Label4.Text = dr1(1).ToString
        tottime_Label5.Text = dr1(0).ToString
        tottime_Label6.Text = dr1(6).ToString
        inctime_Label4.Text = dr1(2).ToString
        inctime_Label5.Text = dr1(3).ToString
        inctime_Label6.Text = dr1(7).ToString
        crcttime_Label4.Text = dr1(4).ToString
        crcttime_Label5.Text = dr1(5).ToString
        crcttime_Label6.Text = dr1(8).ToString

    End Sub
    Private Sub retake2_stats()
        Dim con As OleDbConnection
        Dim cmd, cmd2 As OleDbCommand
        Dim dr, dr1, dr2 As OleDbDataReader
        Dim qry, qry2, qry3, qry4 As String
        Dim max1, max2, max3 As Integer
        Dim min1, min2, min3 As Integer
        Dim n1, n2 As Integer
        Dim da As OleDbDataAdapter
        Dim dt As DataTable
        Dim temp, temp1 As Integer
        con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
        con.Open()
        qry = "select max(score),min(score),sum(score) from results"
        cmd = New OleDbCommand(qry, con)
        dr = cmd.ExecuteReader
        dr.Read()
        qry2 = "select min(total_time),min(total_time),min(incorrectans_time),max(incorrectans_time),min(correctans_time),max(correctans_time),sum(total_time),sum(incorrectans_time),sum(correctans_time) from statistics where retake=2"
        cmd2 = New OleDbCommand(qry2, con)
        dr1 = cmd2.ExecuteReader
        dr1.Read()
        qry3 = "select * from results"
        dt = New DataTable
        da = New OleDbDataAdapter(qry3, con)
        da.Fill(dt)
        n1 = dt.Rows.Count
        temp = Convert.ToInt32(dr(2).ToString)
        temp1 = (n1 * 25) - temp
        max1 = Convert.ToInt32(dr(0).ToString)
        min1 = Convert.ToInt32(dr(1).ToString)
        incrct_Label7.Text = "" & 25 - max1
        incrct_Label8.Text = "" & 25 - min1
        incrct_Label9.Text = "" & temp1 / n1
        crct_Label7.Text = min1
        crct_Label8.Text = max1
        crct_Label9.Text = "" & temp / n1
        tottime_Label7.Text = dr1(1).ToString
        tottime_Label8.Text = dr1(0).ToString
        tottime_Label9.Text = dr1(6).ToString
        inctime_Label7.Text = dr1(2).ToString
        inctime_Label8.Text = dr1(3).ToString
        inctime_Label9.Text = dr1(7).ToString
        crcttime_Label7.Text = dr1(4).ToString
        crcttime_Label8.Text = dr1(5).ToString
        crcttime_Label9.Text = dr1(8).ToString

    End Sub
    Private Sub results_stats()
        Dim con As OleDbConnection
        Dim cmd, cmd2 As OleDbCommand
        Dim dr, dr1, dr2 As OleDbDataReader
        Dim qry, qry2, qry3, qry4 As String
        Dim max1, max2, max3 As Integer
        Dim min1, min2, min3 As Integer
        Dim n1, n2 As Integer
        Dim da As OleDbDataAdapter
        Dim dt As DataTable
        Dim temp, temp1 As Integer
        Try
            con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
            con.Open()
            qry = "select max(score),min(score),sum(score) from results"
            cmd = New OleDbCommand(qry, con)
            dr = cmd.ExecuteReader
            dr.Read()
            qry2 = "select min(total_time),min(total_time),min(incorrectans_time),max(incorrectans_time),min(correctans_time),max(correctans_time),sum(total_time),sum(incorrectans_time),sum(correctans_time) from statistics where retake=0"
            cmd2 = New OleDbCommand(qry2, con)
            dr1 = cmd2.ExecuteReader
            dr1.Read()
            qry3 = "select * from results"
            dt = New DataTable
            da = New OleDbDataAdapter(qry3, con)
            da.Fill(dt)
            n1 = dt.Rows.Count
            ' MsgBox(dr(0).ToString & dr(1).ToString)
            temp = Convert.ToInt32(dr(2).ToString)
            temp1 = (n1 * 25) - temp
            max1 = Convert.ToInt32(dr(0).ToString)
            min1 = Convert.ToInt32(dr(1).ToString)
            incrct_Label1.Text = "" & 25 - max1
            incrct_Label2.Text = "" & 25 - min1
            incrct_Label3.Text = "" & temp1 / n1
            crct_Label1.Text = min1
            crct_Label2.Text = max1
            crct_Label3.Text = "" & temp / n1
            tottime_Label1.Text = dr1(1).ToString
            tottime_Label2.Text = dr1(0).ToString
            tottime_Label3.Text = dr1(6).ToString
            inctime_Label1.Text = dr1(2).ToString
            inctime_Label2.Text = dr1(3).ToString
            inctime_Label3.Text = dr1(7).ToString
            crcttime_Label1.Text = dr1(4).ToString
            crcttime_Label2.Text = dr1(5).ToString
            crcttime_Label3.Text = dr1(8).ToString

        Catch ex As Exception
            MesgBox("admin error----" & ex.StackTrace)
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