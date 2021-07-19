Imports System.Data
Imports System.Data.SqlClient
Imports System.Windows.Forms

Public Class Form1
    Private Sub GetData(ByVal selectCommand As String)
        Dim connString As String
        connString = "Data Source=SRV01\Администратор;Initial Catalog=Радиостанции;Integrated Security=True"
        Dim conn As New SqlClient.SqlConnection(connString)
        Dim cmd As New SqlClient.SqlCommand(selectCommand, conn)
        cmd.Connection = conn
        conn.Open()
        Dim drSQLServer As SqlClient.SqlDataReader = cmd.ExecuteReader
        Dim i As Integer, j As Integer
        j = 0
        Do While drSQLServer.Read
            j = j + 1
            For i = 0 To drSQLServer.FieldCount - 1
                TextBox1.Text = TextBox1.Text & "|" & drSQLServer(i).ToString
            Next
            TextBox1.Text = TextBox1.Text & vbCrLf
            If j = 3 Then
                MsgBox("Вывод 3 первых записей")
                Exit Do
            End If
        Loop
        drSQLServer.Close()
        conn.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        GetData(Me.TextBox1.Text)
    End Sub
End Class
