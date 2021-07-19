Public Class Form5

    Private Sub Form5_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub
    Private Sub GetData(ByVal selectCommand As String)
        Try
            Dim connectionString As String
            Dim ds As New DataSet()
            Dim dataAdapter As New SqlDataAdapter()
            connectionString = "Data Source=LAPTOP-37571LAR\SQLEXPRESS;Initial Catalog=Радиостанции;Integrated Security=True"
            Dim connection As New SqlConnection(connectionString)
            Dim cmd As New SqlCommand(selectCommand, connection)
            dataAdapter.SelectCommand = cmd
            dataAdapter.Fill(ds)
            DataGridView1.DataSource = ds.Tables(0)
        Catch ex As SqlException
            MessageBox.Show("Ошибка : " & ErrorToString())
        End Try
    End Sub

    Private Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        GetData(Me.TextBox1.Text)
    End Sub

    Private Sub DataGridView1_CellContentClick(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick

    End Sub
End Class