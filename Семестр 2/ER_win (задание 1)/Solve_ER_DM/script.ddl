
CREATE TYPE ид
	FROM INTEGER NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'Идентификатор объекта',
@level0type = N'TYPE', @level0name = N'ид'
go



CREATE TYPE логический
	FROM BIT NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'Может принимать лишь два значения: ложь или истина.',
@level0type = N'TYPE', @level0name = N'логический'
go



CREATE TYPE имя
	FROM VARCHAR(20) NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'Короткое название: имя, фамилия и т.п.',
@level0type = N'TYPE', @level0name = N'имя'
go



CREATE TYPE название
	FROM VARCHAR(100) NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'Текст до 100 символов',
@level0type = N'TYPE', @level0name = N'название'
go



CREATE TYPE текст
	FROM VARCHAR(200) NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'Текст до 200 символов',
@level0type = N'TYPE', @level0name = N'текст'
go



CREATE TYPE дата
	FROM DATETIME NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'Дата события',
@level0type = N'TYPE', @level0name = N'дата'
go



CREATE DEFAULT Default_ball
	AS 0
go



CREATE DEFAULT Default_Pravilnost
	AS 0
go



CREATE RULE Rule_ozenka
	AS @col IN (1, 2, 3, 4, 5, 0)
go



CREATE TABLE Вариант_ответа
( 
	ид_Тест_Тест         ид ,
	ид_Вопрос_Вопрос     ид ,
	ид_Вариант_ответа_Вариант_ответа ид ,
	Текст_вопроса        текст ,
	Правильность_варианта логический 
)
go



ALTER TABLE Вариант_ответа
	ADD CONSTRAINT XPKВариант_ответа PRIMARY KEY  CLUSTERED (ид_Тест_Тест ASC,ид_Вопрос_Вопрос ASC,ид_Вариант_ответа_Вариант_ответа ASC)
go



CREATE NONCLUSTERED INDEX XIF1Вариант_ответа ON Вариант_ответа
( 
	ид_Тест_Тест          ASC,
	ид_Вопрос_Вопрос      ASC
)
go



CREATE TABLE Вариант_ответа_студента
( 
	ид_Студент_Студент   ид ,
	ид_Тест_Тест         ид ,
	ид_Вопрос_Вопрос     ид ,
	ид_Вариант_ответа_Вариант_ответа ид ,
	Правильность_варианта логический 
)
go



ALTER TABLE Вариант_ответа_студента
	ADD CONSTRAINT XPKВариант_ответа_студента PRIMARY KEY  CLUSTERED (ид_Студент_Студент ASC,ид_Тест_Тест ASC,ид_Вопрос_Вопрос ASC,ид_Вариант_ответа_Вариант_ответа ASC)
go



CREATE NONCLUSTERED INDEX XIF1Вариант_ответа_студента ON Вариант_ответа_студента
( 
	ид_Студент_Студент    ASC
)
go



CREATE NONCLUSTERED INDEX XIF2Вариант_ответа_студента ON Вариант_ответа_студента
( 
	ид_Вариант_ответа_Вариант_ответа  ASC,
	ид_Тест_Тест          ASC,
	ид_Вопрос_Вопрос      ASC
)
go



CREATE TABLE Вопрос
( 
	ид_Тест_Тест         ид ,
	ид_Вопрос_Вопрос     ид ,
	Текст_вопроса        текст 
)
go



ALTER TABLE Вопрос
	ADD CONSTRAINT XPKВопрос PRIMARY KEY  CLUSTERED (ид_Тест_Тест ASC,ид_Вопрос_Вопрос ASC)
go



CREATE NONCLUSTERED INDEX XIF1Вопрос ON Вопрос
( 
	ид_Тест_Тест          ASC
)
go



CREATE TABLE Студент
( 
	ид_Студент_Студент   ид ,
	Имя_студента         имя ,
	Фамилия_студента     имя ,
	Отчество_студента    имя ,
	Код_группы           имя 
)
go



ALTER TABLE Студент
	ADD CONSTRAINT XPKСтудент PRIMARY KEY  CLUSTERED (ид_Студент_Студент ASC)
go



ALTER TABLE Студент
	ADD CONSTRAINT АльтКлСтудент UNIQUE (Имя_студента  ASC,Фамилия_студента  ASC,Отчество_студента  ASC,Код_группы  ASC)
go



