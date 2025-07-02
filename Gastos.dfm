object frmGastos: TfrmGastos
  Left = 0
  Top = 0
  Caption = 'Registro de Gastos'
  ClientHeight = 513
  ClientWidth = 1015
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 42
    Top = 85
    Width = 46
    Height = 19
    Caption = 'Gasto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 50
    Top = 53
    Width = 38
    Height = 19
    Caption = 'Tipo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 229
    Top = 124
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
    Left = 24
    Top = 124
    Width = 64
    Height = 19
    Caption = 'Subtotal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 54
    Top = 157
    Width = 33
    Height = 19
    Caption = 'IVA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 45
    Top = 190
    Width = 42
    Height = 19
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 679
    Top = 117
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
  object Label8: TLabel
    Left = 697
    Top = 150
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
  object Label9: TLabel
    Left = 555
    Top = 488
    Width = 52
    Height = 16
    Caption = 'Subtotal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 713
    Top = 488
    Width = 25
    Height = 16
    Caption = 'IVA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 844
    Top = 488
    Width = 34
    Height = 16
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 319
    Top = 13
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
  object Label13: TLabel
    Left = 449
    Top = 53
    Width = 54
    Height = 19
    Caption = 'Origen:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object calFecha: TCalendarPicker
    Left = 94
    Top = 8
    Width = 201
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Seleccione una fecha'
  end
  object cbxTipoGasto: TDBLookupComboBox
    Left = 94
    Top = 51
    Width = 275
    Height = 27
    DropDownRows = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idTipoGasto'
    ListField = 'strTipoGasto'
    ListSource = dsTipoGasto
    ParentFont = False
    TabOrder = 2
    OnClick = cbxTipoGastoClick
  end
  object cbxGastoRecurrente: TDBLookupComboBox
    Left = 94
    Top = 82
    Width = 275
    Height = 27
    DropDownRows = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idGastoRecurrente'
    ListField = 'strGastoRecurrente'
    ListSource = dscatGasto
    ParentFont = False
    TabOrder = 3
  end
  object memDescripcion: TMemo
    Left = 322
    Top = 121
    Width = 280
    Height = 58
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnExit = memDescripcionExit
  end
  object edSubtotal: TEdit
    Left = 94
    Top = 121
    Width = 121
    Height = 27
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '0.00'
    OnEnter = edSubtotalEnter
    OnExit = edSubtotalExit
    OnKeyDown = edSubtotalKeyDown
  end
  object edIVA: TEdit
    Left = 94
    Top = 154
    Width = 121
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '0.00'
  end
  object edTotal: TEdit
    Left = 93
    Top = 187
    Width = 121
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '0.00'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 222
    Width = 1001
    Height = 257
    DataSource = dsGastosPeriodoDet
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Recurrente'
        Title.Caption = 'Gasto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Gasto'
        Title.Caption = 'Descripci'#243'n'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 300
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Subtotal'
        Title.Caption = 'SubTotal'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 95
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'IVA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 83
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 88
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 374
    Top = 185
    Width = 175
    Height = 31
    Caption = 'Registrar Gasto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button1Click
  end
  object cbxIVA: TCheckBox
    Left = 31
    Top = 159
    Width = 17
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = cbxIVAClick
  end
  object calConsultaInicio: TCalendarPicker
    Left = 802
    Top = 109
    Width = 191
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    TextHint = 'select a date'
  end
  object calConsultaFin: TCalendarPicker
    Left = 802
    Top = 142
    Width = 191
    Height = 32
    CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
    CalendarHeaderInfo.DaysOfWeekFont.Height = -13
    CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    CalendarHeaderInfo.DaysOfWeekFont.Style = []
    CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
    CalendarHeaderInfo.Font.Color = clWindowText
    CalendarHeaderInfo.Font.Height = -20
    CalendarHeaderInfo.Font.Name = 'Segoe UI'
    CalendarHeaderInfo.Font.Style = []
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    TextHint = 'select a date'
  end
  object Button4: TButton
    Left = 802
    Top = 185
    Width = 191
    Height = 31
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Button4Click
  end
  object DBEdit1: TDBEdit
    Left = 613
    Top = 485
    Width = 76
    Height = 24
    BiDiMode = bdRightToLeft
    DataField = 'Subtotal'
    DataSource = dsGastoPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 14
  end
  object DBEdit2: TDBEdit
    Left = 744
    Top = 485
    Width = 73
    Height = 24
    BiDiMode = bdRightToLeft
    DataField = 'IVA'
    DataSource = dsGastoPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 15
  end
  object DBEdit3: TDBEdit
    Left = 884
    Top = 485
    Width = 73
    Height = 24
    BiDiMode = bdRightToLeft
    DataField = 'Total'
    DataSource = dsGastoPeriodo
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 16
  end
  object cbxSucursal: TDBLookupComboBox
    Left = 390
    Top = 8
    Width = 201
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
    TabOrder = 1
  end
  object Conn: TADOConnection
    CommandTimeout = 5
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Password=M0f1n1t0;Persist Security Info=Tr' +
      'ue;User ID=eugenes_prod;Initial Catalog=EugenesOneDes;Data Sourc' +
      'e=.;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=' +
      '4096;Workstation ID=LAPHPALEX;Initial File Name="";Use Encryptio' +
      'n for Data=False;Tag with column collation when possible=False;M' +
      'ARS Connection=False;DataTypeCompatibility=0;Trust Server Certif' +
      'icate=False;Server SPN="";Application Intent=READWRITE;Multisubn' +
      'etFailover=False;Use FMTONLY=False;Authentication="";Access Toke' +
      'n=""'
    ConnectionTimeout = 5
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 10
    Top = 9
  end
  object dsTipoGasto: TDataSource
    DataSet = spGetTipoGasto
    Left = 1240
    Top = 61
  end
  object dscatGasto: TDataSource
    DataSet = spGetGastoRecurrenteXTipo
    Left = 1240
    Top = 168
  end
  object qGastosInsert: TADOQuery
    Connection = Conn
    Parameters = <>
    Left = 1128
    Top = 464
  end
  object spGetTipoGasto: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTipoGasto;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 1136
    Top = 61
  end
  object spGetGastoRecurrenteXTipo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastoRecurrenteXTipo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintTipoGasto'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1128
    Top = 165
  end
  object spGastoPeriodo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteIni'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pdteFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintSucursal'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1128
    Top = 221
  end
  object dsGastoPeriodo: TDataSource
    DataSet = spGastoPeriodo
    Left = 1240
    Top = 221
  end
  object spGastosPeriodoDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXPeriodoDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteIni'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pdteFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintSucursal'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1128
    Top = 269
  end
  object dsGastosPeriodoDet: TDataSource
    DataSet = spGastosPeriodoDet
    Left = 1240
    Top = 269
  end
  object spGetSucursales: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetSucursalesCambio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 1136
    Top = 112
  end
  object dsGetSucursales: TDataSource
    DataSet = spGetSucursales
    Left = 1240
    Top = 112
  end
  object spInsertMovimiento: TADOStoredProc
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
      end
      item
        Name = '@pintReferencia'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1128
    Top = 416
  end
  object spDeleteGasto: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spDeleteGasto;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1128
    Top = 320
  end
  object spDeleteMovimientoRef: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spDeleteMovimientoReferencia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintReferencia'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1128
    Top = 368
  end
end
