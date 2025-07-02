object frmTipoGastoCat: TfrmTipoGastoCat
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de Tipo de Gasto'
  ClientHeight = 442
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 139
    Top = 176
    Width = 23
    Height = 19
    Caption = 'ID:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 57
    Top = 211
    Width = 105
    Height = 19
    Caption = 'Tipo de Gasto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 75
    Top = 244
    Width = 87
    Height = 19
    Caption = 'Descripci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 49
    Top = 314
    Width = 113
    Height = 19
    Caption = 'Cuenta Destino:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 801
    Height = 153
    DataSource = dsTipoGastoCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idTipoGasto'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoGasto'
        Title.Caption = 'Tipo de Gasto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 195
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strDescripcion'
        Title.Caption = 'Descripci'#243'n'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 378
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lgcActivo'
        Title.Caption = 'Activo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idCuenta'
        Title.Caption = 'Cuenta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object dbeID: TDBEdit
    Left = 168
    Top = 175
    Width = 65
    Height = 27
    DataField = 'idTipoGasto'
    DataSource = dsTipoGastoCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dbeTipoGasto: TDBEdit
    Left = 168
    Top = 208
    Width = 401
    Height = 27
    DataField = 'strTipoGasto'
    DataSource = dsTipoGastoCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object dbckActivo: TDBCheckBox
    Left = 24
    Top = 351
    Width = 97
    Height = 17
    Caption = 'Activo'
    DataField = 'lgcActivo'
    DataSource = dsTipoGastoCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dbmDescripcion: TDBMemo
    Left = 168
    Top = 241
    Width = 401
    Height = 64
    DataField = 'strDescripcion'
    DataSource = dsTipoGastoCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 152
    Top = 351
    Width = 438
    Height = 50
    DataSource = dsTipoGastoCat
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 5
  end
  object dbeCuentaDestino: TDBEdit
    Left = 168
    Top = 311
    Width = 65
    Height = 27
    DataField = 'idCuenta'
    DataSource = dsTipoGastoCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object dblkcCuentaDestino: TDBLookupComboBox
    Left = 239
    Top = 311
    Width = 330
    Height = 27
    DataField = 'idCuenta'
    DataSource = dsTipoGastoCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idCuenta'
    ListField = 'strDescripcion'
    ListSource = dsCuentaDestino
    ParentFont = False
    TabOrder = 7
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
    Left = 120
    Top = 88
  end
  object spTipoGastoCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTipoGastoCat;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 304
    Top = 64
  end
  object dsTipoGastoCat: TDataSource
    AutoEdit = False
    DataSet = spTipoGastoCat
    Left = 408
    Top = 64
  end
  object spCuentaDestino: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetCuenta;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 648
    Top = 224
  end
  object dsCuentaDestino: TDataSource
    DataSet = spCuentaDestino
    Left = 640
    Top = 280
  end
end
