object frmAperturaCaja: TfrmAperturaCaja
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  Caption = 'Apertura de Caja'
  ClientHeight = 324
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 116
    Top = 234
    Width = 75
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Efectivo: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 383
    Top = 94
    Width = 104
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Efectivo Real $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 124
    Top = 23
    Width = 109
    Height = 19
    Caption = 'Ultimo Cierre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 129
    Top = 127
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
  object Label8: TLabel
    Left = 124
    Top = 160
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
  object Label11: TLabel
    Left = 122
    Top = 193
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
  object Label2: TLabel
    Left = 20
    Top = 94
    Width = 171
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Efectivo Cierre Previo: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 102
    Top = 276
    Width = 89
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Dep'#243'sitos: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 447
    Top = 127
    Width = 40
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Dif: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 343
    Top = 234
    Width = 90
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'Diferencia: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 467
    Top = 31
    Width = 139
    Height = 19
    BiDiMode = bdLeftToRight
    Caption = 'La caja abre con:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Shape1: TShape
    Left = 8
    Top = 223
    Width = 411
    Height = 2
  end
  object btnAbrir: TButton
    Left = 477
    Top = 171
    Width = 145
    Height = 41
    Caption = 'Abrir Caja'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnAbrirClick
  end
  object edReal: TEdit
    Left = 493
    Top = 91
    Width = 114
    Height = 27
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '0.0'
    OnChange = edRealChange
    OnEnter = edRealEnter
    OnExit = edRealExit
  end
  object dbeEfectivo: TDBEdit
    Left = 205
    Top = 231
    Width = 121
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmEfectivo'
    DataSource = dsGetUltimoCierre
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object dbeFechaUltimoCierre: TDBEdit
    Left = 69
    Top = 48
    Width = 257
    Height = 27
    BiDiMode = bdLeftToRight
    DataField = 'dteFechaHora'
    DataSource = dsGetUltimoCierre
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
  end
  object dbeVentas: TDBEdit
    Left = 205
    Top = 124
    Width = 121
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmVentas'
    DataSource = dsGetUltimoCierre
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
    Left = 205
    Top = 157
    Width = 121
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmGastos'
    DataSource = dsGetUltimoCierre
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
  object dbeRetiros: TDBEdit
    Left = 205
    Top = 190
    Width = 121
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmRetiros'
    DataSource = dsGetUltimoCierre
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object dbeEfectivoUltimaOperacion: TDBEdit
    Left = 205
    Top = 91
    Width = 121
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmEfectivoUltimaOperacion'
    DataSource = dsGetUltimoCierre
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
    Left = 205
    Top = 273
    Width = 121
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmDepositos'
    DataSource = dsGetUltimoCierre
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
  object edDiferencia: TEdit
    Left = 493
    Top = 124
    Width = 114
    Height = 27
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '0.0'
    OnEnter = edRealEnter
    OnExit = edRealExit
  end
  object dbeDiferencia: TDBEdit
    Left = 447
    Top = 231
    Width = 121
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'dcmDiferencia'
    DataSource = dsGetUltimoCierre
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
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
    Left = 8
    Top = 8
  end
  object spInsertApertura: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spInsertApertura;1'
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
    Left = 671
    Top = 152
  end
  object dsGetUltimoCierre: TDataSource
    DataSet = spGetUltimoCierre
    Left = 671
    Top = 24
  end
  object spGetUltimoCierre: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetUltimoCierre;1'
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
      end>
    Left = 672
    Top = 88
  end
end
