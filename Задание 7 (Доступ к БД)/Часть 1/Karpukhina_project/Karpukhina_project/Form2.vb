Public Class Form2

    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Me.График_работы1TableAdapter.Fill(Me.РадиостанцииDataSet.График_работы1)

    End Sub


    Private Sub График_работы1BindingNavigatorSaveItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles График_работы1BindingNavigatorSaveItem.Click
        Me.Validate()
        Me.График_работы1BindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.РадиостанцииDataSet)

    End Sub

    Private Sub ДатаDateTimePicker_ValueChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ДатаDateTimePicker.ValueChanged

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        График_работы1BindingSource.MoveFirst()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        График_работы1BindingSource.MoveLast()
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        График_работы1BindingSource.MovePrevious()
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        График_работы1BindingSource.MoveNext()
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        График_работы1BindingSource.AddNew()
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        График_работы1BindingSource.RemoveCurrent()
    End Sub

    Private Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        Me.Validate()
        Me.График_работы1BindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me.РадиостанцииDataSet)

    End Sub
End Class