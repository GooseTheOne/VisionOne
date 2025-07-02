object frmOrdenesV2: TfrmOrdenesV2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Registro de Ordenes'
  ClientHeight = 659
  ClientWidth = 1001
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 19
  object Bevel1: TBevel
    Left = 277
    Top = 582
    Width = 195
    Height = 68
  end
  object Bevel2: TBevel
    Left = 550
    Top = 4
    Width = 443
    Height = 180
  end
  object Label10: TLabel
    Left = 105
    Top = 200
    Width = 55
    Height = 19
    Caption = 'Prenda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 105
    Top = 261
    Width = 61
    Height = 19
    Caption = 'Servicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 811
    Top = 266
    Width = 93
    Height = 19
    Caption = 'Descuento: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 827
    Top = 235
    Width = 77
    Height = 19
    Caption = 'Importe: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 841
    Top = 203
    Width = 63
    Height = 19
    Caption = 'Precio: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 535
    Top = 197
    Width = 46
    Height = 19
    Caption = 'Notas:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 490
    Top = 486
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
  object Label17: TLabel
    Left = 476
    Top = 517
    Width = 86
    Height = 19
    Caption = 'Descuentos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel
    Left = 498
    Top = 598
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
  object Label19: TLabel
    Left = 529
    Top = 630
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
  object Label20: TLabel
    Left = 501
    Top = 558
    Width = 61
    Height = 19
    Caption = 'TOTAL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel
    Left = 692
    Top = 564
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
  object Label23: TLabel
    Left = 281
    Top = 522
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
  object lblTipoServ: TLabel
    Left = 336
    Top = 261
    Width = 38
    Height = 19
    Alignment = taRightJustify
    Caption = 'SERV'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblPrecio: TLabel
    Left = 955
    Top = 301
    Width = 38
    Height = 21
    Alignment = taRightJustify
    Caption = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblOrden: TLabel
    Left = 753
    Top = 193
    Width = 52
    Height = 24
    Alignment = taCenter
    Caption = '0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label22: TLabel
    Left = 680
    Top = 197
    Width = 58
    Height = 19
    Caption = 'ORDEN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label24: TLabel
    Left = 848
    Top = 302
    Width = 56
    Height = 19
    Caption = 'Total: $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 680
    Top = 594
    Width = 83
    Height = 19
    Caption = 'Por Cobrar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label25: TLabel
    Left = 570
    Top = 44
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
  object Label26: TLabel
    Left = 565
    Top = 77
    Width = 68
    Height = 19
    Caption = 'Tel'#233'fono:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label27: TLabel
    Left = 579
    Top = 110
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
  object Label28: TLabel
    Left = 10
    Top = 11
    Width = 68
    Height = 19
    Caption = 'Tel'#233'fono:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label29: TLabel
    Left = 206
    Top = 11
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
  object Label1: TLabel
    Left = 828
    Top = 11
    Width = 34
    Height = 19
    Caption = 'Alta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 282
    Top = 621
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
  object Label3: TLabel
    Left = 352
    Top = 591
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
  object Label4: TLabel
    Left = 639
    Top = 10
    Width = 70
    Height = 19
    Caption = 'CLIENTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 282
    Top = 561
    Width = 188
    Height = 18
    Caption = 'Ingreso Manual de Orden'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 684
    Top = 493
    Width = 103
    Height = 19
    Caption = '# PRENDAS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgCliente2: TDBGrid
    Left = 4
    Top = 41
    Width = 538
    Height = 143
    DataSource = dsGetClientesCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 44
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'strNombre'
        Title.Caption = 'Nombre'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 276
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
        Width = 127
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
        Width = 114
        Visible = True
      end>
  end
  object edCantidad: TEdit
    Left = 4
    Top = 204
    Width = 95
    Height = 47
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '1'
    OnChange = edCantidadChange
    OnEnter = edCantidadEnter
    OnExit = edCantidadExit
    OnKeyDown = edCantidadKeyDown
  end
  object memNotas: TMemo
    Left = 535
    Top = 220
    Width = 270
    Height = 95
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnExit = memNotasExit
    OnKeyDown = memNotasKeyDown
  end
  object dbcbxPrenda: TDBLookupComboBox
    Left = 105
    Top = 223
    Width = 266
    Height = 27
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idPrenda'
    ListField = 'strPrenda'
    ListSource = dsGetPrendas
    ParentFont = False
    TabOrder = 9
    OnClick = dbcbxPrendaClick
  end
  object edDescuento: TEdit
    Left = 910
    Top = 264
    Width = 83
    Height = 27
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #39'0'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    Text = '0.00'
    OnEnter = edDescuentoEnter
    OnExit = edDescuentoExit
    OnKeyDown = edDescuentoKeyDown
  end
  object edImporte: TEdit
    Left = 910
    Top = 233
    Width = 83
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #39'0'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    Text = '0.00'
  end
  object edPrecio: TEdit
    Left = 910
    Top = 200
    Width = 83
    Height = 27
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = #39'0'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    Text = '0.00'
    OnEnter = edPrecioEnter
    OnExit = edPrecioExit
    OnKeyDown = edPrecioKeyDown
  end
  object btnAgregarServicio: TButton
    Left = 406
    Top = 281
    Width = 122
    Height = 32
    Caption = 'Agregar Servicio'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = btnAgregarServicioClick
  end
  object edImporteSinDesc: TEdit
    Left = 570
    Top = 483
    Width = 97
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    Text = '0.00'
  end
  object edDescuentoTotal: TEdit
    Left = 570
    Top = 514
    Width = 97
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 27
    Text = '0.00'
  end
  object edSubtotal: TEdit
    Left = 570
    Top = 595
    Width = 97
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 28
    Text = '0.00'
  end
  object edIVA: TEdit
    Left = 570
    Top = 627
    Width = 97
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 29
    Text = '0.00'
  end
  object edTotal: TEdit
    Left = 570
    Top = 555
    Width = 97
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 30
    Text = '0.00'
  end
  object edIngreso: TEdit
    Left = 769
    Top = 561
    Width = 97
    Height = 27
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    Text = '0.00'
    OnEnter = edIngresoEnter
    OnExit = edIngresoExit
    OnKeyDown = edIngresoKeyDown
  end
  object Panel2: TPanel
    Left = 476
    Top = 546
    Width = 191
    Height = 4
    Alignment = taRightJustify
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 31
  end
  object Panel1: TPanel
    Left = 476
    Top = 587
    Width = 191
    Height = 4
    Alignment = taRightJustify
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 32
  end
  object objCalendario: TMonthCalendar
    Left = 4
    Top = 481
    Width = 268
    Height = 160
    CalColors.BackColor = clAqua
    CalColors.TextColor = clHighlight
    CalColors.TitleBackColor = clYellow
    CalColors.TitleTextColor = clLime
    Date = 44378.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    WeekNumbers = True
    OnClick = objCalendarioClick
  end
  object btnAgenda: TButton
    Left = 341
    Top = 480
    Width = 116
    Height = 33
    Caption = 'Agenda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 33
    OnClick = btnAgendaClick
  end
  object edFechaEntrega: TEdit
    Left = 341
    Top = 519
    Width = 116
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object btnGuardaNota: TButton
    Left = 753
    Top = 622
    Width = 113
    Height = 32
    Caption = 'Guarda Nota'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    OnClick = btnGuardaNotaClick
  end
  object btnLiquidar: TButton
    Left = 882
    Top = 480
    Width = 111
    Height = 32
    Caption = 'Liquidar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = btnLiquidarClick
  end
  object btnImprimir: TButton
    Left = 882
    Top = 517
    Width = 111
    Height = 62
    Caption = 'Imprimir'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = btnImprimirClick
  end
  object btnSalir: TButton
    Left = 882
    Top = 622
    Width = 111
    Height = 32
    Caption = 'Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = btnSalirClick
  end
  object dbcbxServicio: TDBLookupComboBox
    Left = 105
    Top = 284
    Width = 296
    Height = 27
    DropDownRows = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idServicio'
    ListField = 'strServicio'
    ListSource = dsGetPrecioPorPrenda
    ParentFont = False
    TabOrder = 11
    OnClick = dbcbxServicioClick
  end
  object Panel4: TPanel
    Left = 4
    Top = 189
    Width = 995
    Height = 4
    Alignment = taRightJustify
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 34
  end
  object Panel5: TPanel
    Left = 4
    Top = 471
    Width = 989
    Height = 4
    Alignment = taRightJustify
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 35
  end
  object VPENota: TVPEngine
    Left = 1226
    Top = 8
    Width = 280
    Height = 73
    BorderStyle = bsNone
    TabOrder = 36
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
  object dtpRetro: TDateTimePicker
    Left = 329
    Top = 618
    Width = 135
    Height = 27
    Date = 44396.000000000000000000
    Time = 44396.000000000000000000
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 37
    OnChange = dtpRetroChange
  end
  object dbgOrdenPrenda: TDBGrid
    Left = 4
    Top = 326
    Width = 271
    Height = 139
    DataSource = dsOrdenPrenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 38
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgOrdenPrendaCellClick
    OnDblClick = dbgOrdenPrendaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'intCantidad'
        Title.Caption = 'Cant.'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strPrenda'
        Title.Caption = 'Prenda'
        Width = 173
        Visible = True
      end>
  end
  object dbgLineaServicio: TDBGrid
    Left = 281
    Top = 326
    Width = 712
    Height = 139
    DataSource = dsLineaServicio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 39
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgLineaServicioDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'strServicio'
        Title.Caption = 'Servicio'
        Width = 231
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmPrecio'
        Title.Caption = 'Precio'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmImporte'
        Title.Caption = 'Importe'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmDescuento'
        Title.Caption = 'Desc.'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmTotal'
        Title.Caption = 'Total'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNota'
        Title.Caption = 'Notas'
        Width = 255
        Visible = True
      end>
  end
  object btnLimpiaTodo: TButton
    Left = 882
    Top = 585
    Width = 111
    Height = 32
    Caption = 'Limpiar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnClick = btnLimpiaTodoClick
  end
  object btnAgregarPrenda: TButton
    Left = 406
    Top = 221
    Width = 122
    Height = 32
    Caption = 'Agregar Prenda'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = btnAgregarPrendaClick
  end
  object dblkcFormaPago: TDBLookupComboBox
    Left = 698
    Top = 528
    Width = 168
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
    TabOrder = 16
  end
  object btnMas: TButton
    Left = 52
    Top = 263
    Width = 47
    Height = 50
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 40
    OnClick = btnMasClick
  end
  object btnMenos: TButton
    Left = 4
    Top = 263
    Width = 48
    Height = 50
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 41
    OnClick = btnMenosClick
  end
  object Panel3: TPanel
    Left = 811
    Top = 293
    Width = 188
    Height = 4
    Alignment = taRightJustify
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 42
  end
  object edPorCobrar: TEdit
    Left = 769
    Top = 591
    Width = 97
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 43
    Text = '0.00'
  end
  object dbeNombre: TDBEdit
    Left = 639
    Top = 41
    Width = 328
    Height = 27
    DataField = 'strNombre'
    DataSource = dsGetClientesCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnEnter = dbeNombreEnter
    OnExit = dbeNombreExit
  end
  object dbeTelefono: TDBEdit
    Left = 639
    Top = 74
    Width = 148
    Height = 27
    DataField = 'strTelefono'
    DataSource = dsGetClientesCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dbeCorreo: TDBEdit
    Left = 639
    Top = 107
    Width = 208
    Height = 27
    DataField = 'strCorreo'
    DataSource = dsGetClientesCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 579
    Top = 140
    Width = 384
    Height = 36
    DataSource = dsGetClientesCat
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    Hints.Strings = (
      'First record'
      'Prior record'
      'Next record'
      'Last record'
      'Agregar Cliente'
      'Borrar Cliente'
      'Editar cliente'
      'Guardar'
      'Cancelar'
      ''
      'Refresh data'
      'Apply updates'
      'Cancel updates')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 871
    Top = 92
    Width = 96
    Height = 44
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Caption = 'Genero'
    Columns = 2
    DataField = 'chrGenero'
    DataSource = dsGetClientesCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'H'
      'M')
    ParentFont = False
    TabOrder = 6
  end
  object edTelefono2: TEdit
    Left = 78
    Top = 8
    Width = 123
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyDown = edTelefono2KeyDown
  end
  object edNombre2: TEdit
    Left = 264
    Top = 8
    Width = 193
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = edNombre2Exit
    OnKeyDown = edNombre2KeyDown
  end
  object btnBuscar2: TButton
    Left = 464
    Top = 8
    Width = 78
    Height = 27
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnBuscar2Click
  end
  object dbeAlta: TDBEdit
    Left = 871
    Top = 8
    Width = 96
    Height = 27
    DataField = 'dteAlta'
    DataSource = dsGetClientesCat
    Enabled = False
    ReadOnly = True
    TabOrder = 45
  end
  object edFolio: TEdit
    Left = 395
    Top = 588
    Width = 69
    Height = 27
    Alignment = taRightJustify
    Enabled = False
    TabOrder = 46
  end
  object edPrendas: TEdit
    Left = 792
    Top = 481
    Width = 74
    Height = 41
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 47
    Text = '0'
    OnEnter = edPrendasEnter
    OnExit = edPrendasExit
  end
  object chbxRetro: TCheckBox
    Left = 295
    Top = 593
    Width = 33
    Height = 17
    TabOrder = 48
    OnClick = chbxRetroClick
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
    Left = 33
    Top = 103
  end
  object spGetPrendas: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetPrendas;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 1060
    Top = 110
  end
  object dsGetPrendas: TDataSource
    DataSet = spGetPrendas
    OnDataChange = dsGetPrendasDataChange
    Left = 1172
    Top = 110
  end
  object spGetPrecioPorPrenda: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetPrecioPorPrendaOrderbyPrenda;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintActivo'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidPrenda'
        Attributes = [paNullable]
        DataType = ftInteger
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
    Left = 1060
    Top = 158
  end
  object dsGetPrecioPorPrenda: TDataSource
    DataSet = spGetPrecioPorPrenda
    Left = 1172
    Top = 158
  end
  object spInsertOrden: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spInsertOrden;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidCliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidUsuario'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pdteFecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 1060
    Top = 205
  end
  object spGetLineasPorOrden: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
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
    Left = 1268
    Top = 341
  end
  object dsGetLineasPorOrden: TDataSource
    DataSet = spGetLineasPorOrden
    Left = 1388
    Top = 341
  end
  object spUpdateOrden: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spUpdateOrden;1'
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
      end
      item
        Name = '@pintFolioAnt'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteEntrega'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pdcmImporte'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pdcmDescuento'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pdcmSubtotal'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pdcmIVA'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pdcmTotal'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pdcmACuenta'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pdcmPorPagar'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pintestatus'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPrendas'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteRecepcion'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintRetro'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1060
    Top = 301
  end
  object spInsertPagoWithOrden: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spInsertPagoWithOrden;1'
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
      end
      item
        Name = '@pdcmImporte'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pdteFechaPago'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pidTipoPago'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end
      item
        Name = '@pidFormaPago'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1260
    Top = 541
  end
  object spOrdenPrenda: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
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
    Left = 1061
    Top = 345
  end
  object dsOrdenPrenda: TDataSource
    DataSet = spOrdenPrenda
    OnDataChange = dsOrdenPrendaDataChange
    Left = 1166
    Top = 342
  end
  object spInsertOrdenPrenda: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spInsertOrdenPrenda;1'
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
      end
      item
        Name = '@pidPrenda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintCantidad'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1060
    Top = 253
  end
  object spInsertLineaServicio: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spInsertLineaServicio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidOrdenPrenda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidServicio'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pidPrecio'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintCantidad'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdcmPrecio'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdcmImporte'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdcmDescuento'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdcmTotal'
        Attributes = [paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 10
        Value = Null
      end
      item
        Name = '@pstrNota'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 1264
    Top = 207
  end
  object spLineaServicio: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetLineaServicio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidOrdenPrenda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1060
    Top = 593
  end
  object dsLineaServicio: TDataSource
    DataSet = spLineaServicio
    Left = 1164
    Top = 593
  end
  object spCalculaTotal: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spCalculaTotal;1'
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
    Left = 1060
    Top = 493
  end
  object dsCalculaTotal: TDataSource
    DataSet = spCalculaTotal
    Left = 1164
    Top = 493
  end
  object spDeleteLineaServicio: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spDeleteLineaServicio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1268
    Top = 261
  end
  object spDeleteOrdenPrenda: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spDeleteOrdenPrenda;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1061
    Top = 397
  end
  object spFormaPago: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetFormaPago;1'
    Parameters = <>
    Left = 1061
    Top = 444
  end
  object dsFormaPago: TDataSource
    DataSet = spFormaPago
    Left = 1166
    Top = 447
  end
  object spGetClientesCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetClientesCat;1'
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
        Name = '@pstrDato'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 1056
    Top = 64
  end
  object dsGetClientesCat: TDataSource
    DataSet = spGetClientesCat
    OnDataChange = dsGetClientesCatDataChange
    Left = 1168
    Top = 64
  end
  object spDeletePagosXOrden: TADOStoredProc
    Connection = Conn
    CommandTimeout = 5
    ProcedureName = 'spDeletePagosXOrden;1'
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
    Left = 1064
    Top = 544
  end
end
