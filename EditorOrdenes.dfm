object Form1: TForm1
  Left = 0
  Top = 0
  ActiveControl = dbgOrdenes
  Caption = 'Editor de Ordenes'
  ClientHeight = 539
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object dbgOrdenes: TDBGrid
    Left = 8
    Top = 8
    Width = 1009
    Height = 233
    DataSource = dsOrdenes
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idOrden'
        ReadOnly = True
        Title.Caption = 'ID'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dteRecepcion'
        Title.Caption = 'Recepci'#243'n'
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dteEntrega'
        Title.Caption = 'Entrega'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idCliente'
        Title.Caption = 'Cliente'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmSubtotal'
        Title.Caption = 'Subtotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuento'
        Title.Caption = 'Desc.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmIVA'
        Title.Caption = 'IVA'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmTotal'
        Title.Caption = 'Total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmAcuenta'
        Title.Caption = 'Adelanto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmPorPagar'
        Title.Caption = 'CxC'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idUsuario'
        Title.Caption = 'Usuario'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idSucursal'
        Title.Caption = 'Sucursal'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idEstatus'
        Title.Caption = 'Estatus'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idEstatusContable'
        Title.Caption = 'Estatus Cont.'
        Width = 95
        Visible = True
      end>
  end
  object dbnOrdenes: TDBNavigator
    Left = 568
    Top = 247
    Width = 440
    Height = 50
    DataSource = dsOrdenes
    TabOrder = 1
  end
  object dbnLineas: TDBNavigator
    Left = 33
    Top = 481
    Width = 440
    Height = 50
    DataSource = dsPrendaServicio
    TabOrder = 2
  end
  object dbgPagos: TDBGrid
    Left = 528
    Top = 320
    Width = 489
    Height = 153
    DataSource = dsPagos
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idPago'
        Title.Caption = 'Pago'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idOrden'
        Title.Caption = 'Orden'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dtePago'
        Title.Caption = 'Fecha'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmPago'
        Title.Caption = 'Importe'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idTipoPago'
        Title.Caption = 'Tipo'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idEstatusContable'
        Title.Caption = 'Estatus Cont'
        Width = 78
        Visible = True
      end>
  end
  object dbnPagos: TDBNavigator
    Left = 568
    Top = 479
    Width = 440
    Height = 50
    DataSource = dsPagos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 322
    Width = 514
    Height = 153
    DataSource = dsPrendaServicio
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idOrdenPrenda'
        Title.Caption = 'IDOP'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idOrdenPrendaServicio'
        Title.Caption = 'IDOPS'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idServicio'
        Title.Caption = 'IDS'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idPrecio'
        Title.Caption = 'IDP'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmImporte'
        Title.Caption = 'Importe'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuento'
        Title.Caption = 'Desc'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmTotal'
        Title.Caption = 'Total'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idOrden'
        Title.Caption = 'IDO'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strPrenda'
        Title.Caption = 'Prenda'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strServicio'
        Title.Caption = 'Servicio'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNota'
        Title.Caption = 'Nota'
        Visible = True
      end>
  end
  object spOrdenes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 784
    Top = 96
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
    Top = 72
  end
  object dsOrdenes: TDataSource
    AutoEdit = False
    DataSet = spOrdenes
    OnDataChange = dsOrdenesDataChange
    Left = 784
    Top = 152
  end
  object spLineas: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLineas;1'
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
        Value = 1000
      end>
    Left = 72
    Top = 264
  end
  object dsLineas: TDataSource
    AutoEdit = False
    DataSet = spLineas
    Left = 184
    Top = 264
  end
  object spPagos: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagos;1'
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
        Value = 1000
      end>
    Left = 568
    Top = 376
  end
  object dsPagos: TDataSource
    AutoEdit = False
    DataSet = spPagos
    Left = 616
    Top = 376
  end
  object spPrendaServicio: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPrendaServicioXOrden;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintOrden'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 368
    Top = 256
  end
  object dsPrendaServicio: TDataSource
    AutoEdit = False
    DataSet = spPrendaServicio
    Left = 456
    Top = 256
  end
end
