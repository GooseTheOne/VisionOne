object frmConsultaOrdenes: TfrmConsultaOrdenes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Ordenes'
  ClientHeight = 538
  ClientWidth = 1016
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
  object Label11: TLabel
    Left = 55
    Top = 51
    Width = 50
    Height = 19
    Caption = 'Orden:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 45
    Top = 174
    Width = 60
    Height = 19
    Caption = 'Entrega:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 400
    Top = 51
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
  object Label14: TLabel
    Left = 385
    Top = 82
    Width = 79
    Height = 19
    Caption = 'Descuento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 431
    Top = 113
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
  object Label16: TLabel
    Left = 415
    Top = 144
    Width = 49
    Height = 19
    Caption = 'Total:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel
    Left = 395
    Top = 173
    Width = 69
    Height = 19
    Caption = 'Adelanto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 422
    Top = 205
    Width = 38
    Height = 19
    Caption = 'CxC:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label19: TLabel
    Left = 49
    Top = 205
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
  object Label20: TLabel
    Left = 8
    Top = 238
    Width = 94
    Height = 19
    Caption = 'Estatus Cont:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label21: TLabel
    Left = 51
    Top = 82
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
  object Label22: TLabel
    Left = 28
    Top = 144
    Width = 77
    Height = 19
    Caption = 'Recepci'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 572
    Top = 51
    Width = 72
    Height = 19
    Caption = 'Importe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 81
    Top = 113
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
    Left = 40
    Top = 269
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
  object Label5: TLabel
    Left = 208
    Top = 51
    Width = 62
    Height = 19
    Caption = 'Prendas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnBuscar: TButton
    Left = 257
    Top = 8
    Width = 96
    Height = 28
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
    OnKeyDown = edOrdenKeyDown
  end
  object btLimpiar: TButton
    Left = 359
    Top = 8
    Width = 98
    Height = 28
    Caption = 'Limpiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 80
    Top = 8
    Width = 42
    Height = 28
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 207
    Top = 8
    Width = 44
    Height = 28
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button2Click
  end
  object dbeOrden: TDBEdit
    Left = 115
    Top = 48
    Width = 57
    Height = 27
    DataField = 'Orden'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object dbeCliente: TDBEdit
    Left = 115
    Top = 79
    Width = 257
    Height = 27
    DataField = 'Cliente'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object dbeRecepcion: TDBEdit
    Left = 115
    Top = 141
    Width = 257
    Height = 27
    DataField = 'Recepcion'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object dbeEntrega: TDBEdit
    Left = 115
    Top = 171
    Width = 121
    Height = 27
    DataField = 'Entrega'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object dbeSubtotal: TDBEdit
    Left = 466
    Top = 48
    Width = 96
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'Subtotal'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 9
  end
  object dbeDesc: TDBEdit
    Left = 466
    Top = 79
    Width = 96
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'Descuento'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 10
  end
  object dbeIVA: TDBEdit
    Left = 466
    Top = 110
    Width = 96
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'IVA'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 11
  end
  object dbeTotal: TDBEdit
    Left = 466
    Top = 141
    Width = 96
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'Total'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 12
  end
  object dbeAdelanto: TDBEdit
    Left = 466
    Top = 172
    Width = 96
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'Adelanto'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 13
  end
  object dbeCxC: TDBEdit
    Left = 466
    Top = 202
    Width = 96
    Height = 27
    BiDiMode = bdRightToLeft
    DataField = 'CxC'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 14
  end
  object dbeEstatus: TDBEdit
    Left = 115
    Top = 202
    Width = 121
    Height = 27
    DataField = 'Estatus'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object dbeEstatusCont: TDBEdit
    Left = 115
    Top = 235
    Width = 121
    Height = 27
    DataField = 'Estatus Cont'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 554
    Width = 1054
    Height = 194
    DataSource = dsLineasXOrden
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'intCantidad'
        Title.Caption = 'Cant'
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
        FieldName = 'strPrenda'
        Title.Caption = 'Prenda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 200
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
        Width = 220
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmPrecio'
        Title.Caption = 'Precio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmDescuento'
        Title.Caption = 'Desc.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmMonto'
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
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
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNota'
        Title.Caption = 'Nota'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 336
        Visible = True
      end>
  end
  object btnEntregar: TButton
    Left = 680
    Top = 262
    Width = 115
    Height = 30
    Caption = 'Entregar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = btnEntregarClick
  end
  object btnCancelar: TButton
    Left = 801
    Top = 262
    Width = 105
    Height = 30
    Caption = 'Devoluci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = btnCancelarClick
  end
  object btnAdelanto: TButton
    Left = 896
    Top = 46
    Width = 114
    Height = 30
    Caption = 'Adelanto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = btnAdelantoClick
  end
  object btnLiquidar: TButton
    Left = 568
    Top = 262
    Width = 106
    Height = 30
    Caption = 'Liquidar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    Visible = False
    OnClick = btnLiquidarClick
  end
  object DBGrid4: TDBGrid
    Left = 568
    Top = 110
    Width = 442
    Height = 146
    DataSource = dsPagosXOrden
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'dtePago'
        Title.Caption = 'Fecha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 212
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmPago'
        Title.Caption = 'Importe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoPago'
        Title.Caption = 'Tipo Pago'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strFormaPago'
        Title.Caption = 'Forma Pago'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strEstatusCont'
        Title.Caption = 'Estatus Cont.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 90
        Visible = True
      end>
  end
  object edImportePago: TEdit
    Left = 650
    Top = 48
    Width = 79
    Height = 27
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
  end
  object dtpFechaPago: TDateTimePicker
    Left = 568
    Top = 14
    Width = 322
    Height = 27
    Date = 44369.000000000000000000
    Time = 0.999988425923220300
    DateFormat = dfLong
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 298
    Width = 1002
    Height = 235
    DataSource = dsOrdenPrendaServicio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idOrdenPrenda'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'intCantidad'
        Title.Caption = 'Cant.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 47
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
        Width = 242
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
        Width = 227
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmPrecio'
        Title.Caption = 'Precio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
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
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuento'
        Title.Caption = 'Desc.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmTotal'
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNota'
        Title.Caption = 'Notas'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 260
        Visible = True
      end>
  end
  object VPENota: TVPEngine
    Left = 737
    Top = 130
    Width = 100
    Height = 41
    BorderStyle = bsNone
    TabOrder = 26
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
  object Button3: TButton
    Left = 470
    Top = 8
    Width = 92
    Height = 27
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    OnClick = Button3Click
  end
  object dbeTelefono: TDBEdit
    Left = 115
    Top = 110
    Width = 138
    Height = 27
    DataField = 'Telefono'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
  end
  object dbeCorreo: TDBEdit
    Left = 251
    Top = 235
    Width = 159
    Height = 27
    DataField = 'Correo'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 29
  end
  object btnPagar: TButton
    Left = 896
    Top = 10
    Width = 114
    Height = 30
    Caption = 'Liquidar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 30
    OnClick = btnPagarClick
  end
  object dbeSucursal: TDBEdit
    Left = 115
    Top = 266
    Width = 169
    Height = 27
    DataField = 'Sucursal'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 31
  end
  object dblkcFormaPago: TDBLookupComboBox
    Left = 735
    Top = 48
    Width = 155
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idFormaPago'
    ListField = 'strFormaPago'
    ListSource = dsFormaPago
    ParentFont = False
    TabOrder = 32
  end
  object btnDevolucion: TButton
    Left = 912
    Top = 262
    Width = 99
    Height = 30
    Caption = 'Cancelar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 33
    OnClick = btnDevolucionClick
  end
  object dbePrendas: TDBEdit
    Left = 277
    Top = 48
    Width = 76
    Height = 27
    DataField = 'Prendas'
    DataSource = dsOrdenXId
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 34
  end
  object dbeIdCliente: TDBEdit
    Left = 441
    Top = 235
    Width = 121
    Height = 21
    DataField = 'idCliente'
    DataSource = dsOrdenXId
    TabOrder = 35
    Visible = False
  end
  object dbeIdUsuario: TDBEdit
    Left = 441
    Top = 262
    Width = 121
    Height = 21
    DataField = 'idUsuario'
    DataSource = dsOrdenXId
    TabOrder = 36
    Visible = False
  end
  object dbeIdSucursal: TDBEdit
    Left = 440
    Top = 288
    Width = 121
    Height = 21
    DataField = 'idSucursal'
    DataSource = dsOrdenXId
    TabOrder = 37
    Visible = False
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
    Left = 1072
    Top = 17
  end
  object qConsultaOrdenes: TADOQuery
    Connection = Conn
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
    Left = 512
    Top = 351
  end
  object qOrdenDetalle: TADOQuery
    Connection = Conn
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
    Left = 592
    Top = 351
  end
  object qPagos: TADOQuery
    Connection = Conn
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
    Left = 520
    Top = 422
  end
  object dsOrdenDetalle: TDataSource
    DataSet = qOrdenDetalle
    Left = 384
    Top = 414
  end
  object dsPagos: TDataSource
    DataSet = qPagos
    Left = 592
    Top = 429
  end
  object comLiquidacion: TADOCommand
    Connection = Conn
    Parameters = <>
    Left = 1073
    Top = 272
  end
  object qParametros: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'select intParametro from sysParametro where idParametro = 3')
    Left = 384
    Top = 351
  end
  object spOrdenXId: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenXId;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1073
    Top = 80
  end
  object dsOrdenXId: TDataSource
    DataSet = spOrdenXId
    Left = 1057
    Top = 344
  end
  object spLineasXOrden: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLineasPorOrden;1'
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
        Value = 0
      end>
    Left = 608
    Top = 560
  end
  object dsLineasXOrden: TDataSource
    DataSet = spLineasXOrden
    Left = 712
    Top = 568
  end
  object spPagosXOrden: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXOrden;1'
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
    Left = 1073
    Top = 146
  end
  object dsPagosXOrden: TDataSource
    DataSet = spPagosXOrden
    Left = 1073
    Top = 211
  end
  object spOrdenPrenda: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenPrenda;1'
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
    Left = 48
    Top = 406
  end
  object dsOrdenPrenda: TDataSource
    AutoEdit = False
    DataSet = spOrdenPrenda
    OnDataChange = dsOrdenPrendaDataChange
    Left = 48
    Top = 350
  end
  object spOrdenPrendaServicio: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenPrendaServicio;1'
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
    Left = 256
    Top = 414
  end
  object dsOrdenPrendaServicio: TDataSource
    DataSet = spOrdenPrendaServicio
    Left = 264
    Top = 350
  end
  object spFormaPago: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetFormaPago;1'
    Parameters = <>
    Left = 152
    Top = 356
  end
  object dsFormaPago: TDataSource
    DataSet = spFormaPago
    Left = 152
    Top = 420
  end
  object spGetLineasPorOrden: TADOStoredProc
    Connection = Conn
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
    Left = 760
    Top = 428
  end
  object spGetUltimaOrden: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetUltimaOrden;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
      end>
    Left = 728
    Top = 360
  end
end
