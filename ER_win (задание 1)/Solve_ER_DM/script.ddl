
CREATE TYPE ��
	FROM INTEGER NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'������������� �������',
@level0type = N'TYPE', @level0name = N'��'
go



CREATE TYPE ����������
	FROM BIT NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'����� ��������� ���� ��� ��������: ���� ��� ������.',
@level0type = N'TYPE', @level0name = N'����������'
go



CREATE TYPE ���
	FROM VARCHAR(20) NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'�������� ��������: ���, ������� � �.�.',
@level0type = N'TYPE', @level0name = N'���'
go



CREATE TYPE ��������
	FROM VARCHAR(100) NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'����� �� 100 ��������',
@level0type = N'TYPE', @level0name = N'��������'
go



CREATE TYPE �����
	FROM VARCHAR(200) NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'����� �� 200 ��������',
@level0type = N'TYPE', @level0name = N'�����'
go



CREATE TYPE ����
	FROM DATETIME NOT NULL
go




EXEC sp_addextendedproperty
@name = N'MS_Description', @value = N'���� �������',
@level0type = N'TYPE', @level0name = N'����'
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



CREATE TABLE �������_������
( 
	��_����_����         �� ,
	��_������_������     �� ,
	��_�������_������_�������_������ �� ,
	�����_�������        ����� ,
	������������_�������� ���������� 
)
go



ALTER TABLE �������_������
	ADD CONSTRAINT XPK�������_������ PRIMARY KEY  CLUSTERED (��_����_���� ASC,��_������_������ ASC,��_�������_������_�������_������ ASC)
go



CREATE NONCLUSTERED INDEX XIF1�������_������ ON �������_������
( 
	��_����_����          ASC,
	��_������_������      ASC
)
go



CREATE TABLE �������_������_��������
( 
	��_�������_�������   �� ,
	��_����_����         �� ,
	��_������_������     �� ,
	��_�������_������_�������_������ �� ,
	������������_�������� ���������� 
)
go



ALTER TABLE �������_������_��������
	ADD CONSTRAINT XPK�������_������_�������� PRIMARY KEY  CLUSTERED (��_�������_������� ASC,��_����_���� ASC,��_������_������ ASC,��_�������_������_�������_������ ASC)
go



CREATE NONCLUSTERED INDEX XIF1�������_������_�������� ON �������_������_��������
( 
	��_�������_�������    ASC
)
go



CREATE NONCLUSTERED INDEX XIF2�������_������_�������� ON �������_������_��������
( 
	��_�������_������_�������_������  ASC,
	��_����_����          ASC,
	��_������_������      ASC
)
go



CREATE TABLE ������
( 
	��_����_����         �� ,
	��_������_������     �� ,
	�����_�������        ����� 
)
go



ALTER TABLE ������
	ADD CONSTRAINT XPK������ PRIMARY KEY  CLUSTERED (��_����_���� ASC,��_������_������ ASC)
go



CREATE NONCLUSTERED INDEX XIF1������ ON ������
( 
	��_����_����          ASC
)
go



CREATE TABLE �������
( 
	��_�������_�������   �� ,
	���_��������         ��� ,
	�������_��������     ��� ,
	��������_��������    ��� ,
	���_������           ��� 
)
go



ALTER TABLE �������
	ADD CONSTRAINT XPK������� PRIMARY KEY  CLUSTERED (��_�������_������� ASC)
go



ALTER TABLE �������
	ADD CONSTRAINT ������������� UNIQUE (���_��������  ASC,�������_��������  ASC,��������_��������  ASC,���_������  ASC)
go



CREATE NONCLUSTERED INDEX XIE1������� ON �������
( 
	���_������            ASC
)
go



CREATE TABLE ����
( 
	��_����_����         �� ,
	��������_�����       �������� ,
	�����_�����          ��� ,
	����_��������        ���� ,
	��������_�����       ����� 
)
go



ALTER TABLE ����
	ADD CONSTRAINT XPK���� PRIMARY KEY  CLUSTERED (��_����_���� ASC)
go



CREATE NONCLUSTERED INDEX ������������ ON ����
( 
	�����_�����           ASC
)
go



CREATE TABLE ����_��������
( 
	��_����_����         �� ,
	��_�������_�������   �� ,
	����_������������    ���� ,
	���������_�����      integer  NOT NULL ,
	������_��_����       integer  NOT NULL 
)
go



