Imports System.Data.OleDb

Partial Public Class TestHome1
    Inherits System.Web.UI.Page
    Dim con, con2, con3, con4, con5 As OleDbConnection
    Dim cmd, cmd2, cmd3, cmd4, cmd5, cmd9 As OleDbCommand
    Dim query, query2, query3, query4 As String
    Dim da, da2 As OleDbDataAdapter
    Dim dt, dt2 As DataTable
    Dim dr As OleDbDataReader
    Dim row As DataRow
    Public cans As Integer = 0
    Dim time_arr(25) As Integer
    Dim stats1(30) As Integer
    Dim index As Integer = 0
    Dim index1 As Integer = 0
    Dim index2 As Integer = 0
    Dim arr(25) As Integer
    Dim arr2(25) As Integer
    Dim arr3(25) As String


    Public Sub NextQuestion(ByVal RecNo As Integer)
        Dim i2, j, k, k1 As Integer
        Dim str1 As String
        str1 = ""
        Dim t_arr(30) As Integer
        Dim res As Int32

        Dim cd1, cd2, cd3, cd4 As OleDbCommand

        t_arr = DirectCast(ViewState("arr"), Integer())
        i2 = 0
        j = 0
        k = 0
        RadioButtonList1.Items.Clear()
        Dim count As Integer = 0
        Dim s As String
        Dim str As String
        i2 = Convert.ToInt32(ViewState("index"))
        Try
            con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
            con.Open()
            query = "select * from quizpaper where q_qno=" & RecNo
            ' dt = New DataTable()
            'da = New OleDbDataAdapter(query, con)
            'da.Fill(dt)
            'count = dt.Rows.Count
            cmd4 = New OleDbCommand(query, con)
            ' MesgBox("recno=" & RecNo)
            dr = cmd4.ExecuteReader
            dr.Read()

            If ViewState("Cans") IsNot Nothing Then
                cans = Convert.ToInt32(ViewState("Cans"))
            End If
            If i2 < 25 Then
                ' row = dt.Rows(RecNo)
                ' MesgBox("index=" & i2)
                lbl_quesno.Text = i2 + 1
                Label1.Text = dr.GetString(0).ToString
                Label1.ForeColor = Drawing.Color.Orange
                RadioButtonList1.Items.Add(dr.GetString(1).ToString)
                RadioButtonList1.Items.Add(dr.GetString(2).ToString)
                RadioButtonList1.Items.Add(dr.GetString(3).ToString)
                RadioButtonList1.Items.Add(dr.GetString(4).ToString)
            Else
                store_statistics()
                store_stats2()

                s = Request.QueryString("retake")
                res = Convert.ToInt32(s)
                If res = 2 Then
                    If cans < 10 Then
                        str = "insert into retake2 values('" & Session("new").ToString & "'," & cans & ",'failed')"
                        cd4 = New OleDbCommand(str, con)
                        cd4.ExecuteNonQuery()
                        Response.Redirect("failed.aspx?crctans=" & cans, False)
                    ElseIf cans > 10 Then
                        str = "insert into retake2 values('" & Session("new").ToString & "'," & cans & ",'passed')"
                        cd4 = New OleDbCommand(str, con)
                        cd4.ExecuteNonQuery()
                        Response.Redirect("results.aspx?crctans=" & cans, False)
                    End If
                ElseIf res = 1 Then
                    If cans < 10 Then
                        str = "insert into retake values('" & Session("new").ToString & "'," & cans & ",'failed')"
                        cd1 = New OleDbCommand(str, con)
                        cd1.ExecuteNonQuery()
                        Response.Redirect("failed.aspx?crctans=" & cans, False)
                    ElseIf cans > 10 Then
                        str = "insert into retake values('" & Session("new").ToString & "'," & cans & ",'passed')"
                        cd1 = New OleDbCommand(str, con)
                        cd1.ExecuteNonQuery()
                        Response.Redirect("results.aspx?crctans=" & cans, False)
                    End If
                Else
                    If cans < 10 Then
                        str = "insert into results values('" & Session("new").ToString & "'," & cans & "," & "'failed')"
                        cd2 = New OleDbCommand(str, con)
                        cd2.ExecuteNonQuery()
                        Response.Redirect("failed.aspx?crctans=" & cans, False)
                    ElseIf cans > 10 Then
                        str = "insert into results values('" & Session("new").ToString & "'," & cans & "," & "'passed')"
                        cd2 = New OleDbCommand(str, con)
                        cd2.ExecuteNonQuery()
                        Response.Redirect("results.aspx?crctans=" & cans, False)
                    End If
                End If

            End If
        Catch ex As Exception
            MesgBox("   ++++++++" & ex.Message)
        End Try
    End Sub
    Private Sub store_stats2()
        Dim conn, conn2 As OleDbConnection
        Dim com1, com2, com3 As OleDbCommand
        Dim dr1, dr2 As OleDbDataReader
        Dim qry, qry2, qry3 As String
        Dim total, correct, incorrect, re As Integer
        re = 0
        'MsgBox("entered stored stats 2")
        Try
            conn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/statistics.mdb")
            conn.Open()
            conn2 = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
            conn2.Open()

            qry = "select sum(time_taken) from " & Session("new").ToString
            com1 = New OleDbCommand(qry, conn)
            dr1 = com1.ExecuteReader
            dr1.Read()
            total = Convert.ToInt32(dr1(0).ToString)
            dr1.Close()

            qry2 = "select sum(time_taken) from " & Session("new").ToString & " where result='true'"
            com2 = New OleDbCommand(qry2, conn)
            dr2 = com2.ExecuteReader
            dr2.Read()
            correct = Convert.ToInt32(dr2(0).ToString)
            incorrect = total - correct
            re = Convert.ToInt32(Request.QueryString("retake"))

            qry3 = "insert into statistics values('" & Session("new").ToString & "'," & total & "," & incorrect & "," & correct & "," & re & ")"
            '   MsgBox("query of statistics---" & qry3)
            com3 = New OleDbCommand(qry3, conn2)
            com3.ExecuteNonQuery()

        Catch ex As Exception
            MesgBox(ex.StackTrace)
        End Try
    End Sub
    Private Sub store_statistics()
        Dim qry1, qry2 As String
        Dim t As Integer
        Dim t_arr(25) As Integer
        Dim t_arr2(25) As Integer
        Dim t_arr3(25) As String
        Dim re As Integer
        re = Convert.ToInt32(Request.QueryString("retake"))
        If ViewState("arr") IsNot Nothing Then
            t_arr = DirectCast(ViewState("arr"), Integer())
        End If

        If ViewState("arr3") IsNot Nothing Then
            t_arr3 = DirectCast(ViewState("arr3"), String())

        End If
        If ViewState("arr2") IsNot Nothing Then
            t_arr2 = DirectCast(ViewState("arr2"), Integer())
        End If
        Try
            con4 = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/statistics.mdb")
            con4.Open()
            For t = 0 To 24
                If re = 2 Then
                    qry2 = "insert into " & Session("new").ToString & "_retake2" & " values(" & t_arr(t) & "," & t_arr2(t) & ",'" & t_arr3(t) & "')"
                ElseIf re = 1 Then
                    qry2 = "insert into " & Session("new").ToString & "_retake" & " values(" & t_arr(t) & "," & t_arr2(t) & ",'" & t_arr3(t) & "')"
                Else
                    qry2 = "insert into " & Session("new").ToString & " values(" & t_arr(t) & "," & t_arr2(t) & ",'" & t_arr3(t) & "')"

                End If
                MesgBox("store stats before cmd ")
                cmd5 = New OleDbCommand(qry2, con4)
                cmd5.ExecuteNonQuery()

            Next

        Catch ex As Exception
            MesgBox("???????" & ex.Message)
        End Try
    End Sub
    Private Sub MesgBox(ByVal sMessage As String)
        Dim msg As String
        msg = "<script language='javascript'>"
        msg += "alert('" & sMessage & "');"
        msg += "<" & "/script>"
        Response.Write(msg)
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl_quesno.ForeColor = Drawing.Color.Red
        lbl_totalques.ForeColor = Drawing.Color.Red
        Dim query5 As String
        Dim rand2 As Random
        rand2 = New Random
        Dim temp As Integer
        Dim con6 As OleDbConnection
        Dim cmd7 As OleDbCommand
        Dim s1, res1 As Integer

        If Not IsPostBack Then
            Try
                con2 = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
                con2.Open()
                con6 = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/statistics.mdb")
                con6.Open()
                s1 = Request.QueryString("retake")
                res1 = Convert.ToInt32(s1)
                If res1 = 2 Then
                    query5 = "create table " & Session("new").ToString & "_retake2" & "(qno number,time_taken number,result text)"
                End If
                If res1 = 1 Then
                    query5 = "create table " & Session("new").ToString & "_retake" & "(qno number,time_taken number,result text)"
                Else
                    query5 = "create table " & Session("new").ToString & "(qno number,time_taken number,result text)"
                End If
                
                query2 = "select * from quizpaper"
                'MesgBox(query5)
                'query5 = "insert into statistics values('" & Session("new").ToString & "',-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1)"
                'query5 = "create table " & Session("new").ToString & "(qno number,time_taken number,result text)"
                cmd7 = New OleDbCommand(query5, con6)
                cmd7.ExecuteNonQuery()
                
            Catch ex As Exception
            End Try
            dt2 = New DataTable()
            da2 = New OleDbDataAdapter(query2, con2)
            da2.Fill(dt2)
            Session("dt2") = dt2
            ViewState("Cans") = 0
            ViewState("stats1") = stats1

            lbl_totalques.Text = 25
            temp = rand2.Next(1, 101)
            arr(0) = temp
            NextQuestion(temp)
            ViewState("index") = 1
            ViewState("arr") = arr
            ViewState("RecNo") = temp
            ViewState("index2") = 0
            ViewState("arr3") = arr3
            ViewState("index1") = 0
            ViewState("arr2") = arr2
        End If
    End Sub
    Private Sub random_ques()
        Dim RecNo As Integer = 0
        Dim i1, i2 As Integer
        Dim temp_arr(25), temp_arr2(25) As Integer
        Dim temp, temp2 As Integer
        Dim time_stats1 As String
        Dim j, k As Integer
        Dim rand As Random
        rand = New Random

        If ViewState("RecNo") IsNot Nothing Then
            RecNo = Convert.ToInt32(ViewState("RecNo"))
        End If
        If ViewState("index") IsNot Nothing Then
            i1 = Convert.ToInt32(ViewState("index"))
        End If
        If ViewState("index1") IsNot Nothing Then
            i2 = Convert.ToInt32(ViewState("index1"))
        End If

        If ViewState("arr2") IsNot Nothing Then
            temp_arr2 = DirectCast(ViewState("arr2"), Integer())

        End If

        If ViewState("arr") IsNot Nothing Then
            temp_arr = DirectCast(ViewState("arr"), Integer())

        End If

        Try
            'MesgBox("entered try")
            con3 = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
            con3.Open()
            'MesgBox("entered try 2")
            ' temp2 = i1 + 1
            'MesgBox("entered try 3")
            ' time_stats1 = "update statistics set question" & temp2 & "=" & SendA.Value & " where username='" & Session("new").ToString & "'"
            ' MesgBox("update is  " & time_stats1)
            'cmd3 = New OleDbCommand(time_stats1, con3)
            'cmd3.ExecuteNonQuery()
            temp_arr2(i2) = SendA.Value
            i2 = i2 + 1
            ViewState("index1") = i2
            ViewState("arr2") = temp_arr2


