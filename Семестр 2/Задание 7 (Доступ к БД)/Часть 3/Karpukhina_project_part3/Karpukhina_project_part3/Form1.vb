Imports System.Data
Imports System.Data.SqlClient
Imports System.Windows.Forms
Public Class Form1
    Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Call Procedure()
    End Sub
    Sub Procedure()
        Dim strConn As String
        strConn = "Data Source=SRV01\Администратор;Initial Catalog=Радиостанции;Integrated Security=True"
        Dim cnSQLServer As New SqlClient.SqlConnection(strConn)
        Dim cmd As New SqlClient.SqlCommand()
        Dim prmSQLParametr As SqlClient.SqlParameter
        With cmd
            .Connection = cnSQLServer
            .CommandText = "procedure1"
            .CommandType = CommandType.StoredProcedure
        End With
        Dim id As Integer
        id = CInt(TextBox1.Text)
        prmSQLParametr = cmd.Parameters.AddWithValue("@par1", id)
        prmSQLParametr.Direction = ParameterDirection.Input
        prmSQLParametr.SqlDbType = SqlDbType.Int
        prmSQLParametr = cmd.Parameters.AddWithValue("@par2", Nothing)
        prmSQLParametr.Direction = ParameterDirection.Output
        prmSQLParametr.SqlDbType = SqlDbType.Int
        prmSQLParametr = cmd.Parameters.AddWithValue("@par3", Nothing)
        prmSQLParametr.Direction = ParameterDirection.Output
        prmSQLParametr.SqlDbType = SqlDbType.Int
        cnSQLServer.Open()
        Dim drSQLServer As SqlDataReader = cmd.ExecuteReader
        Try
            TextBox2.Text = cmd.Parameters("@par2").Value
            TextBox3.Text = cmd.Parameters("@par3").Value
        Catch ex As System.InvalidCastException
            MessageBox.Show("Заказа с таким кодом не существует")
        End Try
        cnSQLServer.Close()
    End Sub
End Class
