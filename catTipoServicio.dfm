object frmTipoServicio: TfrmTipoServicio
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de Tipo de Servicio'
  ClientHeight = 365
  ClientWidth = 656
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
    Left = 163
    Top = 171
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
    Left = 66
    Top = 203
    Width = 120
    Height = 19
    Caption = 'Tipo de Servicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 79
    Top = 235
    Width = 107
    Height = 19
    Caption = 'Nombre Corto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 8
    Width = 561
    Height = 137
    DataSource = dsTipoServicio
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
        FieldName = 'idTipoServicio'
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
        FieldName = 'strTipoServicio'
        Title.Caption = 'Tipo de Servicio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoCorto'
        Title.Caption = 'Nombre Corto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 92
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
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 136
    Top = 288
    Width = 384
    Height = 49
    DataSource = dsTipoServicio
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 192
    Top = 168
    Width = 49
    Height = 27
    DataField = 'idTipoServicio'
    DataSource = dsTipoServicio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 192
    Top = 200
    Width = 345
    Height = 27
    DataField = 'strTipoServicio'
    DataSource = dsTipoServicio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 192
    Top = 232
    Width = 81
    Height = 27
    DataField = 'strTipoCorto'
    DataSource = dsTipoServicio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBCheckBox1: TDBCheckBox
    Left = 344
    Top = 170
    Width = 97
    Height = 17
    Caption = 'Activo'
    DataField = 'lgcActivo'
    DataSource = dsTipoServicio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
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
    Top = 8
  end
  object spTipoServicio: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTipoServicio;1'
    Parameters = <>
    Left = 136
    Top = 40
  end
  object dsTipoServicio: TDataSource
    AutoEdit = False
    DataSet = spTipoServicio
    Left = 256
    Top = 40
  end
end
