<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form2
    Inherits System.Windows.Forms.Form

    'Форма переопределяет dispose для очистки списка компонентов.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Является обязательной для конструктора форм Windows Forms
    Private components As System.ComponentModel.IContainer

    'Примечание: следующая процедура является обязательной для конструктора форм Windows Forms
    'Для ее изменения используйте конструктор форм Windows Form.  
    'Не изменяйте ее в редакторе исходного кода.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Dim Код_графикаLabel1 As System.Windows.Forms.Label
        Dim Код_сотрудникаLabel1 As System.Windows.Forms.Label
        Dim ДатаLabel1 As System.Windows.Forms.Label
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form2))
        Me.Код_графикаTextBox1 = New System.Windows.Forms.TextBox
        Me.Код_сотрудникаTextBox1 = New System.Windows.Forms.TextBox
        Me.ДатаDateTimePicker = New System.Windows.Forms.DateTimePicker
        Me.График_работы1BindingNavigator = New System.Windows.Forms.BindingNavigator(Me.components)
        Me.BindingNavigatorAddNewItem = New System.Windows.Forms.ToolStripButton
        Me.BindingNavigatorCountItem = New System.Windows.Forms.ToolStripLabel
        Me.BindingNavigatorDeleteItem = New System.Windows.Forms.ToolStripButton
        Me.BindingNavigatorMoveFirstItem = New System.Windows.Forms.ToolStripButton
        Me.BindingNavigatorMovePreviousItem = New System.Windows.Forms.ToolStripButton
        Me.BindingNavigatorSeparator = New System.Windows.Forms.ToolStripSeparator
        Me.BindingNavigatorPositionItem = New System.Windows.Forms.ToolStripTextBox
        Me.BindingNavigatorSeparator1 = New System.Windows.Forms.ToolStripSeparator
        Me.BindingNavigatorMoveNextItem = New System.Windows.Forms.ToolStripButton
        Me.BindingNavigatorMoveLastItem = New System.Windows.Forms.ToolStripButton
        Me.BindingNavigatorSeparator2 = New System.Windows.Forms.ToolStripSeparator
        Me.График_работы1BindingNavigatorSaveItem = New System.Windows.Forms.ToolStripButton
        Me.Button7 = New System.Windows.Forms.Button
        Me.Button6 = New System.Windows.Forms.Button
        Me.Button5 = New System.Windows.Forms.Button
        Me.Button4 = New System.Windows.Forms.Button
        Me.Button3 = New System.Windows.Forms.Button
        Me.Button2 = New System.Windows.Forms.Button
        Me.Button1 = New System.Windows.Forms.Button
        Me.Label1 = New System.Windows.Forms.Label
        Me.РадиостанцииDataSet = New Karpukhina_project.РадиостанцииDataSet
        Me.График_работы1BindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.График_работы1TableAdapter = New Karpukhina_project.РадиостанцииDataSetTableAdapters.График_работы1TableAdapter
        Me.TableAdapterManager = New Karpukhina_project.РадиостанцииDataSetTableAdapters.TableAdapterManager
        Me.График_работы1BindingSource1 = New System.Windows.Forms.BindingSource(Me.components)
        Me.График_работы1BindingSource2 = New System.Windows.Forms.BindingSource(Me.components)
        Код_графикаLabel1 = New System.Windows.Forms.Label
        Код_сотрудникаLabel1 = New System.Windows.Forms.Label
        ДатаLabel1 = New System.Windows.Forms.Label
        CType(Me.График_работы1BindingNavigator, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.График_работы1BindingNavigator.SuspendLayout()
        CType(Me.РадиостанцииDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.График_работы1BindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.График_работы1BindingSource1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.График_работы1BindingSource2, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'Код_графикаLabel1
        '
        Код_графикаLabel1.AutoSize = True
        Код_графикаLabel1.Location = New System.Drawing.Point(31, 52)
        Код_графикаLabel1.Name = "Код_графикаLabel1"
        Код_графикаLabel1.Size = New System.Drawing.Size(75, 13)
        Код_графикаLabel1.TabIndex = 44
        Код_графикаLabel1.Text = "Код графика:"
        '
        'Код_сотрудникаLabel1
        '
        Код_сотрудникаLabel1.AutoSize = True
        Код_сотрудникаLabel1.Location = New System.Drawing.Point(31, 78)
        Код_сотрудникаLabel1.Name = "Код_сотрудникаLabel1"
        Код_сотрудникаLabel1.Size = New System.Drawing.Size(90, 13)
        Код_сотрудникаLabel1.TabIndex = 47
        Код_сотрудникаLabel1.Text = "Код сотрудника:"
        '
        'ДатаLabel1
        '
        ДатаLabel1.AutoSize = True
        ДатаLabel1.Location = New System.Drawing.Point(31, 105)
        ДатаLabel1.Name = "ДатаLabel1"
        ДатаLabel1.Size = New System.Drawing.Size(36, 13)
        ДатаLabel1.TabIndex = 49
        ДатаLabel1.Text = "Дата:"
        '
        'Код_графикаTextBox1
        '
        Me.Код_графикаTextBox1.Location = New System.Drawing.Point(127, 49)
        Me.Код_графикаTextBox1.Name = "Код_графикаTextBox1"
        Me.Код_графикаTextBox1.Size = New System.Drawing.Size(200, 20)
        Me.Код_графикаTextBox1.TabIndex = 46
        '
        'Код_сотрудникаTextBox1
        '
        Me.Код_сотрудникаTextBox1.Location = New System.Drawing.Point(127, 75)
        Me.Код_сотрудникаTextBox1.Name = "Код_сотрудникаTextBox1"
        Me.Код_сотрудникаTextBox1.Size = New System.Drawing.Size(200, 20)
        Me.Код_сотрудникаTextBox1.TabIndex = 48
        '
        'ДатаDateTimePicker
        '
        Me.ДатаDateTimePicker.Location = New System.Drawing.Point(127, 101)
        Me.ДатаDateTimePicker.Name = "ДатаDateTimePicker"
        Me.ДатаDateTimePicker.Size = New System.Drawing.Size(200, 20)
        Me.ДатаDateTimePicker.TabIndex = 50
        '
        'График_работы1BindingNavigator
        '
        Me.График_работы1BindingNavigator.AddNewItem = Me.BindingNavigatorAddNewItem
        Me.График_работы1BindingNavigator.CountItem = Me.BindingNavigatorCountItem
        Me.График_работы1BindingNavigator.DeleteItem = Me.BindingNavigatorDeleteItem
        Me.График_работы1BindingNavigator.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.BindingNavigatorMoveFirstItem, Me.BindingNavigatorMovePreviousItem, Me.BindingNavigatorSeparator, Me.BindingNavigatorPositionItem, Me.BindingNavigatorCountItem, Me.BindingNavigatorSeparator1, Me.BindingNavigatorMoveNextItem, Me.BindingNavigatorMoveLastItem, Me.BindingNavigatorSeparator2, Me.BindingNavigatorAddNewItem, Me.BindingNavigatorDeleteItem, Me.График_работы1BindingNavigatorSaveItem})
        Me.График_работы1BindingNavigator.Location = New System.Drawing.Point(0, 0)
        Me.График_работы1BindingNavigator.MoveFirstItem = Me.BindingNavigatorMoveFirstItem
        Me.График_работы1BindingNavigator.MoveLastItem = Me.BindingNavigatorMoveLastItem
        Me.График_работы1BindingNavigator.MoveNextItem = Me.BindingNavigatorMoveNextItem
        Me.График_работы1BindingNavigator.MovePreviousItem = Me.BindingNavigatorMovePreviousItem
        Me.График_работы1BindingNavigator.Name = "График_работы1BindingNavigator"
        Me.График_работы1BindingNavigator.PositionItem = Me.BindingNavigatorPositionItem
        Me.График_работы1BindingNavigator.Size = New System.Drawing.Size(1267, 25)
        Me.График_работы1BindingNavigator.TabIndex = 45
        Me.График_работы1BindingNavigator.Text = "BindingNavigator1"
        '
        'BindingNavigatorAddNewItem
        '
        Me.BindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorAddNewItem.Image = CType(resources.GetObject("BindingNavigatorAddNewItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorAddNewItem.Name = "BindingNavigatorAddNewItem"
        Me.BindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorAddNewItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorAddNewItem.Text = "Добавить"
        '
        'BindingNavigatorCountItem
        '
        Me.BindingNavigatorCountItem.Name = "BindingNavigatorCountItem"
        Me.BindingNavigatorCountItem.Size = New System.Drawing.Size(45, 22)
        Me.BindingNavigatorCountItem.Text = "для {0}"
        Me.BindingNavigatorCountItem.ToolTipText = "Общее число элементов"
        '
        'BindingNavigatorDeleteItem
        '
        Me.BindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorDeleteItem.Image = CType(resources.GetObject("BindingNavigatorDeleteItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorDeleteItem.Name = "BindingNavigatorDeleteItem"
        Me.BindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorDeleteItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorDeleteItem.Text = "Удалить"
        '
        'BindingNavigatorMoveFirstItem
        '
        Me.BindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMoveFirstItem.Image = CType(resources.GetObject("BindingNavigatorMoveFirstItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMoveFirstItem.Name = "BindingNavigatorMoveFirstItem"
        Me.BindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMoveFirstItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorMoveFirstItem.Text = "Переместить в начало"
        '
        'BindingNavigatorMovePreviousItem
        '
        Me.BindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMovePreviousItem.Image = CType(resources.GetObject("BindingNavigatorMovePreviousItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMovePreviousItem.Name = "BindingNavigatorMovePreviousItem"
        Me.BindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMovePreviousItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorMovePreviousItem.Text = "Переместить назад"
        '
        'BindingNavigatorSeparator
        '
        Me.BindingNavigatorSeparator.Name = "BindingNavigatorSeparator"
        Me.BindingNavigatorSeparator.Size = New System.Drawing.Size(6, 25)
        '
        'BindingNavigatorPositionItem
        '
        Me.BindingNavigatorPositionItem.AccessibleName = "Положение"
        Me.BindingNavigatorPositionItem.AutoSize = False
        Me.BindingNavigatorPositionItem.Name = "BindingNavigatorPositionItem"
        Me.BindingNavigatorPositionItem.Size = New System.Drawing.Size(50, 21)
        Me.BindingNavigatorPositionItem.Text = "0"
        Me.BindingNavigatorPositionItem.ToolTipText = "Текущее положение"
        '
        'BindingNavigatorSeparator1
        '
        Me.BindingNavigatorSeparator1.Name = "BindingNavigatorSeparator1"
        Me.BindingNavigatorSeparator1.Size = New System.Drawing.Size(6, 25)
        '
        'BindingNavigatorMoveNextItem
        '
        Me.BindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMoveNextItem.Image = CType(resources.GetObject("BindingNavigatorMoveNextItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMoveNextItem.Name = "BindingNavigatorMoveNextItem"
        Me.BindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMoveNextItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorMoveNextItem.Text = "Переместить вперед"
        '
        'BindingNavigatorMoveLastItem
        '
        Me.BindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.BindingNavigatorMoveLastItem.Image = CType(resources.GetObject("BindingNavigatorMoveLastItem.Image"), System.Drawing.Image)
        Me.BindingNavigatorMoveLastItem.Name = "BindingNavigatorMoveLastItem"
        Me.BindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = True
        Me.BindingNavigatorMoveLastItem.Size = New System.Drawing.Size(23, 22)
        Me.BindingNavigatorMoveLastItem.Text = "Переместить в конец"
        '
        'BindingNavigatorSeparator2
        '
        Me.BindingNavigatorSeparator2.Name = "BindingNavigatorSeparator2"
        Me.BindingNavigatorSeparator2.Size = New System.Drawing.Size(6, 25)
        '
        'График_работы1BindingNavigatorSaveItem
        '
        Me.График_работы1BindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image
        Me.График_работы1BindingNavigatorSaveItem.Image = CType(resources.GetObject("График_работы1BindingNavigatorSaveItem.Image"), System.Drawing.Image)
        Me.График_работы1BindingNavigatorSaveItem.Name = "График_работы1BindingNavigatorSaveItem"
        Me.График_работы1BindingNavigatorSaveItem.Size = New System.Drawing.Size(23, 22)
        Me.График_работы1BindingNavigatorSaveItem.Text = "Сохранить данные"
        '
        'Button7
        '
        Me.Button7.Location = New System.Drawing.Point(126, 251)
        Me.Button7.Name = "Button7"
        Me.Button7.Size = New System.Drawing.Size(75, 23)
        Me.Button7.TabIndex = 43
        Me.Button7.Text = "Удалить"
        Me.Button7.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(126, 222)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(75, 23)
        Me.Button6.TabIndex = 42
        Me.Button6.Text = "Добавить"
        Me.Button6.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(126, 193)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(75, 23)
        Me.Button5.TabIndex = 41
        Me.Button5.Text = "Сохранить"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(31, 251)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(89, 23)
        Me.Button4.TabIndex = 40
        Me.Button4.Text = "Следующая"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(31, 222)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(89, 23)
        Me.Button3.TabIndex = 39
        Me.Button3.Text = "Предыдущая"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(31, 193)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 38
        Me.Button2.Text = "Последняя"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button1
        '
        Me.Button1.Location = New System.Drawing.Point(31, 164)
        Me.Button1.Name = "Button1"
        Me.Button1.Size = New System.Drawing.Size(75, 23)
        Me.Button1.TabIndex = 37
        Me.Button1.Text = "Первая"
        Me.Button1.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(43, 8)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(134, 13)
        Me.Label1.TabIndex = 36
        Me.Label1.Text = "Таблица График_работы"
        '
        'РадиостанцииDataSet
        '
        Me.РадиостанцииDataSet.DataSetName = "РадиостанцииDataSet"
        Me.РадиостанцииDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'График_работы1BindingSource
        '
        Me.График_работы1BindingSource.DataMember = "График_работы1"
        Me.График_работы1BindingSource.DataSource = Me.РадиостанцииDataSet
        '
        'График_работы1TableAdapter
        '
        Me.График_работы1TableAdapter.ClearBeforeFill = True
        '
        'TableAdapterManager
        '
        Me.TableAdapterManager.BackupDataSetBeforeUpdate = False
        Me.TableAdapterManager.UpdateOrder = Karpukhina_project.РадиостанцииDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete
        Me.TableAdapterManager.График_работы1TableAdapter = Me.График_работы1TableAdapter
        Me.TableAdapterManager.Должности1TableAdapter = Nothing
        Me.TableAdapterManager.Жанры1TableAdapter = Nothing
        Me.TableAdapterManager.Записи1TableAdapter = Nothing
        Me.TableAdapterManager.Исполнители1TableAdapter = Nothing
        Me.TableAdapterManager.Сотрудники1TableAdapter = Nothing
        '
        'График_работы1BindingSource1
        '
        Me.График_работы1BindingSource1.DataMember = "График_работы1"
        Me.График_работы1BindingSource1.DataSource = Me.РадиостанцииDataSet
        '
        'График_работы1BindingSource2
        '
        Me.График_работы1BindingSource2.DataMember = "График_работы1"
        Me.График_работы1BindingSource2.DataSource = Me.РадиостанцииDataSet
        '
        'Form2
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1267, 490)
        Me.Controls.Add(Код_графикаLabel1)
        Me.Controls.Add(Me.Код_графикаTextBox1)
        Me.Controls.Add(Код_сотрудникаLabel1)
        Me.Controls.Add(Me.Код_сотрудникаTextBox1)
        Me.Controls.Add(ДатаLabel1)
        Me.Controls.Add(Me.ДатаDateTimePicker)
        Me.Controls.Add(Me.График_работы1BindingNavigator)
        Me.Controls.Add(Me.Button7)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Button1)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Form2"
        Me.Text = "Ленточная форма"
        CType(Me.График_работы1BindingNavigator, System.ComponentModel.ISupportInitialize).EndInit()
        Me.График_работы1BindingNavigator.ResumeLayout(False)
        Me.График_работы1BindingNavigator.PerformLayout()
        CType(Me.РадиостанцииDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.График_работы1BindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.График_работы1BindingSource1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.График_работы1BindingSource2, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents Код_графикаTextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents Код_сотрудникаTextBox1 As System.Windows.Forms.TextBox
    Friend WithEvents ДатаDateTimePicker As System.Windows.Forms.DateTimePicker
    Friend WithEvents График_работы1BindingNavigator As System.Windows.Forms.BindingNavigator
    Friend WithEvents BindingNavigatorAddNewItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorCountItem As System.Windows.Forms.ToolStripLabel
    Friend WithEvents BindingNavigatorDeleteItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorMoveFirstItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorMovePreviousItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorSeparator As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents BindingNavigatorPositionItem As System.Windows.Forms.ToolStripTextBox
    Friend WithEvents BindingNavigatorSeparator1 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents BindingNavigatorMoveNextItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorMoveLastItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents BindingNavigatorSeparator2 As System.Windows.Forms.ToolStripSeparator
    Friend WithEvents График_работы1BindingNavigatorSaveItem As System.Windows.Forms.ToolStripButton
    Friend WithEvents Button7 As System.Windows.Forms.Button
    Friend WithEvents Button6 As System.Windows.Forms.Button
    Friend WithEvents Button5 As System.Windows.Forms.Button
    Friend WithEvents Button4 As System.Windows.Forms.Button
    Friend WithEvents Button3 As System.Windows.Forms.Button
    Friend WithEvents Button2 As System.Windows.Forms.Button
    Friend WithEvents Button1 As System.Windows.Forms.Button
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents РадиостанцииDataSet As Karpukhina_project.РадиостанцииDataSet
    Friend WithEvents График_работы1BindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents График_работы1TableAdapter As Karpukhina_project.РадиостанцииDataSetTableAdapters.График_работы1TableAdapter
    Friend WithEvents TableAdapterManager As Karpukhina_project.РадиостанцииDataSetTableAdapters.TableAdapterManager
    Friend WithEvents График_работы1BindingSource1 As System.Windows.Forms.BindingSource
    Friend WithEvents График_работы1BindingSource2 As System.Windows.Forms.BindingSource
End Class
