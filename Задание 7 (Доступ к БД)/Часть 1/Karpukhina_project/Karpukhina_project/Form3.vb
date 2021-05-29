Public Class Form3

    Private Sub GroupBox1_Enter(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles GroupBox1.Enter

    End Sub

    Private Sub Form3_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'TODO: данная строка кода позволяет загрузить данные в таблицу "РадиостанцииDataSet.График_работы1". При необходимости она может быть перемещена или удалена.
        Me.График_работы1TableAdapter.Fill(Me.РадиостанцииDataSet.График_работы1)

    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        График_работы1BindingSource.Filter = "Название ='" & ComboBox1.Text & "'"
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        График_работы1BindingSource.Filter = " "
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim i, j As Integer
        Dim f As Boolean
        f = False
        For i = 0 To График_работы1DataGridView.ColumnCount - 1
            For j = 0 To График_работы1DataGridView.RowCount - 1
                График_работы1DataGridView.Item(i, j).Style.BackColor = Color.White
            Next j
        Next i
        For i = 0 To График_работы1DataGridView.ColumnCount - 1
            For j = 0 To График_работы1DataGridView.RowCount - 1
                If InStr(График_работы1DataGridView.Item(i, j).Value, TextBox1.Text) Then
                    График_работы1DataGridView.Item(i, j).Style.BackColor = Color.Coral
                    f = True
                End If
            Next j
        Next i
        If Not f Then
            MessageBox.Show("Не найдено", "Сообщение для пользователя")
        End If

    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        Me.Close()
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim L As DataGridViewTextBoxColumn
        Select Case ListBox1.SelectedIndex
            Case 0
                L = DataGridViewTextBoxColumn1
            Case 1
                L = DataGridViewTextBoxColumn3
        End Select
        If RadioButton1.Checked Then
            График_работы1DataGridView.Sort(L, System.ComponentModel.ListSortDirection.Descending)
        Else
            График_работы1DataGridView.Sort(L, System.ComponentModel.ListSortDirection.Ascending)
        End If

    End Sub

    Private Sub BindingNavigatorSaveItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BindingNavigatorCountItem.Click
        Me.Validate()
        Me.График_работы1BindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.РадиостанцииDataSet)

    End Sub

    Private Sub BindingNavigatorAddNewItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BindingNavigatorAddNewItem.Click

    End Sub

    Private Sub BindingNavigatorPositionItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BindingNavigatorPositionItem.Click

    End Sub

    Private Sub BindingNavigatorMoveNextItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BindingNavigatorMoveNextItem.Click

    End Sub

    Private Sub BindingNavigatorDeleteItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BindingNavigatorDeleteItem.Click

    End Sub

    Private Sub ToolStripButton1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
            End Sub

    Private Sub BindingNavigator1_RefreshItems(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BindingNavigator1.RefreshItems

    End Sub

    Private Sub ListBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged
        Button1.Enabled = True
    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ComboBox1.SelectedIndexChanged

    End Sub
End Class