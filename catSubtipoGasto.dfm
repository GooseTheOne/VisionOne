object frmSubTipoGasto: TfrmSubTipoGasto
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de SubTipo de Gasto'
  ClientHeight = 474
  ClientWidth = 856
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 19
  object Label1: TLabel
    Left = 103
    Top = 28
    Width = 105
    Height = 19
    Caption = 'Tipo de Gasto:'
  end
  object Label2: TLabel
    Left = 180
    Top = 266
    Width = 23
    Height = 19
    Caption = 'ID:'
  end
  object Label3: TLabel
    Left = 120
    Top = 299
    Width = 83
    Height = 19
    Caption = 'Tipo Gasto:'
  end
  object Label4: TLabel
    Left = 71
    Top = 331
    Width = 132
    Height = 19
    Caption = 'SubTipo de Gasto:'
  end
  object Label5: TLabel
    Left = 123
    Top = 364
    Width = 87
    Height = 19
    Caption = 'Descripci'#243'n:'
  end
  object Button1: TButton
    Left = 624
    Top = 26
    Width = 65
    Height = 25
    Caption = '. . .'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object dblkcTipoGasto: TDBLookupComboBox
    Left = 214
    Top = 24
    Width = 393
    Height = 27
    DataField = 'strTipoGasto'
    KeyField = 'idTipoGasto'
    ListField = 'strTipoGasto'
    ListSource = dsTipoGasto
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 57
    Width = 801
    Height = 184
    DataSource = dsSubtipoGasto
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idTipoGasto'
        Title.Caption = 'Tipo Gasto'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idGastoRecurrente'
        Title.Caption = 'ID'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strGastoRecurrente'
        Title.Caption = 'SubTipo de Gasto'
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strDescripci'#243'n'
        Title.Caption = 'Descripci'#243'n'
        Width = 322
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lgcActivo'
        Title.Caption = 'Activo'
        Width = 65
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 143
    Top = 409
    Width = 600
    Height = 49
    DataSource = dsSubtipoGasto
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object dbeID: TDBEdit
    Left = 216
    Top = 263
    Width = 49
    Height = 27
    DataField = 'idGastoRecurrente'
    DataSource = dsSubtipoGasto
    TabOrder = 4
  end
  object dbeTipoGasto: TDBEdit
    Left = 216
    Top = 296
    Width = 49
    Height = 27
    DataField = 'idTipoGasto'
    DataSource = dsSubtipoGasto
    TabOrder = 5
  end
  object dbeSubtipo: TDBEdit
    Left = 216
    Top = 328
    Width = 329
    Height = 27
    DataField = 'strGastoRecurrente'
    DataSource = dsSubtipoGasto
    TabOrder = 6
  end
  object dbeDescripcion: TDBEdit
    Left = 216
    Top = 361
    Width = 561
    Height = 27
    DataField = 'strDescripci'#243'n'
    DataSource = dsSubtipoGasto
    TabOrder = 7
  end
  object DBCheckBox1: TDBCheckBox
    Left = 464
    Top = 268
    Width = 97
    Height = 17
    Caption = 'Activo'
    DataField = 'lgcActivo'
    DataSource = dsSubtipoGasto
    TabOrder = 8
  end
  object dblkcTipoGastoCat: TDBLookupComboBox
    Left = 280
    Top = 295
    Width = 305
    Height = 27
    DataField = 'idTipoGasto'
    DataSource = dsSubtipoGasto
    Enabled = False
    KeyField = 'idTipoGasto'
    ListField = 'strTipoGasto'
    ListSource = dsTipoGastoCat
    TabOrder = 9
  end
  object Conn: TADOConnection
    CommandTimeout = 5
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Password=M0f1n1t0;Persist Security Info=Tr' +
      'ue;User ID=eugenes_prod;Initial Catalog=EugenesOneDes;Data Sourc' +
      'e=.;Use Procedure for Prepare=1;Auto Translat' +
      'e=True;Packet Size=4096;Workstation ID=LAPHPALEX;Initial File Na' +
      'me="";Use Encryption for Data=False;Tag with column collation wh' +
      'en possible=False;MARS Connection=False;DataTypeCompatibility=0;' +
      'Trust Server Certificate=False;Server SPN="";Application Intent=' +
      'READWRITE;MultisubnetFailover=False;Use FMTONLY=False;Authentica' +
      'tion="";Access Token=""'
    ConnectionTimeout = 5
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 16
    Top = 16
  end
  object spTipoGasto: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTipoGasto;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 728
    Top = 8
  end
  object dsTipoGasto: TDataSource
    DataSet = spTipoGasto
    OnDataChange = dsTipoGastoDataChange
    Left = 800
    Top = 8
  end
  object spSubtipoGasto: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetSubtipoGastoCat;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintTipo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 472
    Top = 184
  end
  object dsSubtipoGasto: TDataSource
    AutoEdit = False
    DataSet = spSubtipoGasto
    Left = 576
    Top = 184
  end
  object spTipoGastoCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTipoGasto;1'
    Parameters = <>
    Left = 664
    Top = 296
  end
  object dsTipoGastoCat: TDataSource
    DataSet = spTipoGastoCat
    Left = 752
    Top = 296
  end
end
