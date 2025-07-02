object frmConsultaClienteV2: TfrmConsultaClienteV2
  Left = 0
  Top = 0
  Caption = 'Consulta de Clientes'
  ClientHeight = 557
  ClientWidth = 1002
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
    Left = 24
    Top = 8
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
    Left = 394
    Top = 8
    Width = 68
    Height = 19
    Caption = 'Telefono:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edNombre: TEdit
    Left = 102
    Top = 5
    Width = 283
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = edNombreKeyDown
  end
  object edTelefono: TEdit
    Left = 468
    Top = 5
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyDown = edTelefonoKeyDown
  end
  object btnBuscar: TButton
    Left = 604
    Top = 3
    Width = 107
    Height = 32
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnBuscarClick
  end
  object dbgClientes: TDBGrid
    Left = 8
    Top = 38
    Width = 719
    Height = 251
    DataSource = dsGetClienteCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idCliente'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNombre'
        Title.Caption = 'Nombre'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 272
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTelefono'
        Title.Caption = 'Tel'#233'fono'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idTipoCliente'
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuentoSAC'
        Title.Caption = 'SAC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuentoSE'
        Title.Caption = 'SE'
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
        FieldName = 'dteAlta'
        Title.Caption = 'Alta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'intFactura'
        Title.Caption = 'Factura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object dbgOrdenes: TDBGrid
    Left = 8
    Top = 295
    Width = 545
    Height = 251
    DataSource = dsGetOrdenesXCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idOrden'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strEstatus'
        Title.Caption = 'Estatus'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 101
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmTotal'
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dteRecepcion'
        Title.Caption = 'Recepci'#243'n'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dteEntrega'
        Title.Caption = 'Entrega'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmAcuenta'
        Title.Caption = 'Adelanto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmPorPagar'
        Title.Caption = 'CxC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 62
        Visible = True
      end>
  end
  object DBGrid1: TDBGrid
    Left = 559
    Top = 295
    Width = 435
    Height = 251
    DataSource = dsGetLineasXOrden
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'intCantidad'
        Title.Caption = '#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strPrenda'
        Title.Caption = 'Prenda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strServicio'
        Title.Caption = 'Servicio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 249
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoServicio'
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmMonto'
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 75
        Visible = True
      end>
  end
  object spGetClienteCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetClienteCat;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintCampo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintCondicion'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintDato'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pstrDato'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@pdteDato'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 440
    Top = 128
  end
  object spGetOrdenesXCliente: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenesXCliente;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 408
  end
  object dsGetClienteCat: TDataSource
    DataSet = spGetClienteCat
    OnDataChange = dsGetClienteCatDataChange
    Left = 544
    Top = 120
  end
  object dsGetOrdenesXCliente: TDataSource
    DataSet = spGetOrdenesXCliente
    OnDataChange = dsGetOrdenesXClienteDataChange
    Left = 336
    Top = 408
  end
  object Conn: TADOConnection
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
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 32
    Top = 104
  end
  object spGetLineasXOrden: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLineasXOrden;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidOrden'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 688
    Top = 392
  end
  object dsGetLineasXOrden: TDataSource
    DataSet = spGetLineasXOrden
    Left = 800
    Top = 384
  end
end
