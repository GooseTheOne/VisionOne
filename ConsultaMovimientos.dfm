object frmConsultaMov: TfrmConsultaMov
  Left = 0
  Top = 0
  Caption = 'Consulta de Movimientos'
  ClientHeight = 536
  ClientWidth = 865
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 192
    Top = 480
    Width = 462
    Height = 49
    DataSource = dsMovimientos
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 849
    Height = 466
    DataSource = dsMovimientos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idMovimiento'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 33
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Cargo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 103
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Abono'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'intReferencia'
        Title.Caption = 'Ref.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dteMovimiento'
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idCuenta'
        Title.Caption = 'id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cuenta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lgcContabilizado'
        Title.Caption = 'Cont.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 53
        Visible = True
      end>
  end
  object spMovimientos: TADOStoredProc
    Connection = conn
    CursorType = ctStatic
    ProcedureName = 'spGetMovimientos;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@plgContabilizado'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteInicio'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pdteFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 392
    Top = 256
  end
  object dsMovimientos: TDataSource
    DataSet = spMovimientos
    Left = 536
    Top = 224
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
    Left = 24
    Top = 56
  end
end