ALTER TABLE ����_��������
	ADD CONSTRAINT XPK����_�������� PRIMARY KEY  CLUSTERED (��_����_���� ASC,��_�������_������� ASC)
go



CREATE NONCLUSTERED INDEX XIF1����_�������� ON ����_��������
( 
	��_����_����          ASC
)
go



CREATE NONCLUSTERED INDEX XIF2����_�������� ON ����_��������
( 
	��_�������_�������    ASC
)
go



CREATE NONCLUSTERED INDEX ������������ ON ����_��������
( 
	������_��_����        ASC
)
go




exec sp_bindefault 'Default_ball', '����_��������.������_��_����'
go




ALTER TABLE �������_������
	ADD CONSTRAINT R_3 FOREIGN KEY (��_����_����,��_������_������) REFERENCES ������(��_����_����,��_������_������)
go




ALTER TABLE �������_������_��������
	ADD CONSTRAINT �������� FOREIGN KEY (��_�������_�������) REFERENCES �������(��_�������_�������)
go




ALTER TABLE �������_������_��������
	ADD CONSTRAINT ���������� FOREIGN KEY (��_����_����,��_������_������,��_�������_������_�������_������) REFERENCES �������_������(��_����_����,��_������_������,��_�������_������_�������_������)
go




ALTER TABLE ������
	ADD CONSTRAINT R_2 FOREIGN KEY (��_����_����) REFERENCES ����(��_����_����)
go




exec sp_bindrule 'Rule_ozenka', '����_��������.������_��_����'
go




ALTER TABLE ����_��������
	ADD CONSTRAINT ����� FOREIGN KEY (��_����_����) REFERENCES ����(��_����_����)
go




ALTER TABLE ����_��������
	ADD CONSTRAINT ������� FOREIGN KEY (��_�������_�������) REFERENCES �������(��_�������_�������)
go




CREATE TRIGGER tI_�������_������ ON �������_������ FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on �������_������ */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ������ ����� �������_������ on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="000181a8", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�������_������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="��_������_������""��_����_����" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_������_������) OR
    UPDATE(��_����_����)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,������
        WHERE
          /* %JoinFKPK(inserted,������) */
          inserted.��_������_������ = ������.��_������_������ and
          inserted.��_����_���� = ������.��_����_����
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert �������_������ because ������ does not exist.'
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


CREATE TRIGGER tD_�������_������ ON �������_������ FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on �������_������ */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* �������_������ ���������� �������_������_�������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00018f51", PARENT_OWNER="", PARENT_TABLE="�������_������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="����������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����������", FK_COLUMNS="��_�������_������_�������_������""��_����_����""��_������_������" */
    IF EXISTS (
      SELECT * FROM deleted,�������_������_��������
      WHERE
        /*  %JoinFKPK(�������_������_��������,deleted," = "," AND") */
        �������_������_��������.��_�������_������_�������_������ = deleted.��_�������_������_�������_������ AND
        �������_������_��������.��_����_���� = deleted.��_����_���� AND
        �������_������_��������.��_������_������ = deleted.��_������_������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete �������_������ because �������_������_�������� exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_�������_������ ON �������_������ FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on �������_������ */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins��_�������_������_�������_������ ��, 
           @ins��_����_���� ��, 
           @ins��_������_������ ��,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* �������_������ ���������� �������_������_�������� on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00034875", PARENT_OWNER="", PARENT_TABLE="�������_������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="����������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����������", FK_COLUMNS="��_�������_������_�������_������""��_����_����""��_������_������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(��_�������_������_�������_������) OR
    UPDATE(��_����_����) OR
    UPDATE(��_������_������)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�������_������_��������
      WHERE
        /*  %JoinFKPK(�������_������_��������,deleted," = "," AND") */
        �������_������_��������.��_�������_������_�������_������ = deleted.��_�������_������_�������_������ AND
        �������_������_��������.��_����_���� = deleted.��_����_���� AND
        �������_������_��������.��_������_������ = deleted.��_������_������
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update �������_������ because �������_������_�������� exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ������ ����� �������_������ on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�������_������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="��_������_������""��_����_����" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_������_������) OR
    UPDATE(��_����_����)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,������
        WHERE
          /* %JoinFKPK(inserted,������) */
          inserted.��_������_������ = ������.��_������_������ and
          inserted.��_����_���� = ������.��_����_����
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �������_������ because ������ does not exist.'
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




