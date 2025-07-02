object frmCierreCaja: TfrmCierreCaja
  Left = 0
  Top = 0
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cierre de Caja'
  ClientHeight = 318
  ClientWidth = 1325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label3: TLabel
    Left = 544
    Top = 46
    Width = 68
    Height = 19
    Caption = 'Calculado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 23
    Top = 73
    Width = 125
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Cierre Anterior: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 86
    Top = 105
    Width = 62
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Pagos: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 81
    Top = 138
    Width = 67
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Gastos: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 15
    Top = 212
    Width = 133
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Efectivo en Caja: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Shape1: TShape
    Left = 8
    Top = 201
    Width = 961
    Height = 2
  end
  object Label11: TLabel
    Left = 79
    Top = 170
    Width = 69
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Retiros: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label12: TLabel
    Left = 32
    Top = 8
    Width = 198
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Apertura Registrada el: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label20: TLabel
    Left = 170
    Top = 45
    Width = 75
    Height = 19
    Caption = 'Registrado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label27: TLabel
    Left = 457
    Top = 74
    Width = 114
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Ultimo Cierre: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label28: TLabel
    Left = 421
    Top = 106
    Width = 147
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Pagos del Periodo: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label29: TLabel
    Left = 416
    Top = 139
    Width = 152
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Gastos del Periodo: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label30: TLabel
    Left = 414
    Top = 171
    Width = 154
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Retiros del Periodo: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 435
    Top = 212
    Width = 133
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Efectivo en Caja: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 57
    Top = 244
    Width = 89
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Depositos: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 479
    Top = 245
    Width = 89
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Depositos: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label31: TLabel
    Left = 826
    Top = 212
    Width = 45
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'DIF: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label32: TLabel
    Left = 255
    Top = 212
    Width = 45
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'DIF: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 673
    Top = 212
    Width = 50
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Real: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object edEfectivoUltimaOperacion: TEdit
    Left = 574
    Top = 71
    Width = 92
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    Text = '0.0'
  end
  object btnCerrar: TButton
    Left = 560
    Top = 275
    Width = 129
    Height = 33
    Caption = 'Cerrar Caja'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnCerrarClick
  end
  object edVentas: TEdit
    Left = 574
    Top = 103
    Width = 92
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Text = '0.0'
  end
  object dbeEfectivoCierreAnt: TDBEdit
    Left = 160
    Top = 70
    Width = 87
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmEfectivoUltimaOperacion'
    DataSource = dsGetUltimaApertura
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object edGastos: TEdit
    Left = 574
    Top = 136
    Width = 92
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    Text = '0.0'
  end
  object edEfectivo: TEdit
    Left = 574
    Top = 209
    Width = 92
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = '0.0'
  end
  object dbeFecha: TDBEdit
    Left = 256
    Top = 5
    Width = 205
    Height = 27
    BiDiMode = bdLeftToRight
    DataField = 'dteFechaHora'
    DataSource = dsGetUltimaApertura
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 6
  end
  object edRetiros: TEdit
    Left = 574
    Top = 168
    Width = 92
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    Text = '0.0'
  end
  object dbeVentas: TDBEdit
    Left = 160
    Top = 102
    Width = 87
    Height = 27
    DataField = 'dcmVentas'
    DataSource = dsGetUltimaApertura
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object dbeGastos: TDBEdit
    Left = 160
    Top = 135
    Width = 87
    Height = 27
    DataField = 'dcmGastos'
    DataSource = dsGetUltimaApertura
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object dbeRetiros: TDBEdit
    Left = 160
    Top = 167
    Width = 87
    Height = 27
    DataField = 'dcmRetiros'
    DataSource = dsGetUltimaApertura
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object dbeEfectivo: TDBEdit
    Left = 159
    Top = 209
    Width = 87
    Height = 27
    DataField = 'dcmEfectivo'
    DataSource = dsGetUltimaApertura
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object dbeDepositos: TDBEdit
    Left = 158
    Top = 242
    Width = 87
    Height = 27
    DataField = 'dcmDepositos'
    DataSource = dsGetUltimaApertura
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object edDepositos: TEdit
    Left = 574
    Top = 242
    Width = 92
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 13
    Text = '0.0'
  end
  object edDiferencia: TEdit
    Left = 877
    Top = 209
    Width = 92
    Height = 27
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
    Text = '0.0'
  end
  object dbeDiferencia: TDBEdit
    Left = 312
    Top = 209
    Width = 87
    Height = 27
    DataField = 'dcmDiferencia'
    DataSource = dsGetUltimaApertura
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  object edReal: TEdit
    Left = 729
    Top = 209
    Width = 92
    Height = 27
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 16
    Text = '0.0'
    OnChange = edRealChange
    OnExit = edRealExit
    OnKeyDown = edRealKeyDown
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
    Top = 265
  end
  object spGetUltimaApertura: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetUltimaApertura;1'
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
      end>
    Left = 1086
    Top = 208
  end
  object dsGetUltimaApertura: TDataSource
    DataSet = spGetUltimaApertura
    Left = 1182
    Top = 224
  end
  object spInsertCierre: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spInsertCierre;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteFechaHora'
        Attributes = [paNullable]
        DataType = ftDateTime
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
        Name = '@pintTipoOperacion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdcmEfectivoUltimaOperacion'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@pdcmVentas'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@pdcmGastos'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@pdcmRetiros'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@pdcmDepositos'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@pdcmEfectivo'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end
      item
        Name = '@pdcmDiferencia'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 19
        Value = Null
      end>
    Left = 1078
    Top = 258
  end
  object spEfectivoDesdeUltimoCierre: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetEfectivoDesdeUltimoCierre;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteFechaUltimoCierre'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pidSucursal'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1078
    Top = 56
  end
  object dsEfectivoDesdeUltimoCierre: TDataSource
    DataSet = spEfectivoDesdeUltimoCierre
    Left = 1230
    Top = 56
  end
  object spGastosDesdeUltimoCierre: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetGastosDesdeUltimoCierre;1'
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
        Name = '@pdteUltimoCierre'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 1081
    Top = 104
  end
  object dsGastosDesdeUltimoCierre: TDataSource
    DataSet = spGastosDesdeUltimoCierre
    Left = 1230
    Top = 104
  end
  object spRetirosDesdeUltimoCierre: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetRetirosDesdeUltimoCierre;1'
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
        Name = '@pdteUltimoCierre'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 1081
    Top = 150
  end
  object dsRetirosDesdeUltimoCierre: TDataSource
    DataSet = spRetirosDesdeUltimoCierre
    Left = 1233
    Top = 152
  end
  object spGetDepositosDesdeUltimoCierre: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetDepositosDesdeUltimoCierre;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteFechaUltimoCierre'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pidSucursal'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1075
    Top = 8
  end
  object dsGetDepositosDesdeUltimoCierre: TDataSource
    DataSet = spGetDepositosDesdeUltimoCierre
    Left = 1227
    Top = 8
  end
end
