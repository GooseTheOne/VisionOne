object frmConsultaOrdenes: TfrmConsultaOrdenes
  Left = 0
  Top = 0
  Caption = 'Consulta de Ordenes'
  ClientHeight = 825
  ClientWidth = 1211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 11
    Width = 55
    Height = 19
    Caption = ' Orden:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbFolioAnt: TLabel
    Left = 264
    Top = 11
    Width = 40
    Height = 19
    Caption = 'Folio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 670
    Top = 203
    Width = 56
    Height = 19
    Caption = 'Estatus:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 342
    Top = 203
    Width = 127
    Height = 19
    Caption = 'Fecha de Entrega:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 19
    Top = 203
    Width = 144
    Height = 19
    Caption = 'Fecha de Recepci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 636
    Top = 306
    Width = 75
    Height = 19
    Caption = 'Por Pagar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 636
    Top = 275
    Width = 71
    Height = 19
    Caption = 'A Cuenta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 676
    Top = 231
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
  object Label2: TLabel
    Left = 20
    Top = 63
    Width = 54
    Height = 19
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 46
    Top = 96
    Width = 28
    Height = 19
    Caption = 'Tel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 129
    Width = 54
    Height = 19
    Caption = 'Correo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 935
    Top = 60
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
  object btnBuscar: TButton
    Left = 377
    Top = 8
    Width = 112
    Height = 27
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
  object edOrden: TEdit
    Left = 128
    Top = 8
    Width = 73
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edFolioAnt: TEdit
    Left = 320
    Top = 8
    Width = 51
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btLimpiar: TButton
    Left = 495
    Top = 8
    Width = 112
    Height = 27
    Caption = 'Limpiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btLimpiarClick
  end
  object Button1: TButton
    Left = 80
    Top = 8
    Width = 42
    Height = 27
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 207
    Top = 8
    Width = 44
    Height = 27
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 19
    Top = 456
    Width = 1120
    Height = 193
    DataSource = dsOrdenDetalle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cant'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prenda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ajuste'
        Title.Caption = 'Servicio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 283
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Importe'
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
        FieldName = 'Descuento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nota'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 474
        Visible = True
      end>
  end
  object edEstatus: TEdit
    Left = 732
    Top = 200
    Width = 153
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edFechaEntrega: TEdit
    Left = 467
    Top = 200
    Width = 153
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edFechaRec: TEdit
    Left = 161
    Top = 200
    Width = 153
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object edPorPagar: TEdit
    Left = 732
    Top = 301
    Width = 155
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object edAcuenta: TEdit
    Left = 732
    Top = 262
    Width = 155
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object edTotal: TEdit
    Left = 732
    Top = 229
    Width = 155
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object btCancelar: TButton
    Left = 1007
    Top = 313
    Width = 113
    Height = 30
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = btCancelarClick
  end
  object btEntregar: TButton
    Left = 1007
    Top = 277
    Width = 113
    Height = 30
    Caption = 'Entregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = btEntregarClick
  end
  object DBGrid2: TDBGrid
    Left = 630
    Top = 8
    Width = 283
    Height = 145
    DataSource = dsPagos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Monto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 162
        Visible = True
      end>
  end
  object edNombre: TEdit
    Left = 80
    Top = 60
    Width = 349
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object edTelefono: TEdit
    Left = 80
    Top = 93
    Width = 221
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object edCorreo: TEdit
    Left = 80
    Top = 126
    Width = 293
    Height = 27
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
  end
  object btLiquidacion: TButton
    Left = 1007
    Top = 123
    Width = 113
    Height = 30
    Caption = 'Liquidar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = btLiquidacionClick
  end
  object btPago: TButton
    Left = 1007
    Top = 90
    Width = 113
    Height = 30
    Caption = 'Pagar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = btPagoClick
  end
  object edPago: TEdit
    Left = 1007
    Top = 57
    Width = 113
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
  end
  object dtpPago: TDateTimePicker
    Left = 949
    Top = 20
    Width = 161
    Height = 27
    Date = 44182.000000000000000000
    Time = 0.051418055554677270
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
  end
  object cnConsultaOrdenes: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Password=M0f1n1t0;Persist Security Info=Tr' +
      'ue;User ID=eugenes_prod;Initial Catalog="";Data Source=eugenes.m' +
      'x;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=40' +
      '96;Workstation ID=LAPHPALEX;Initial File Name="";Use Encryption ' +
      'for Data=False;Tag with column collation when possible=False;MAR' +
      'S Connection=False;DataTypeCompatibility=0;Trust Server Certific' +
      'ate=False;Server SPN="";Application Intent=READWRITE;Multisubnet' +
      'Failover=False;Use FMTONLY=False;Authentication="";Access Token=' +
      '""'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 400
    Top = 105
  end
  object qConsultaOrdenes: TADOQuery
    Connection = cnConsultaOrdenes
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pOrden'
        Size = -1
        Value = Null
      end
      item
        Name = 'pFolioAnt'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from Orden')
    Left = 688
    Top = 145
  end
  object qOrdenDetalle: TADOQuery
    Connection = cnConsultaOrdenes
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
      
        'Select Linea.intCantidad as Cant,Prenda.strPrenda as Prenda, Ser' +
        'vicio.strServicio as Ajuste, Linea.strNota as Nota, Linea.dcmMon' +
        'to as Importe, Linea.dcmDescuento as Descuento from Linea'
      'inner join Orden on Orden.idOrden = Linea.idOrden'
      'inner join Prenda on Prenda.idPrenda = Linea.idPrenda'
      'inner join Servicio on Servicio.idServicio = Linea.idServicio'
      'where Linea.idOrden = :pOrden')
    Left = 512
    Top = 105
  end
  object qPagos: TADOQuery
    Connection = cnConsultaOrdenes
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
      
        'select idPago as Id, dcmPago as Monto, dtePago as Fecha from Pag' +
        'o'
      'inner join Orden on Orden.idOrden = Pago.idOrden'
      'where Orden.idOrden = :pOrden')
    Left = 656
    Top = 40
  end
  object dsOrdenDetalle: TDataSource
    DataSet = qOrdenDetalle
    Left = 856
    Top = 136
  end
  object dsPagos: TDataSource
    DataSet = qPagos
    Left = 712
    Top = 39
  end
  object comLiquidacion: TADOCommand
    Connection = cnConsultaOrdenes
    Parameters = <>
    Left = 792
    Top = 85
  end
  object qParametros: TADOQuery
    Connection = cnConsultaOrdenes
    Parameters = <>
    SQL.Strings = (
      'select intParametro from sysParametro where idParametro = 3')
    Left = 512
    Top = 49
  end
  object spOrdenXId: TADOStoredProc
    Connection = cnConsultaOrdenes
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenXId;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
      end>
    Left = 848
    Top = 376
  end
  object dsOrdenXId: TDataSource
    DataSet = spOrdenXId
    Left = 656
    Top = 392
  end
end