CREATE NONCLUSTERED INDEX XIE1Студент ON Студент
( 
	Код_группы            ASC
)
go



CREATE TABLE Тест
( 
	ид_Тест_Тест         ид ,
	Название_теста       название ,
	Автор_теста          имя ,
	Дата_внесения        дата ,
	Описание_теста       текст 
)
go



ALTER TABLE Тест
	ADD CONSTRAINT XPKТест PRIMARY KEY  CLUSTERED (ид_Тест_Тест ASC)
go



CREATE NONCLUSTERED INDEX ИнвКлСтудент ON Тест
( 
	Автор_теста           ASC
)
go



CREATE TABLE Тест_студента
( 
	ид_Тест_Тест         ид ,
	ид_Студент_Студент   ид ,
	Дата_тестирования    дата ,
	Набранные_баллы      integer  NOT NULL ,
	Оценка_за_тест       integer  NOT NULL 
)
go



ALTER TABLE Тест_студента
	ADD CONSTRAINT XPKТест_студента PRIMARY KEY  CLUSTERED (ид_Тест_Тест ASC,ид_Студент_Студент ASC)
go



CREATE NONCLUSTERED INDEX XIF1Тест_студента ON Тест_студента
( 
	ид_Тест_Тест          ASC
)
go



CREATE NONCLUSTERED INDEX XIF2Тест_студента ON Тест_студента
( 
	ид_Студент_Студент    ASC
)
go



CREATE NONCLUSTERED INDEX ИнвКлСтудент ON Тест_студента
( 
	Оценка_за_тест        ASC
)
go




exec sp_bindefault 'Default_ball', 'Тест_студента.Оценка_за_тест'
go




ALTER TABLE Вариант_ответа
	ADD CONSTRAINT R_3 FOREIGN KEY (ид_Тест_Тест,ид_Вопрос_Вопрос) REFERENCES Вопрос(ид_Тест_Тест,ид_Вопрос_Вопрос)
go




ALTER TABLE Вариант_ответа_студента
	ADD CONSTRAINT выбирает FOREIGN KEY (ид_Студент_Студент) REFERENCES Студент(ид_Студент_Студент)
go




ALTER TABLE Вариант_ответа_студента
	ADD CONSTRAINT выбирается FOREIGN KEY (ид_Тест_Тест,ид_Вопрос_Вопрос,ид_Вариант_ответа_Вариант_ответа) REFERENCES Вариант_ответа(ид_Тест_Тест,ид_Вопрос_Вопрос,ид_Вариант_ответа_Вариант_ответа)
go




ALTER TABLE Вопрос
	ADD CONSTRAINT R_2 FOREIGN KEY (ид_Тест_Тест) REFERENCES Тест(ид_Тест_Тест)
go




exec sp_bindrule 'Rule_ozenka', 'Тест_студента.Оценка_за_тест'
go




ALTER TABLE Тест_студента
	ADD CONSTRAINT сдает FOREIGN KEY (ид_Тест_Тест) REFERENCES Тест(ид_Тест_Тест)
go




ALTER TABLE Тест_студента
	ADD CONSTRAINT сдается FOREIGN KEY (ид_Студент_Студент) REFERENCES Студент(ид_Студент_Студент)
go




