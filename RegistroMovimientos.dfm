object frmRegistroMovimientos: TfrmRegistroMovimientos
  Left = 0
  Top = 0
  Caption = 'Registro de Movimientos'
  ClientHeight = 602
  ClientWidth = 1085
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
    Left = 127
    Top = 204
    Width = 63
    Height = 19
    Caption = 'Importe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
    Top = 39
    Width = 108
    Height = 19
    Caption = 'Cuenta Origen:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 553
    Top = 35
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
  object Shape1: TShape
    Left = 240
    Top = 68
    Width = 255
    Height = 5
    Brush.Color = clBackground
    Pen.Style = psClear
  end
  object Shape2: TShape
    Left = 672
    Top = 64
    Width = 255
    Height = 5
    Brush.Color = clBackground
    Pen.Style = psClear
  end
  object Shape3: TShape
    Left = 363
    Top = 68
    Width = 5
    Height = 50
    Brush.Color = clBackground
    Pen.Style = psClear
  end
  object Shape4: TShape
    Left = 795
    Top = 64
    Width = 5
    Height = 50
    Brush.Color = clBackground
    Pen.Style = psClear
  end
  object Label4: TLabel
    Left = 328
    Top = 8
    Width = 60
    Height = 23
    Caption = 'CARGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 768
    Top = 8
    Width = 61
    Height = 23
    Caption = 'ABONO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 108
    Top = 171
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
  object edImporte: TEdit
    Left = 210
    Top = 201
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dblkcCuentaOrigen: TDBLookupComboBox
    Left = 242
    Top = 35
    Width = 249
    Height = 27
    DropDownRows = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idCuenta'
    ListField = 'strDescripcion'
    ListFieldIndex = 1
    ListSource = dsCuentaOrigen
    ParentFont = False
    TabOrder = 0
  end
  object dblkcCuentaDestino: TDBLookupComboBox
    Left = 674
    Top = 31
    Width = 249
    Height = 27
    DropDownRows = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idCuenta'
    ListField = 'strDescripcion'
    ListFieldIndex = 1
    ListSource = dsCuentaDestino
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 432
    Top = 198
    Width = 177
    Height = 33
    Caption = 'Aplicar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object DBEdit1: TDBEdit
    Left = 263
    Top = 79
    Width = 94
    Height = 27
    DataField = 'dcmDebe'
    DataSource = dsCuentaOrigen
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 374
    Top = 79
    Width = 94
    Height = 27
    DataField = 'dcmHaber'
    DataSource = dsCuentaOrigen
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 695
    Top = 75
    Width = 94
    Height = 27
    DataField = 'dcmDebe'
    DataSource = dsCuentaDestino
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 806
    Top = 75
    Width = 94
    Height = 27
    DataField = 'dcmHaber'
    DataSource = dsCuentaDestino
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit5: TDBEdit
    Left = 263
    Top = 120
    Width = 94
    Height = 27
    DataField = 'dcmSaldo'
    DataSource = dsCuentaOrigen
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit6: TDBEdit
    Left = 806
    Top = 120
    Width = 94
    Height = 27
    DataField = 'dcmSaldo'
    DataSource = dsCuentaDestino
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 237
    Width = 1069
    Height = 360
    DataSource = dsMovimientos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
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
        Width = 44
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
        Width = 145
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
        Width = 98
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
        Width = 97
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
        Width = 210
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Movimiento'
        Title.Caption = 'Descripci'#243'n'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 450
        Visible = True
      end>
  end
  object edDescripcion: TEdit
    Left = 210
    Top = 168
    Width = 456
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object spCuentaOrigen: TADOStoredProc
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
    Left = 112
    Top = 83
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
    Left = 544
    Top = 79
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
    Left = 8
    Top = 8
  end
  object dsCuentaOrigen: TDataSource
    DataSet = spCuentaOrigen
    Left = 192
    Top = 99
  end
  object dsCuentaDestino: TDataSource
    DataSet = spCuentaDestino
    Left = 624
    Top = 95
  end
  object spInsertaMovimiento: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spInsertMovimiento;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidCuenta'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteMovimiento'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pdcmImporteCargo'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 8
        Value = Null
      end
      item
        Name = '@pdcmImporteAbono'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 8
        Value = Null
      end
      item
        Name = '@pstrDescripcion'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@pintTipoMovimiento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 704
    Top = 184
  end
  object spMovimientos: TADOStoredProc
    Connection = Conn
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
    Left = 192
    Top = 400
  end
  object dsMovimientos: TDataSource
    AutoEdit = False
    DataSet = spMovimientos
    Left = 312
    Top = 400
  end
  object spDeleteMovimiento: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spDeleteMovimiento;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidMovimiento'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 432
  end
end
