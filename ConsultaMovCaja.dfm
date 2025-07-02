object frmConsultaMovCaja: TfrmConsultaMovCaja
  Left = 0
  Top = 0
  Caption = 'Consulta Movimientos de la Caja'
  ClientHeight = 474
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label2: TLabel
    Left = 529
    Top = 235
    Width = 46
    Height = 19
    Caption = 'Fecha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 530
    Top = 440
    Width = 76
    Height = 19
    Caption = 'Diferencia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 67
    Top = 276
    Width = 189
    Height = 19
    Caption = 'Efectivo Ultima Operaci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 203
    Top = 309
    Width = 53
    Height = 19
    Caption = 'Ventas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 203
    Top = 342
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
  object Label11: TLabel
    Left = 201
    Top = 375
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
  object Label12: TLabel
    Left = 195
    Top = 440
    Width = 61
    Height = 19
    Caption = 'Efectivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 233
    Top = 235
    Width = 147
    Height = 19
    Caption = 'Tipo de Movimiento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 225
    Top = 14
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
  object Label1: TLabel
    Left = 24
    Top = 235
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
  object Label15: TLabel
    Left = 181
    Top = 407
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
  object DBGrid1: TDBGrid
    Left = 24
    Top = 41
    Width = 841
    Height = 185
    DataSource = dsGetMovimientosCaja
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
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dteFechaHora'
        Title.Caption = 'Fecha'
        Width = 308
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strSucursal'
        Title.Caption = 'Sucursal'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoOperacion'
        Title.Caption = 'Operaci'#243'n'
        Width = 289
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 270
    Top = 273
    Width = 121
    Height = 27
    DataField = 'dcmEfectivoUltimaOperacion'
    DataSource = dsGetMovimientosCaja
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 270
    Top = 306
    Width = 121
    Height = 27
    DataField = 'dcmVentas'
    DataSource = dsGetMovimientosCaja
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 270
    Top = 339
    Width = 121
    Height = 27
    DataField = 'dcmGastos'
    DataSource = dsGetMovimientosCaja
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 270
    Top = 372
    Width = 121
    Height = 27
    DataField = 'dcmRetiros'
    DataSource = dsGetMovimientosCaja
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 270
    Top = 437
    Width = 121
    Height = 27
    DataField = 'dcmEfectivo'
    DataSource = dsGetMovimientosCaja
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object DBEdit10: TDBEdit
    Left = 632
    Top = 437
    Width = 121
    Height = 27
    DataField = 'dcmDiferencia'
    DataSource = dsGetMovimientosCaja
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object DBEdit11: TDBEdit
    Left = 386
    Top = 232
    Width = 121
    Height = 27
    DataField = 'strTipoOperacion'
    DataSource = dsGetMovimientosCaja
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit13: TDBEdit
    Left = 581
    Top = 232
    Width = 284
    Height = 27
    DataField = 'dteFechaHora'
    DataSource = dsGetMovimientosCaja
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 296
    Top = 8
    Width = 233
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
    TabOrder = 9
  end
  object DBEdit12: TDBEdit
    Left = 95
    Top = 232
    Width = 121
    Height = 27
    DataField = 'strSucursal'
    DataSource = dsGetMovimientosCaja
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
  object DBEdit14: TDBEdit
    Left = 270
    Top = 404
    Width = 121
    Height = 27
    DataField = 'dcmDepositos'
    DataSource = dsGetMovimientosCaja
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
    Left = 16
    Top = 16
  end
  object dsGetMovimientosCaja: TDataSource
    DataSet = spGetMovimientosCaja
    Left = 768
    Top = 272
  end
  object spGetMovimientosCaja: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetMovimientosCaja;1'
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
    Left = 600
    Top = 272
  end
  object spGetSucursales: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetSucursales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 600
    Top = 360
  end
  object dsGetSucursales: TDataSource
    DataSet = spGetSucursales
    OnDataChange = dsGetSucursalesDataChange
    Left = 768
    Top = 360
  end
end