CREATE TRIGGER tI_�������_������_�������� ON �������_������_�������� FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on �������_������_�������� */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ������� �������� �������_������_�������� on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00037565", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="��_�������_�������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_�������_�������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�������
        WHERE
          /* %JoinFKPK(inserted,�������) */
          inserted.��_�������_������� = �������.��_�������_�������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert �������_������_�������� because ������� does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* �������_������ ���������� �������_������_�������� on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�������_������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="����������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����������", FK_COLUMNS="��_�������_������_�������_������""��_����_����""��_������_������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_�������_������_�������_������) OR
    UPDATE(��_����_����) OR
    UPDATE(��_������_������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�������_������
        WHERE
          /* %JoinFKPK(inserted,�������_������) */
          inserted.��_�������_������_�������_������ = �������_������.��_�������_������_�������_������ and
          inserted.��_����_���� = �������_������.��_����_���� and
          inserted.��_������_������ = �������_������.��_������_������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert �������_������_�������� because �������_������ does not exist.'
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


CREATE TRIGGER tU_�������_������_�������� ON �������_������_�������� FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on �������_������_�������� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins��_����_���� ��, 
           @ins��_�������_������� ��, 
           @ins��_�������_������_�������_������ ��, 
           @ins��_������_������ ��,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ������� �������� �������_������_�������� on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00037ca4", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="��_�������_�������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_�������_�������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�������
        WHERE
          /* %JoinFKPK(inserted,�������) */
          inserted.��_�������_������� = �������.��_�������_�������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �������_������_�������� because ������� does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* �������_������ ���������� �������_������_�������� on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�������_������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="����������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="����������", FK_COLUMNS="��_�������_������_�������_������""��_����_����""��_������_������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_�������_������_�������_������) OR
    UPDATE(��_����_����) OR
    UPDATE(��_������_������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�������_������
        WHERE
          /* %JoinFKPK(inserted,�������_������) */
          inserted.��_�������_������_�������_������ = �������_������.��_�������_������_�������_������ and
          inserted.��_����_���� = �������_������.��_����_���� and
          inserted.��_������_������ = �������_������.��_������_������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update �������_������_�������� because �������_������ does not exist.'
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




CREATE TRIGGER tI_������ ON ������ FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on ������ */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���� �������� ������ on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00014bae", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="��_����_����" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_����_����)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.��_����_���� = ����.��_����_����
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert ������ because ���� does not exist.'
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


CREATE TRIGGER tD_������ ON ������ FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ������ */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ������ ����� �������_������ on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00012496", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�������_������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="��_������_������""��_����_����" */
    IF EXISTS (
      SELECT * FROM deleted,�������_������
      WHERE
        /*  %JoinFKPK(�������_������,deleted," = "," AND") */
        �������_������.��_������_������ = deleted.��_������_������ AND
        �������_������.��_����_���� = deleted.��_����_����
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ������ because �������_������ exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_������ ON ������ FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ������ */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins��_������_������ ��, 
           @ins��_����_���� ��,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ������ ����� �������_������ on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00029020", PARENT_OWNER="", PARENT_TABLE="������"
    CHILD_OWNER="", CHILD_TABLE="�������_������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="��_������_������""��_����_����" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(��_������_������) OR
    UPDATE(��_����_����)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�������_������
      WHERE
        /*  %JoinFKPK(�������_������,deleted," = "," AND") */
        �������_������.��_������_������ = deleted.��_������_������ AND
        �������_������.��_����_���� = deleted.��_����_����
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ������ because �������_������ exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ���� �������� ������ on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="��_����_����" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_����_����)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.��_����_���� = ����.��_����_����
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ������ because ���� does not exist.'
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




CREATE TRIGGER tD_������� ON ������� FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ������� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ������� ������� ����_�������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00023d08", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�������", FK_COLUMNS="��_�������_�������" */
    IF EXISTS (
      SELECT * FROM deleted,����_��������
      WHERE
        /*  %JoinFKPK(����_��������,deleted," = "," AND") */
        ����_��������.��_�������_������� = deleted.��_�������_�������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ������� because ����_�������� exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* ������� �������� �������_������_�������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="��_�������_�������" */
    IF EXISTS (
      SELECT * FROM deleted,�������_������_��������
      WHERE
        /*  %JoinFKPK(�������_������_��������,deleted," = "," AND") */
        �������_������_��������.��_�������_������� = deleted.��_�������_�������
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ������� because �������_������_�������� exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_������� ON ������� FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ������� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins��_�������_������� ��,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ������� ������� ����_�������� on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000271b4", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�������", FK_COLUMNS="��_�������_�������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(��_�������_�������)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,����_��������
      WHERE
        /*  %JoinFKPK(����_��������,deleted," = "," AND") */
        ����_��������.��_�������_������� = deleted.��_�������_�������
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ������� because ����_�������� exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ������� �������� �������_������_�������� on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="�������_������_��������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="��������", FK_COLUMNS="��_�������_�������" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(��_�������_�������)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,�������_������_��������
      WHERE
        /*  %JoinFKPK(�������_������_��������,deleted," = "," AND") */
        �������_������_��������.��_�������_������� = deleted.��_�������_�������
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ������� because �������_������_�������� exists.'
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




CREATE TRIGGER tD_���� ON ���� FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on ���� */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* ���� �������� ������ on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001ea5d", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="��_����_����" */
    IF EXISTS (
      SELECT * FROM deleted,������
      WHERE
        /*  %JoinFKPK(������,deleted," = "," AND") */
        ������.��_����_���� = deleted.��_����_����
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because ������ exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* ���� ����� ����_�������� on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�����", FK_COLUMNS="��_����_����" */
    IF EXISTS (
      SELECT * FROM deleted,����_��������
      WHERE
        /*  %JoinFKPK(����_��������,deleted," = "," AND") */
        ����_��������.��_����_���� = deleted.��_����_����
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete ���� because ����_�������� exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_���� ON ���� FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ���� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins��_����_���� ��,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���� �������� ������ on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000224ea", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="������"
    P2C_VERB_PHRASE="��������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="��_����_����" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(��_����_����)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,������
      WHERE
        /*  %JoinFKPK(������,deleted," = "," AND") */
        ������.��_����_���� = deleted.��_����_����
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because ������ exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ���� ����� ����_�������� on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�����", FK_COLUMNS="��_����_����" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(��_����_����)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,����_��������
      WHERE
        /*  %JoinFKPK(����_��������,deleted," = "," AND") */
        ����_��������.��_����_���� = deleted.��_����_����
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update ���� because ����_�������� exists.'
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




CREATE TRIGGER tI_����_�������� ON ����_�������� FOR INSERT AS
/* ERwin Builtin Trigger */
/* INSERT trigger on ����_�������� */
BEGIN
   DECLARE @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���� ����� ����_�������� on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="0002a200", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�����", FK_COLUMNS="��_����_����" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_����_����)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.��_����_���� = ����.��_����_����
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert ����_�������� because ���� does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ������� ������� ����_�������� on child insert restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�������", FK_COLUMNS="��_�������_�������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_�������_�������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�������
        WHERE
          /* %JoinFKPK(inserted,�������) */
          inserted.��_�������_������� = �������.��_�������_�������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," and") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30002,
             @errmsg = 'Cannot insert ����_�������� because ������� does not exist.'
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


CREATE TRIGGER tU_����_�������� ON ����_�������� FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on ����_�������� */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @ins��_����_���� ��, 
           @ins��_�������_������� ��,
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* ���� ����� ����_�������� on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0002bf02", PARENT_OWNER="", PARENT_TABLE="����"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�����", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�����", FK_COLUMNS="��_����_����" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_����_����)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,����
        WHERE
          /* %JoinFKPK(inserted,����) */
          inserted.��_����_���� = ����.��_����_����
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ����_�������� because ���� does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* ������� ������� ����_�������� on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="�������"
    CHILD_OWNER="", CHILD_TABLE="����_��������"
    P2C_VERB_PHRASE="�������", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="�������", FK_COLUMNS="��_�������_�������" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(��_�������_�������)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,�������
        WHERE
          /* %JoinFKPK(inserted,�������) */
          inserted.��_�������_������� = �������.��_�������_�������
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update ����_�������� because ������� does not exist.'
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


