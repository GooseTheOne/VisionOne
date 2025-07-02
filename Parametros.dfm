object frmParametros: TfrmParametros
  Left = 0
  Top = 0
  Caption = 'Configuraci'#243'n de Par'#225'metros de EugenesOne POS'
  ClientHeight = 445
  ClientWidth = 813
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
    Left = 168
    Top = 195
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
    Left = 128
    Top = 227
    Width = 63
    Height = 19
    Caption = 'Nombre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 125
    Top = 259
    Width = 66
    Height = 19
    Caption = 'Objetivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 86
    Top = 291
    Width = 105
    Height = 19
    Caption = 'Valor (Integer)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 95
    Top = 323
    Width = 96
    Height = 19
    Caption = 'Valor (String)'
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
    Width = 793
    Height = 161
    DataSource = dsGetSysParametro
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
        FieldName = 'Id'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nombre'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Objetivo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 313
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Valor INT del Par'#225'metro'
        Title.Alignment = taCenter
        Title.Caption = 'INT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Valor STR del Parametro'
        Title.Alignment = taCenter
        Title.Caption = 'STRING'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 119
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 152
    Top = 384
    Width = 606
    Height = 41
    DataSource = dsGetSysParametro
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 208
    Top = 192
    Width = 49
    Height = 27
    DataField = 'Id'
    DataSource = dsGetSysParametro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 224
    Width = 225
    Height = 27
    DataField = 'Nombre'
    DataSource = dsGetSysParametro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 208
    Top = 256
    Width = 369
    Height = 27
    DataField = 'Objetivo'
    DataSource = dsGetSysParametro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 208
    Top = 288
    Width = 73
    Height = 27
    DataField = 'Valor INT del Par'#225'metro'
    DataSource = dsGetSysParametro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 208
    Top = 320
    Width = 273
    Height = 27
    DataField = 'Valor STR del Parametro'
    DataSource = dsGetSysParametro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object spGetSysParametro: TADOStoredProc
    Connection = conn
    CursorType = ctStatic
    ProcedureName = 'spGetSysParametro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 128
    Top = 64
  end
  object conn: TADOConnection
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
    Top = 56
  end
  object dsGetSysParametro: TDataSource
    AutoEdit = False
    DataSet = spGetSysParametro
    Left = 616
    Top = 80
  end
end
