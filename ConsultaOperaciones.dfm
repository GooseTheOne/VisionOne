object frmConsultaOperaciones: TfrmConsultaOperaciones
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Operaciones'
  ClientHeight = 382
  ClientWidth = 581
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
    Left = 209
    Top = 124
    Width = 48
    Height = 19
    Caption = 'Pagos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 204
    Top = 156
    Width = 53
    Height = 19
    Caption = 'Gastos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 202
    Top = 189
    Width = 55
    Height = 19
    Caption = 'Retiros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 182
    Top = 221
    Width = 75
    Height = 19
    Caption = 'Depositos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 161
    Top = 344
    Width = 96
    Height = 19
    Caption = 'Efectivo Real:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 104
    Top = 331
    Width = 345
    Height = 4
    Brush.Color = clNavy
    Pen.Width = 0
  end
  object Label6: TLabel
    Left = 48
    Top = 17
    Width = 112
    Height = 19
    Caption = 'Fecha de Inicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 68
    Top = 57
    Width = 94
    Height = 19
    Caption = 'Fecha de Fin:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 97
    Top = 87
    Width = 65
    Height = 19
    Caption = 'Sucursal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 130
    Top = 302
    Width = 127
    Height = 19
    Caption = 'Ajustes por error:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape2: TShape
    Left = 104
    Top = 251
    Width = 345
    Height = 4
    Brush.Color = clNavy
    Pen.Width = 0
  end
  object Label10: TLabel
    Left = 123
    Top = 264
    Width = 134
    Height = 19
    Caption = 'Efectivo Calculado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtpInicio: TDateTimePicker
    Left = 168
    Top = 12
    Width = 219
    Height = 27
    Date = 44926.000000000000000000
    Time = 0.175988587965548500
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = Button1Click
  end
  object dtpFin: TDateTimePicker
    Left = 168
    Top = 45
    Width = 217
    Height = 27
    Date = 44926.000000000000000000
    Time = 0.176102129626087800
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = Button1Click
  end
  object Button1: TButton
    Left = 444
    Top = 24
    Width = 129
    Height = 35
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object edEfectivoTotal: TEdit
    Left = 272
    Top = 341
    Width = 145
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object dbePagos: TDBEdit
    Left = 272
    Top = 121
    Width = 145
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmPago'
    DataSource = dsGetOperacionesVentasPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object dbeGastos: TDBEdit
    Left = 272
    Top = 153
    Width = 145
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmTotal'
    DataSource = dsGetOperacionesGastosPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object dblkcSucursales: TDBLookupComboBox
    Left = 168
    Top = 82
    Width = 217
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idSucursal'
    ListField = 'strSucursal'
    ListSource = dsGetSucursales
    ParentFont = False
    TabOrder = 6
  end
  object dbeRetiros: TDBEdit
    Left = 272
    Top = 186
    Width = 145
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmTotal'
    DataSource = dsGetOperacionesRetirosPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object dbeDepositos: TDBEdit
    Left = 272
    Top = 218
    Width = 145
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmPago'
    DataSource = dsGetOperacionesDepositosPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object dbeAjustes: TDBEdit
    Left = 272
    Top = 299
    Width = 145
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmDiferencia'
    DataSource = dsGetOperacionesErroresPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object edEfectivoCalculado: TEdit
    Left = 272
    Top = 261
    Width = 145
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
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
    Left = 32
    Top = 40
  end
  object spGetOperacionesVentasPeriodo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOperacionesVentasPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidSucursal'
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
    Left = 680
    Top = 72
  end
  object dsGetOperacionesVentasPeriodo: TDataSource
    DataSet = spGetOperacionesVentasPeriodo
    Left = 856
    Top = 72
  end
  object spGetOperacionesGastosPeriodo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOperacionesGastosPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidSucursal'
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
    Left = 680
    Top = 128
  end
  object dsGetOperacionesGastosPeriodo: TDataSource
    DataSet = spGetOperacionesGastosPeriodo
    Left = 856
    Top = 128
  end
  object spGetSucursales: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetSucursales;1'
    Parameters = <>
    Left = 680
    Top = 16
  end
  object dsGetSucursales: TDataSource
    DataSet = spGetSucursales
    OnDataChange = dsGetSucursalesDataChange
    Left = 856
    Top = 16
  end
  object spGetOperacionesRetirosPeriodo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOperacionesRetirosPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidSucursal'
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
    Left = 680
    Top = 184
  end
  object dsGetOperacionesRetirosPeriodo: TDataSource
    DataSet = spGetOperacionesRetirosPeriodo
    Left = 856
    Top = 184
  end
  object dsGetOperacionesDepositosPeriodo: TDataSource
    DataSet = spGetOperacionesDepositosPeriodo
    Left = 856
    Top = 240
  end
  object spGetOperacionesDepositosPeriodo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOperacionesDepositosPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidSucursal'
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
    Left = 680
    Top = 240
  end
  object spGetOperacionesErroresPeriodo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOperacionesErroresPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidSucursal'
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
    Left = 680
    Top = 288
  end
  object dsGetOperacionesErroresPeriodo: TDataSource
    DataSet = spGetOperacionesErroresPeriodo
    Left = 856
    Top = 288
  end
end
