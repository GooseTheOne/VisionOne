object frmConsultaClientes: TfrmConsultaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Ordenes'
  ClientHeight = 659
  ClientWidth = 1010
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 19
  object Label1: TLabel
    Left = 72
    Top = 16
    Width = 63
    Height = 19
    Caption = 'Nombre:'
  end
  object Label3: TLabel
    Left = 466
    Top = 16
    Width = 68
    Height = 19
    Caption = 'Telefono:'
  end
  object dbgClientes: TDBGrid
    Left = 8
    Top = 49
    Width = 801
    Height = 167
    DataSource = dsGetClienteCat
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
        FieldName = 'idCliente'
        Title.Caption = 'ID'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNombre'
        Title.Caption = 'Nombre'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTelefono'
        Title.Caption = 'Tel'#233'fono'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dteAlta'
        Title.Caption = 'Alta'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idTipoCliente'
        Title.Caption = 'Tipo'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuentoSE'
        Title.Caption = 'SE'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuentoSAC'
        Title.Caption = 'SAC'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'intFactura'
        Title.Caption = 'Factura'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strCorreo'
        Title.Caption = 'Correo'
        Width = 128
        Visible = True
      end>
  end
  object edNombre: TEdit
    Left = 150
    Top = 13
    Width = 283
    Height = 27
    TabOrder = 1
    OnKeyDown = edNombreKeyDown
  end
  object edTelefono: TEdit
    Left = 540
    Top = 13
    Width = 121
    Height = 27
    TabOrder = 2
    OnKeyDown = edTelefonoKeyDown
  end
  object btnBuscar: TButton
    Left = 702
    Top = 11
    Width = 107
    Height = 32
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = btnBuscarClick
  end
  object VPENota: TVPEngine
    Left = 852
    Top = 49
    Width = 89
    Height = 50
    BorderStyle = bsNone
    TabOrder = 4
    Visible = False
    Caption = 'VPE Preview'
    ExternalWindow = True
    PageOrientation = VORIENT_PORTRAIT
    PageFormat = VPAPER_A4
    PageWidth = 21.000000000000000000
    PageHeight = 29.700000000000000000
    Rulers = True
    RulersMeasure = cm
    GridMode = InForeground
    GridVisible = False
    EnableHelpRouting = False
    StatusBar = True
    ToolBar = True
    tbAbout = True
    tbClose = True
    tbGrid = False
    tbHelp = True
    tbNavigate = True
    tbOpen = True
    tbSave = True
    tbPrint = True
    EnablePrintSetupDialog = True
    tbScale = True
    PaperView = True
    DocFileReadOnly = False
    PageScroller = True
    tbMail = True
    StatusSegment = True
    PageScrollerTracking = True
    PreviewCtrl = JumpTop
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 232
    Width = 633
    Height = 233
    DataSource = dsGetOrdenesXCliente
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idOrden'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strEstatus'
        Title.Alignment = taCenter
        Title.Caption = 'Estatus'
        Width = 104
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dteRecepcion'
        Title.Alignment = taCenter
        Title.Caption = 'Recepci'#243'n'
        Width = 223
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'dteEntrega'
        Title.Alignment = taCenter
        Title.Caption = 'Entrega'
        Width = 108
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 680
    Top = 264
    Width = 320
    Height = 120
    DataSource = dsGetLineasXOrden
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Visible = True
      end>
  end
  object dsOrdenDetalle: TDataSource
    DataSet = spGetLineasPorOrden
    Left = 73
    Top = 666
  end
  object spGetLineasPorOrden: TADOQuery
    Connection = conn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pOrden'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      #9'LineaServicio.idOrdenPrenda as '#39'idLinea'#39','
      #9'OrdenPrenda.intCantidad as '#39'intCantidad'#39','
      #9'OrdenPrenda.idPrenda'#9'as '#39'idPrenda'#39','
      #9'Prenda.strPrenda as '#39'strPrenda'#39','
      #9'LineaServicio.idServicio as '#39'idServicio'#39','
      #9'Servicio.strServicio as '#39'strServicio'#39','
      #9'FORMAT(LineaServicio.dcmImporte,'#39'C'#39') as '#39'dcmMonto'#39','
      #9'FORMAT(LineaServicio.dcmDescuento,'#39'C'#39') as '#39'dcmDescuento'#39','
      #9'LineaServicio.strNota as '#39'strNota'#39','
      #9'LineaServicio.idPrecio as '#39'idPrecio'#39','
      #9'FORMAT(Precio.dcmPrecio,'#39'C'#39')'#9#9'as '#39'dcmPrecio'#39','
      #9'TipoServicio.idTipoServicio as '#39'idTipoServicio'#39','
      #9'TipoServicio.strTipoCorto as '#39'strTipoServicio'#39','
      '    OrdenPrenda.idOrdenPrenda as idOrdenPrenda,'
      '    Cliente.idTipoCliente as '#39'idTipocliente'#39
      'FROM OrdenPrenda'
      
        #9'inner join LineaServicio on LineaServicio.idOrdenPrenda = Orden' +
        'Prenda.idOrdenPrenda'
      
        #9'inner join Servicio on Servicio.idServicio = LineaServicio.idSe' +
        'rvicio'
      #9'inner join Prenda on Prenda.idPrenda = OrdenPrenda.idPrenda'
      #9'inner join Precio on Precio.idPrecio = LineaServicio.idPrecio'
      
        #9'inner join TipoServicio on TipoServicio.idTipoServicio = Precio' +
        '.idTipoServicio'
      #9'inner join Orden on Orden.idOrden = OrdenPrenda.idOrden'
      #9'inner join Cliente on Cliente.idCliente = Orden.idCliente '
      'WHERE'
      #9'OrdenPrenda.idOrden = :pOrden'
      'ORDER BY'
      '    OrdenPrenda.idPrenda,'
      '    LineaServicio.idServicio')
    Left = 69
    Top = 724
  end
  object qOrden: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 585
    Top = 658
  end
  object qOrdenDetalleInsert: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 585
    Top = 730
  end
  object qOrdenPago: TADOQuery
    Connection = conn
    Parameters = <>
    Left = 714
    Top = 688
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
    Left = 13
    Top = 10
  end
  object spGetClienteCat: TADOStoredProc
    Connection = conn
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
    Left = 488
    Top = 128
  end
  object dsGetClienteCat: TDataSource
    DataSet = spGetClienteCat
    OnDataChange = dsGetClienteCatDataChange
    Left = 632
    Top = 128
  end
  object spGetOrdenesXCliente: TADOStoredProc
    Connection = conn
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
    Left = 360
    Top = 360
  end
  object dsGetOrdenesXCliente: TDataSource
    DataSet = spGetOrdenesXCliente
    Left = 200
    Top = 352
  end
  object spGetLineasXOrden: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetLineasPorOrden;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidOrden'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 720
    Top = 424
  end
  object dsGetLineasXOrden: TDataSource
    DataSet = spGetLineasXOrden
    Left = 832
    Top = 424
  end
end