hello:
            temp = rand.Next(1, 101)
            If i1 = 0 Then
                GoTo hello2
            End If
            For k = 0 To i1
                If temp_arr(k) = temp Then
                    GoTo hello
                End If
            Next
hello2:
            temp_arr(i1) = temp
            i1 = i1 + 1
            ViewState("index") = i1
            RecNo = temp
            'hello:
            'arr(i) = rand.Next(1, 100)
            'For j = 0 To i
            'If arr(j) = arr(i) Then
            'GoTo hello
            'Else
            'RecNo = arr(i)
            'i = i + 1
            'End If
            'Next
            ' RecNo = RecNo + 1
            ViewState("arr") = temp_arr

            ViewState("RecNo") = RecNo
            NextQuestion(RecNo)
        Catch ex As Exception
            MesgBox("-----" & ex.Message)
        End Try
    End Sub
    Protected Sub btn_next_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_next.Click
        random_ques()

    End Sub
    Protected Sub RadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        Dim dt As DataTable = DirectCast(Session("dt2"), DataTable)
        Dim str3 As String
        Dim dr4 As OleDbDataReader
        Dim temp_recno As Integer
        Dim Cans As Integer = 0
        Dim i3 As Integer = 0
        Dim temp_arr3(25) As String
        Try
            con5 = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:/login.mdb")
            con5.Open()

            If ViewState("index2") IsNot Nothing Then
                i3 = Convert.ToInt32(ViewState("index2"))
            End If

            If ViewState("arr3") IsNot Nothing Then
                temp_arr3 = DirectCast(ViewState("arr3"), String())

            End If
            If ViewState("Cans") IsNot Nothing Then
                Cans = Convert.ToInt32(ViewState("Cans"))
            End If
            If ViewState("RecNo") IsNot Nothing Then
                temp_recno = Convert.ToInt32(ViewState("RecNo"))
            End If
            str3 = "select q_correctanswer from quizpaper where q_qno=" & temp_recno
            'MsgBox("recno in rct ans is " & temp_recno)

            cmd9 = New OleDbCommand(str3, con5)
            dr4 = cmd9.ExecuteReader()
            dr4.Read()
            'MsgBox("recno in rct ans is " & temp_recno)
            If (RadioButtonList1.SelectedValue).Equals((dr4.GetString(0).ToString())) Then
                Cans = Cans + 1
                temp_arr3(i3) = "true"
                i3 = i3 + 1
                ViewState("index2") = i3
                ViewState("arr3") = temp_arr3
                ViewState("Cans") = Cans

                Session("correct") = Cans
            Else
                temp_arr3(i3) = "false"
                i3 = i3 + 1
                ViewState("index2") = i3
                ViewState("arr3") = temp_arr3

            End If
        Catch ex As Exception
            MesgBox(ex.StackTrace)
        End Try
    End Sub
    Protected Sub btn_skip_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btn_skip.Click

        Dim t3(25) As String
        Dim i4 As Integer
        If ViewState("index2") IsNot Nothing Then
            i4 = Convert.ToInt32(ViewState("index2"))
        End If

        If ViewState("arr3") IsNot Nothing Then
            t3 = DirectCast(ViewState("arr3"), String())

        End If
        t3(i4) = "false"
        i4 = i4 + 1
        ViewState("index2") = i4
        ViewState("arr3") = t3
        random_ques()

    End Sub
End Class