CREATE TRIGGER tI_Вариант_ответа ON Вариант_ответа FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on Вариант_ответа */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Вопрос имеет Вариант_ответа on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="000181a8", PARENT_OWNER="", PARENT_TABLE="Вопрос"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа"
    P2C_VERB_PHRASE="имеет", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="ид_Вопрос_Вопрос""ид_Тест_Тест" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Вопрос_Вопрос) OR
    UPDATE(ид_Тест_Тест)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Вопрос
        WHERE
          /* %JoinFKPK(inserted,Вопрос) */
          inserted.ид_Вопрос_Вопрос = Вопрос.ид_Вопрос_Вопрос and
          inserted.ид_Тест_Тест = Вопрос.ид_Тест_Тест
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert Вариант_ответа because Вопрос does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tD_Вариант_ответа ON Вариант_ответа FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Вариант_ответа */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Вариант_ответа выбирается Вариант_ответа_студента on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00018f51", PARENT_OWNER="", PARENT_TABLE="Вариант_ответа"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирается", FK_COLUMNS="ид_Вариант_ответа_Вариант_ответа""ид_Тест_Тест""ид_Вопрос_Вопрос" */
    IF EXISTS (
      SELECT * FROM deleted,Вариант_ответа_студента
      WHERE
        /*  %JoinFKPK(Вариант_ответа_студента,deleted," = "," AND") */
        Вариант_ответа_студента.ид_Вариант_ответа_Вариант_ответа = deleted.ид_Вариант_ответа_Вариант_ответа AND
        Вариант_ответа_студента.ид_Тест_Тест = deleted.ид_Тест_Тест AND
        Вариант_ответа_студента.ид_Вопрос_Вопрос = deleted.ид_Вопрос_Вопрос
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Вариант_ответа because Вариант_ответа_студента exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Вариант_ответа ON Вариант_ответа FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Вариант_ответа */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insид_Вариант_ответа_Вариант_ответа ид, 
           @insид_Тест_Тест ид, 
           @insид_Вопрос_Вопрос ид,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Вариант_ответа выбирается Вариант_ответа_студента on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00034875", PARENT_OWNER="", PARENT_TABLE="Вариант_ответа"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирается", FK_COLUMNS="ид_Вариант_ответа_Вариант_ответа""ид_Тест_Тест""ид_Вопрос_Вопрос" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ид_Вариант_ответа_Вариант_ответа) OR
    UPDATE(ид_Тест_Тест) OR
    UPDATE(ид_Вопрос_Вопрос)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Вариант_ответа_студента
      WHERE
        /*  %JoinFKPK(Вариант_ответа_студента,deleted," = "," AND") */
        Вариант_ответа_студента.ид_Вариант_ответа_Вариант_ответа = deleted.ид_Вариант_ответа_Вариант_ответа AND
        Вариант_ответа_студента.ид_Тест_Тест = deleted.ид_Тест_Тест AND
        Вариант_ответа_студента.ид_Вопрос_Вопрос = deleted.ид_Вопрос_Вопрос
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Вариант_ответа because Вариант_ответа_студента exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Вопрос имеет Вариант_ответа on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Вопрос"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа"
    P2C_VERB_PHRASE="имеет", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="ид_Вопрос_Вопрос""ид_Тест_Тест" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Вопрос_Вопрос) OR
    UPDATE(ид_Тест_Тест)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Вопрос
        WHERE
          /* %JoinFKPK(inserted,Вопрос) */
          inserted.ид_Вопрос_Вопрос = Вопрос.ид_Вопрос_Вопрос and
          inserted.ид_Тест_Тест = Вопрос.ид_Тест_Тест
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Вариант_ответа because Вопрос does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tI_Вариант_ответа_студента ON Вариант_ответа_студента FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on Вариант_ответа_студента */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Студент выбирает Вариант_ответа_студента on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00037565", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирает", FK_COLUMNS="ид_Студент_Студент" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Студент_Студент)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Студент
        WHERE
          /* %JoinFKPK(inserted,Студент) */
          inserted.ид_Студент_Студент = Студент.ид_Студент_Студент
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert Вариант_ответа_студента because Студент does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Вариант_ответа выбирается Вариант_ответа_студента on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Вариант_ответа"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирается", FK_COLUMNS="ид_Вариант_ответа_Вариант_ответа""ид_Тест_Тест""ид_Вопрос_Вопрос" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Вариант_ответа_Вариант_ответа) OR
    UPDATE(ид_Тест_Тест) OR
    UPDATE(ид_Вопрос_Вопрос)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Вариант_ответа
        WHERE
          /* %JoinFKPK(inserted,Вариант_ответа) */
          inserted.ид_Вариант_ответа_Вариант_ответа = Вариант_ответа.ид_Вариант_ответа_Вариант_ответа and
          inserted.ид_Тест_Тест = Вариант_ответа.ид_Тест_Тест and
          inserted.ид_Вопрос_Вопрос = Вариант_ответа.ид_Вопрос_Вопрос
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert Вариант_ответа_студента because Вариант_ответа does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Вариант_ответа_студента ON Вариант_ответа_студента FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Вариант_ответа_студента */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insид_Тест_Тест ид, 
           @insид_Студент_Студент ид, 
           @insид_Вариант_ответа_Вариант_ответа ид, 
           @insид_Вопрос_Вопрос ид,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Студент выбирает Вариант_ответа_студента on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00037ca4", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирает", FK_COLUMNS="ид_Студент_Студент" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Студент_Студент)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Студент
        WHERE
          /* %JoinFKPK(inserted,Студент) */
          inserted.ид_Студент_Студент = Студент.ид_Студент_Студент
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Вариант_ответа_студента because Студент does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Вариант_ответа выбирается Вариант_ответа_студента on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Вариант_ответа"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирается", FK_COLUMNS="ид_Вариант_ответа_Вариант_ответа""ид_Тест_Тест""ид_Вопрос_Вопрос" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Вариант_ответа_Вариант_ответа) OR
    UPDATE(ид_Тест_Тест) OR
    UPDATE(ид_Вопрос_Вопрос)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Вариант_ответа
        WHERE
          /* %JoinFKPK(inserted,Вариант_ответа) */
          inserted.ид_Вариант_ответа_Вариант_ответа = Вариант_ответа.ид_Вариант_ответа_Вариант_ответа and
          inserted.ид_Тест_Тест = Вариант_ответа.ид_Тест_Тест and
          inserted.ид_Вопрос_Вопрос = Вариант_ответа.ид_Вопрос_Вопрос
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Вариант_ответа_студента because Вариант_ответа does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tI_Вопрос ON Вопрос FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on Вопрос */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Тест содержит Вопрос on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00014bae", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Вопрос"
    P2C_VERB_PHRASE="содержит", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ид_Тест_Тест" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Тест_Тест)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Тест
        WHERE
          /* %JoinFKPK(inserted,Тест) */
          inserted.ид_Тест_Тест = Тест.ид_Тест_Тест
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert Вопрос because Тест does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tD_Вопрос ON Вопрос FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Вопрос */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Вопрос имеет Вариант_ответа on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00012496", PARENT_OWNER="", PARENT_TABLE="Вопрос"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа"
    P2C_VERB_PHRASE="имеет", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="ид_Вопрос_Вопрос""ид_Тест_Тест" */
    IF EXISTS (
      SELECT * FROM deleted,Вариант_ответа
      WHERE
        /*  %JoinFKPK(Вариант_ответа,deleted," = "," AND") */
        Вариант_ответа.ид_Вопрос_Вопрос = deleted.ид_Вопрос_Вопрос AND
        Вариант_ответа.ид_Тест_Тест = deleted.ид_Тест_Тест
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Вопрос because Вариант_ответа exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Вопрос ON Вопрос FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Вопрос */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insид_Вопрос_Вопрос ид, 
           @insид_Тест_Тест ид,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Вопрос имеет Вариант_ответа on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00029020", PARENT_OWNER="", PARENT_TABLE="Вопрос"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа"
    P2C_VERB_PHRASE="имеет", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="ид_Вопрос_Вопрос""ид_Тест_Тест" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ид_Вопрос_Вопрос) OR
    UPDATE(ид_Тест_Тест)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Вариант_ответа
      WHERE
        /*  %JoinFKPK(Вариант_ответа,deleted," = "," AND") */
        Вариант_ответа.ид_Вопрос_Вопрос = deleted.ид_Вопрос_Вопрос AND
        Вариант_ответа.ид_Тест_Тест = deleted.ид_Тест_Тест
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Вопрос because Вариант_ответа exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Тест содержит Вопрос on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Вопрос"
    P2C_VERB_PHRASE="содержит", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ид_Тест_Тест" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Тест_Тест)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Тест
        WHERE
          /* %JoinFKPK(inserted,Тест) */
          inserted.ид_Тест_Тест = Тест.ид_Тест_Тест
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Вопрос because Тест does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Студент ON Студент FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Студент */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Студент сдается Тест_студента on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00023d08", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдается", FK_COLUMNS="ид_Студент_Студент" */
    IF EXISTS (
      SELECT * FROM deleted,Тест_студента
      WHERE
        /*  %JoinFKPK(Тест_студента,deleted," = "," AND") */
        Тест_студента.ид_Студент_Студент = deleted.ид_Студент_Студент
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Студент because Тест_студента exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Студент выбирает Вариант_ответа_студента on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирает", FK_COLUMNS="ид_Студент_Студент" */
    IF EXISTS (
      SELECT * FROM deleted,Вариант_ответа_студента
      WHERE
        /*  %JoinFKPK(Вариант_ответа_студента,deleted," = "," AND") */
        Вариант_ответа_студента.ид_Студент_Студент = deleted.ид_Студент_Студент
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Студент because Вариант_ответа_студента exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Студент ON Студент FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Студент */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insид_Студент_Студент ид,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Студент сдается Тест_студента on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000271b4", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдается", FK_COLUMNS="ид_Студент_Студент" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ид_Студент_Студент)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Тест_студента
      WHERE
        /*  %JoinFKPK(Тест_студента,deleted," = "," AND") */
        Тест_студента.ид_Студент_Студент = deleted.ид_Студент_Студент
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Студент because Тест_студента exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Студент выбирает Вариант_ответа_студента on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Вариант_ответа_студента"
    P2C_VERB_PHRASE="выбирает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="выбирает", FK_COLUMNS="ид_Студент_Студент" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ид_Студент_Студент)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Вариант_ответа_студента
      WHERE
        /*  %JoinFKPK(Вариант_ответа_студента,deleted," = "," AND") */
        Вариант_ответа_студента.ид_Студент_Студент = deleted.ид_Студент_Студент
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Студент because Вариант_ответа_студента exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Тест ON Тест FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Тест */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Тест содержит Вопрос on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001ea5d", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Вопрос"
    P2C_VERB_PHRASE="содержит", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ид_Тест_Тест" */
    IF EXISTS (
      SELECT * FROM deleted,Вопрос
      WHERE
        /*  %JoinFKPK(Вопрос,deleted," = "," AND") */
        Вопрос.ид_Тест_Тест = deleted.ид_Тест_Тест
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Тест because Вопрос exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Тест сдает Тест_студента on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдает", FK_COLUMNS="ид_Тест_Тест" */
    IF EXISTS (
      SELECT * FROM deleted,Тест_студента
      WHERE
        /*  %JoinFKPK(Тест_студента,deleted," = "," AND") */
        Тест_студента.ид_Тест_Тест = deleted.ид_Тест_Тест
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Тест because Тест_студента exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Тест ON Тест FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Тест */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insид_Тест_Тест ид,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Тест содержит Вопрос on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000224ea", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Вопрос"
    P2C_VERB_PHRASE="содержит", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="ид_Тест_Тест" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ид_Тест_Тест)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Вопрос
      WHERE
        /*  %JoinFKPK(Вопрос,deleted," = "," AND") */
        Вопрос.ид_Тест_Тест = deleted.ид_Тест_Тест
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Тест because Вопрос exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Тест сдает Тест_студента on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдает", FK_COLUMNS="ид_Тест_Тест" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ид_Тест_Тест)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Тест_студента
      WHERE
        /*  %JoinFKPK(Тест_студента,deleted," = "," AND") */
        Тест_студента.ид_Тест_Тест = deleted.ид_Тест_Тест
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Тест because Тест_студента exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tI_Тест_студента ON Тест_студента FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on Тест_студента */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Тест сдает Тест_студента on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="0002a200", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдает", FK_COLUMNS="ид_Тест_Тест" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Тест_Тест)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Тест
        WHERE
          /* %JoinFKPK(inserted,Тест) */
          inserted.ид_Тест_Тест = Тест.ид_Тест_Тест
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert Тест_студента because Тест does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Студент сдается Тест_студента on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдается", FK_COLUMNS="ид_Студент_Студент" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Студент_Студент)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Студент
        WHERE
          /* %JoinFKPK(inserted,Студент) */
          inserted.ид_Студент_Студент = Студент.ид_Студент_Студент
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert Тест_студента because Студент does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Тест_студента ON Тест_студента FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Тест_студента */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insид_Тест_Тест ид, 
           @insид_Студент_Студент ид,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Тест сдает Тест_студента on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0002bf02", PARENT_OWNER="", PARENT_TABLE="Тест"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдает", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдает", FK_COLUMNS="ид_Тест_Тест" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Тест_Тест)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Тест
        WHERE
          /* %JoinFKPK(inserted,Тест) */
          inserted.ид_Тест_Тест = Тест.ид_Тест_Тест
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Тест_студента because Тест does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Студент сдается Тест_студента on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Студент"
    CHILD_OWNER="", CHILD_TABLE="Тест_студента"
    P2C_VERB_PHRASE="сдается", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="сдается", FK_COLUMNS="ид_Студент_Студент" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ид_Студент_Студент)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Студент
        WHERE
          /* %JoinFKPK(inserted,Студент) */
          inserted.ид_Студент_Студент = Студент.ид_Студент_Студент
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Тест_студента because Студент does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


