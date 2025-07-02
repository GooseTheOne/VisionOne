object frmReportesAdmin: TfrmReportesAdmin
  Left = 0
  Top = 0
  HorzScrollBar.Size = 5
  VertScrollBar.Size = 5
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reportes Administrador'
  ClientHeight = 1117
  ClientWidth = 2488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label47: TLabel
    Left = 575
    Top = 3
    Width = 54
    Height = 16
    Caption = 'Sucursal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label73: TLabel
    Left = 330
    Top = 81
    Width = 34
    Height = 16
    Alignment = taRightJustify
    Caption = '0.0 %'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dtpCalendario: TDateTimePicker
    Left = 170
    Top = 1
    Width = 186
    Height = 24
    CalAlignment = dtaRight
    CalColors.BackColor = clHotLight
    Date = 44366.000000000000000000
    Time = 0.560741909721400600
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnAtras: TButton
    Left = 89
    Top = 0
    Width = 75
    Height = 25
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnAtrasClick
  end
  object btnAdelante: TButton
    Left = 362
    Top = 0
    Width = 75
    Height = 25
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnAdelanteClick
  end
  object btnConsultar: TButton
    Left = 459
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnConsultarClick
  end
  object dblkcSucursales: TDBLookupComboBox
    Left = 635
    Top = 1
    Width = 183
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idSucursal'
    ListField = 'strSucursal'
    ListSource = dsGetSucursales
    ParentFont = False
    TabOrder = 5
    OnClick = dblkcSucursalesClick
  end
  object tcViewers: TTabControl
    Left = 0
    Top = 28
    Width = 1000
    Height = 677
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Tabs.Strings = (
      'Resumen'
      'Ventas'
      'Vtas Cerr.'
      'Adelantos'
      'Liquidaciones'
      'Pagos'
      'Otros Pagos'
      'Gastos'
      'Detalle Semanal')
    TabIndex = 0
    OnChange = tcViewersChange
    object pnlSemanaDetalle: TPanel
      Left = 3
      Top = 25
      Width = 994
      Height = 588
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 8
      Visible = False
      object Label27: TLabel
        Left = 114
        Top = 70
        Width = 51
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 84
        Top = 96
        Width = 81
        Height = 16
        Caption = 'Descuentos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 136
        Top = 181
        Width = 29
        Height = 16
        Alignment = taRightJustify
        Caption = 'IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 128
        Top = 122
        Width = 37
        Height = 16
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 71
        Top = 268
        Width = 94
        Height = 16
        Alignment = taRightJustify
        Caption = 'CxC deVentas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 51
        Top = 214
        Width = 114
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ventas Cerradas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 94
        Top = 241
        Width = 71
        Height = 16
        Alignment = taRightJustify
        Caption = 'Adelantos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 60
        Top = 302
        Width = 105
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ingreso Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 74
        Top = 329
        Width = 91
        Height = 16
        Alignment = taRightJustify
        Caption = 'Liquidaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 81
        Top = 356
        Width = 84
        Height = 16
        Alignment = taRightJustify
        Caption = 'Otros Pagos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label37: TLabel
        Left = 74
        Top = 389
        Width = 91
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ingreso Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 116
        Top = 416
        Width = 49
        Height = 16
        Alignment = taRightJustify
        Caption = 'Gastos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label39: TLabel
        Left = 108
        Top = 521
        Width = 57
        Height = 16
        Alignment = taRightJustify
        Caption = 'Efectivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label40: TLabel
        Left = 282
        Top = 22
        Width = 38
        Height = 16
        Caption = 'Lunes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label41: TLabel
        Left = 382
        Top = 22
        Width = 46
        Height = 16
        Caption = 'Martes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label42: TLabel
        Left = 481
        Top = 22
        Width = 61
        Height = 16
        Caption = 'Miercoles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 580
        Top = 22
        Width = 45
        Height = 16
        Caption = 'Jueves'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 677
        Top = 22
        Width = 49
        Height = 16
        Caption = 'Viernes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 771
        Top = 22
        Width = 48
        Height = 16
        Caption = 'Sabado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label46: TLabel
        Left = 876
        Top = 22
        Width = 40
        Height = 16
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape6: TShape
        Left = 40
        Top = 147
        Width = 933
        Height = 3
        Brush.Color = clBlue
      end
      object Shape7: TShape
        Left = 40
        Top = 205
        Width = 933
        Height = 3
        Brush.Color = clBlue
      end
      object Shape8: TShape
        Left = 40
        Top = 293
        Width = 933
        Height = 3
        Brush.Color = clBlue
      end
      object Shape9: TShape
        Left = 40
        Top = 380
        Width = 933
        Height = 3
        Brush.Color = clBlue
      end
      object Shape10: TShape
        Left = 40
        Top = 441
        Width = 933
        Height = 3
        Brush.Color = clBlue
      end
      object lblLunes: TLabel
        Left = 282
        Top = 40
        Width = 6
        Height = 16
        Caption = 'L'
      end
      object lblMiercoles: TLabel
        Left = 481
        Top = 40
        Width = 10
        Height = 16
        Caption = 'M'
      end
      object lblJueves: TLabel
        Left = 580
        Top = 40
        Width = 5
        Height = 16
        Caption = 'J'
      end
      object lblViernes: TLabel
        Left = 677
        Top = 40
        Width = 8
        Height = 16
        Caption = 'V'
      end
      object lblSabado: TLabel
        Left = 771
        Top = 40
        Width = 8
        Height = 16
        Caption = 'S'
      end
      object lblMartes: TLabel
        Left = 382
        Top = 40
        Width = 10
        Height = 16
        Caption = 'M'
      end
      object Shape11: TShape
        Left = 40
        Top = 483
        Width = 933
        Height = 3
        Brush.Color = clBlue
      end
      object Label48: TLabel
        Left = 64
        Top = 493
        Width = 101
        Height = 16
        Alignment = taRightJustify
        Caption = 'Transferencias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label52: TLabel
        Left = 76
        Top = 453
        Width = 89
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ingreso Neto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label53: TLabel
        Left = 110
        Top = 158
        Width = 57
        Height = 16
        Caption = 'Importe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label54: TLabel
        Left = 184
        Top = 22
        Width = 55
        Height = 16
        Caption = 'Domingo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDomingo: TLabel
        Left = 184
        Top = 40
        Width = 6
        Height = 16
        Caption = 'L'
      end
      object dbeVentasDiaLunes: TDBEdit
        Left = 282
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object dbeDescDiaLunes: TDBEdit
        Left = 282
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
      object dbeIVADiaLunes: TDBEdit
        Left = 282
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
      end
      object dbeTotalDiaLunes: TDBEdit
        Left = 282
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object edCxCDiaLunes: TEdit
        Left = 282
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = '0.00'
      end
      object dbeVtasCerrDiaLunes: TDBEdit
        Left = 282
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
      end
      object edIngresoVentasDiaLunes: TEdit
        Left = 282
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Text = '0.00'
      end
      object dbeLiquDiaLunes: TDBEdit
        Left = 282
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquDialunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 7
      end
      object dbeOtrPagosDiaLunes: TDBEdit
        Left = 282
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrPagosDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 8
      end
      object dbePagosDiaLunes: TDBEdit
        Left = 282
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 9
      end
      object dbeGastosDiaLunes: TDBEdit
        Left = 282
        Top = 413
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 10
      end
      object edUtilidadDiaLunes: TEdit
        Left = 282
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        Text = '0.00'
      end
      object dbeVentasDiaMartes: TDBEdit
        Left = 382
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 12
      end
      object dbeDescDiaMartes: TDBEdit
        Left = 382
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 13
      end
      object dbeIVADiaMartes: TDBEdit
        Left = 382
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 14
      end
      object dbeTotalDiaMartes: TDBEdit
        Left = 382
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 15
      end
      object edCxCDiaMartes: TEdit
        Left = 382
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        Text = '0.00'
      end
      object dbeVtasCerrDiaMartes: TDBEdit
        Left = 382
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 17
      end
      object edIngresoVentasDiaMartes: TEdit
        Left = 382
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        Text = '0.00'
      end
      object dbeLiquDiaMartes: TDBEdit
        Left = 382
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 19
      end
      object dbeOtrPagosDiaMartes: TDBEdit
        Left = 382
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrPagosDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 20
      end
      object dbePagosDiaMartes: TDBEdit
        Left = 382
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 21
      end
      object dbeGastosDiaMartes: TDBEdit
        Left = 382
        Top = 414
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 22
      end
      object edUtilidadDiaMartes: TEdit
        Left = 382
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
        Text = '0.00'
      end
      object edUtilidadDiaMierc: TEdit
        Left = 481
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
        Text = '0.00'
      end
      object dbeGastosDiaMierc: TDBEdit
        Left = 481
        Top = 414
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 25
      end
      object dbePagosDiaMierc: TDBEdit
        Left = 481
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 26
      end
      object dbeOtrPagosDiaMierc: TDBEdit
        Left = 481
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrPagosDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 27
      end
      object dbeLiquDiaMierc: TDBEdit
        Left = 481
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 28
      end
      object edIngresoVentasDiaMierc: TEdit
        Left = 481
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
        Text = '0.00'
      end
      object dbeVtasCerrDiaMierc: TDBEdit
        Left = 481
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 30
      end
      object edCxCDiaMierc: TEdit
        Left = 481
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
        Text = '0.00'
      end
      object dbeTotalDiaMierc: TDBEdit
        Left = 481
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 32
      end
      object dbeIVADiaMierc: TDBEdit
        Left = 481
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 33
      end
      object dbeDescDiaMierc: TDBEdit
        Left = 481
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 34
      end
      object dbeVentasDiaMierc: TDBEdit
        Left = 481
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 35
      end
      object edUtilidadDiaJueves: TEdit
        Left = 580
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
        Text = '0.00'
      end
      object dbeGastosDiaJueves: TDBEdit
        Left = 580
        Top = 414
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 37
      end
      object dbePagosDiaJueves: TDBEdit
        Left = 580
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 38
      end
      object dbeOtrPagosDiaJueves: TDBEdit
        Left = 580
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrPagosDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 39
      end
      object dbeLiquDiaJueves: TDBEdit
        Left = 580
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 40
      end
      object edIngresoVentasDiaJueves: TEdit
        Left = 580
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 41
        Text = '0.00'
      end
      object dbeVtasCerrDiaJueves: TDBEdit
        Left = 580
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 42
      end
      object edCxCDiaJueves: TEdit
        Left = 580
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 43
        Text = '0.00'
      end
      object dbeTotalDiaJueves: TDBEdit
        Left = 580
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 44
      end
      object dbeIVADiaJueves: TDBEdit
        Left = 580
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 45
      end
      object dbeDescDiaJueves: TDBEdit
        Left = 580
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 46
      end
      object dbeVentasDiaJueves: TDBEdit
        Left = 580
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 47
      end
      object edUtilidadDiaViernes: TEdit
        Left = 677
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 48
        Text = '0.00'
      end
      object dbeGastosDiaViernes: TDBEdit
        Left = 677
        Top = 414
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 49
      end
      object dbePagosDiaViernes: TDBEdit
        Left = 677
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 50
      end
      object dbeOtrPagosDiaViernes: TDBEdit
        Left = 677
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrPagosDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 51
      end
      object dbeLiquDiaViernes: TDBEdit
        Left = 677
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 52
      end
      object edIngresoVentasDiaViernes: TEdit
        Left = 677
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 53
        Text = '0.00'
      end
      object dbeVtasCerrDiaViernes: TDBEdit
        Left = 677
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 54
      end
      object edCxCDiaViernes: TEdit
        Left = 677
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 55
        Text = '0.00'
      end
      object dbeTotalDiaViernes: TDBEdit
        Left = 677
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 56
      end
      object dbeIVADiaViernes: TDBEdit
        Left = 677
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 57
      end
      object dbeDescDiaViernes: TDBEdit
        Left = 677
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 58
      end
      object dbeVentasDiaViernes: TDBEdit
        Left = 677
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 59
      end
      object edUtilidadDiaSabado: TEdit
        Left = 771
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 60
        Text = '0.00'
      end
      object dbeGastosDiaSabado: TDBEdit
        Left = 771
        Top = 414
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 61
      end
      object dbePagosDiaSabado: TDBEdit
        Left = 771
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 62
      end
      object dbeOtrPagosDiaSabado: TDBEdit
        Left = 771
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrPagosDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 63
      end
      object dbeLiquDiaSabado: TDBEdit
        Left = 771
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 64
      end
      object edIngresoVentasDiaSabado: TEdit
        Left = 771
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 65
        Text = '0.00'
      end
      object dbeVtasCerrDiaSabado: TDBEdit
        Left = 771
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 66
      end
      object edCxCDiaSabado: TEdit
        Left = 771
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 67
        Text = '0.00'
      end
      object dbeTotalDiaSabado: TDBEdit
        Left = 771
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 68
      end
      object dbeIVADiaSabado: TDBEdit
        Left = 771
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 69
      end
      object dbeDescDiaSabado: TDBEdit
        Left = 771
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 70
      end
      object dbeVentasDiaSabado: TDBEdit
        Left = 771
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 71
      end
      object dbeAdelDiaLunes: TDBEdit
        Left = 282
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 72
      end
      object dbeAdelDiaMartes: TDBEdit
        Left = 382
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 73
      end
      object dbeAdelDiaMierc: TDBEdit
        Left = 481
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 74
      end
      object dbeAdelDiaJueves: TDBEdit
        Left = 580
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 75
      end
      object dbeAdelDiaViernes: TDBEdit
        Left = 677
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 76
      end
      object dbeAdelDiaSabado: TDBEdit
        Left = 771
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 77
      end
      object edUtilidadDiaWeek: TEdit
        Left = 876
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 78
        Text = '0.00'
      end
      object dbeGastosDiaWeek: TDBEdit
        Left = 876
        Top = 414
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 79
      end
      object dbePagosDiaWeek: TDBEdit
        Left = 876
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 80
      end
      object dbeOtrPagosDiaWeek: TDBEdit
        Left = 876
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrosPagosSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 81
      end
      object dbeLiquDiaWeek: TDBEdit
        Left = 876
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquidacionesSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 82
      end
      object edIngresoVentasDiaWeek: TEdit
        Left = 876
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 83
        Text = '0.00'
      end
      object dbeVtasCerrDiaWeek: TDBEdit
        Left = 876
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 84
      end
      object edCxCDiaWeek: TEdit
        Left = 876
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 85
        Text = '0.00'
      end
      object dbeTotalDiaWeek: TDBEdit
        Left = 876
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 86
      end
      object dbeIVADiaWeek: TDBEdit
        Left = 876
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 87
      end
      object dbeDescWeek: TDBEdit
        Left = 876
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 88
      end
      object dbeVentasWeek: TDBEdit
        Left = 876
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 89
      end
      object dbeAdelDiaWeek: TDBEdit
        Left = 876
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelantosSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 90
      end
      object dbeTranDiaLunes: TDBEdit
        Left = 282
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 91
      end
      object dbeTranDiaMartes: TDBEdit
        Left = 382
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 92
      end
      object dbeTranDiaMierc: TDBEdit
        Left = 481
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransDiaMiercoles
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 93
      end
      object dbeTranDiaJueves: TDBEdit
        Left = 580
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 94
      end
      object dbeTranDiaViernes: TDBEdit
        Left = 677
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 95
      end
      object dbeTranDiaSabado: TDBEdit
        Left = 771
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 96
      end
      object dbeTranDiaWeek: TDBEdit
        Left = 876
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 97
      end
      object dbeSubtotalDiaLunes: TDBEdit
        Left = 282
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasDiaLunes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 98
      end
      object dbeVentasDiaDomingo: TDBEdit
        Left = 184
        Top = 67
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 99
      end
      object dbeDescDiaDomingo: TDBEdit
        Left = 184
        Top = 93
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 100
      end
      object dbeTotalDiaDomingo: TDBEdit
        Left = 184
        Top = 119
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 101
      end
      object dbeSubtotalDiaDomingo: TDBEdit
        Left = 184
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 102
      end
      object dbeIvaDiaDomingo: TDBEdit
        Left = 184
        Top = 178
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 103
      end
      object dbeVtasCerrDiaDomingo: TDBEdit
        Left = 184
        Top = 211
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 104
      end
      object dbeAdelDiaDomingo: TDBEdit
        Left = 184
        Top = 238
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 105
      end
      object edCxCDiaDomingo: TEdit
        Left = 184
        Top = 265
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 106
        Text = '0.00'
      end
      object edIngresoVentasDiaDomingo: TEdit
        Left = 184
        Top = 299
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 107
        Text = '0.00'
      end
      object dbeLiquDiaDomingo: TDBEdit
        Left = 184
        Top = 326
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 108
      end
      object dbeOtrPagosDiaDomingo: TDBEdit
        Left = 184
        Top = 353
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrPagosDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 109
      end
      object dbePagosDiaDomingo: TDBEdit
        Left = 184
        Top = 386
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 110
      end
      object dbeGastosDiaDomingo: TDBEdit
        Left = 184
        Top = 413
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 111
      end
      object edEfectDiaDomingo: TEdit
        Left = 184
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 112
        Text = '0.00'
      end
      object dbeTranDiaDomingo: TDBEdit
        Left = 184
        Top = 490
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransDiaDomingo
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 113
      end
      object edUtilidadDiaDomingo: TEdit
        Left = 184
        Top = 450
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 114
        Text = '0.00'
      end
      object edEfectDiaLunes: TEdit
        Left = 282
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 115
        Text = '0.00'
      end
      object edEfectDiaMartes: TEdit
        Left = 382
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 116
        Text = '0.00'
      end
      object dbeSubtotalDiaMartes: TDBEdit
        Left = 382
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasDiaMartes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 117
      end
      object dbeSubtotalDiaMiercoles: TDBEdit
        Left = 481
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasDiaMierc
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 118
      end
      object dbeSubtotalDiaJueves: TDBEdit
        Left = 580
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasDiaJueves
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 119
      end
      object dbeSubtotalDiaViernes: TDBEdit
        Left = 677
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasDiaViernes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 120
      end
      object dbeSubtotalDiaSabado: TDBEdit
        Left = 771
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasDiaSabado
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 121
      end
      object edEfectDiaMiercoles: TEdit
        Left = 481
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 122
        Text = '0.00'
      end
      object edEfectDiaJueves: TEdit
        Left = 580
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 123
        Text = '0.00'
      end
      object edEfectDiaViernes: TEdit
        Left = 677
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 124
        Text = '0.00'
      end
      object edEfectDiaSabado: TEdit
        Left = 771
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 125
        Text = '0.00'
      end
      object edEfectDiaWeek: TEdit
        Left = 876
        Top = 518
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 126
        Text = '0.00'
      end
      object dbeSubtotalDiaWeek: TDBEdit
        Left = 876
        Top = 153
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 127
      end
    end
    object pnlGastos: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 530
      Color = clLime
      ParentBackground = False
      TabOrder = 6
      Visible = False
      object Label26: TLabel
        Left = 18
        Top = 7
        Width = 39
        Height = 13
        Caption = 'Gastos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgGastos: TDBGrid
        Left = 12
        Top = 22
        Width = 975
        Height = 455
        DataSource = dsGastosDiaDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Gasto'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 120
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'IVA'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Total'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus Cont.'
            Width = 120
            Visible = True
          end>
      end
    end
    object pnlOtrosPagos: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 588
      Color = clPurple
      ParentBackground = False
      TabOrder = 5
      Visible = False
      object Label25: TLabel
        Left = 14
        Top = 7
        Width = 68
        Height = 13
        Caption = 'Otros Pagos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgOtrosPagos: TDBGrid
        Left = 12
        Top = 22
        Width = 975
        Height = 455
        DataSource = dsOtrosPagosDiaDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pago'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Width = 185
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 120
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe_1'
            Title.Caption = 'Subtotal'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Descuento'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Iva'
            Title.Caption = 'IVA'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Total'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Ingreso'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Entrega'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recepcion'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus Cont'
            Width = 120
            Visible = True
          end>
      end
    end
    object pnlPagos: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 588
      Color = clRed
      ParentBackground = False
      TabOrder = 4
      Visible = False
      object Label24: TLabel
        Left = 16
        Top = 7
        Width = 34
        Height = 13
        Caption = 'Pagos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgPagos: TDBGrid
        Left = 11
        Top = 22
        Width = 975
        Height = 455
        DataSource = dsPagosDiaDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pago'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Width = 208
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Width = 40
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Total'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Acuenta'
            Title.Caption = 'Adelanto'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 120
            Visible = True
          end>
      end
    end
    object pnlLiquidaciones: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 588
      Color = clMenuHighlight
      ParentBackground = False
      TabOrder = 3
      Visible = False
      object Label23: TLabel
        Left = 16
        Top = 7
        Width = 76
        Height = 13
        Caption = 'Liquidaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgLiquidaciones: TDBGrid
        Left = 11
        Top = 22
        Width = 975
        Height = 455
        DataSource = dsLiquidacionesDiaDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pago'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Width = 184
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Width = 40
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Total'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Adelanto'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 120
            Visible = True
          end>
      end
    end
    object pnlAdelantos: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 588
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 2
      Visible = False
      object Label20: TLabel
        Left = 25
        Top = 7
        Width = 57
        Height = 13
        Caption = 'Adelantos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgAdelantos: TDBGrid
        Left = 11
        Top = 22
        Width = 975
        Height = 455
        DataSource = dsAdelantosDiaDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pago'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Width = 208
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idOrden'
            Title.Caption = 'Orden'
            Width = 40
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Total'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Adelanto'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 120
            Visible = True
          end>
      end
    end
    object pnlVtasCerr: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 588
      Color = clGradientInactiveCaption
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object Label22: TLabel
        Left = 13
        Top = 7
        Width = 93
        Height = 13
        Caption = 'Ventas Cerradas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgVtasCerr: TDBGrid
        Left = 10
        Top = 22
        Width = 975
        Height = 455
        DataSource = dsVentasCerradasDiaDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Pago'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Width = 180
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Width = 40
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Total'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Adelanto'
            Width = 80
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 120
            Visible = True
          end>
      end
    end
    object pnlVentas: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 588
      Color = clActiveBorder
      ParentBackground = False
      TabOrder = 0
      Visible = False
      object dbfCxC: TDBText
        Left = 897
        Top = 498
        Width = 71
        Height = 17
        Alignment = taRightJustify
        DataField = 'CxC'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 802
        Top = 498
        Width = 94
        Height = 19
        Caption = 'Por Cobrar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfAdelanto: TDBText
        Left = 711
        Top = 498
        Width = 71
        Height = 17
        Alignment = taRightJustify
        DataField = 'Ingreso'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 628
        Top = 498
        Width = 80
        Height = 19
        Caption = 'Adelanto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfTotal: TDBText
        Left = 528
        Top = 498
        Width = 77
        Height = 17
        Alignment = taRightJustify
        DataField = 'Total'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 476
        Top = 498
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
      object dbfIVA: TDBText
        Left = 390
        Top = 498
        Width = 63
        Height = 17
        Alignment = taRightJustify
        DataField = 'Iva'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 352
        Top = 498
        Width = 36
        Height = 19
        Caption = 'IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfDesc: TDBText
        Left = 248
        Top = 498
        Width = 60
        Height = 17
        Alignment = taRightJustify
        DataField = 'Descuento'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 201
        Top = 498
        Width = 44
        Height = 19
        Caption = 'Desc:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfImporte: TDBText
        Left = 98
        Top = 498
        Width = 77
        Height = 17
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 21
        Top = 498
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
      object Label18: TLabel
        Left = 16
        Top = 7
        Width = 39
        Height = 13
        Caption = 'Ventas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgVentas: TDBGrid
        Left = 10
        Top = 22
        Width = 975
        Height = 455
        DataSource = dsVentasXDiaDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Orden'
            Title.Alignment = taCenter
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'strNombre'
            Title.Caption = 'Nombre'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recepcion'
            Title.Alignment = taCenter
            Width = 162
            Visible = True
          end
          item
            Color = clBtnFace
            Expanded = False
            FieldName = 'Importe'
            Title.Alignment = taCenter
            Width = 57
            Visible = True
          end
          item
            Alignment = taRightJustify
            Color = clBtnFace
            Expanded = False
            FieldName = 'Descuento'
            Title.Alignment = taCenter
            Width = 67
            Visible = True
          end
          item
            Alignment = taRightJustify
            Color = clBtnFace
            Expanded = False
            FieldName = 'Total'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Subtotal'
            Title.Alignment = taCenter
            Width = 66
            Visible = True
          end
          item
            Alignment = taRightJustify
            Color = clBtnFace
            Expanded = False
            FieldName = 'Iva'
            Title.Alignment = taCenter
            Width = 62
            Visible = True
          end
          item
            Alignment = taRightJustify
            Color = clGradientActiveCaption
            Expanded = False
            FieldName = 'Ingreso'
            Title.Alignment = taCenter
            Title.Caption = 'Adelanto'
            Width = 61
            Visible = True
          end
          item
            Alignment = taRightJustify
            Color = clGradientActiveCaption
            Expanded = False
            FieldName = 'CxC'
            Title.Alignment = taCenter
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 86
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Suc'
            Title.Alignment = taCenter
            Width = 44
            Visible = True
          end>
      end
    end
    object pnlResumen: TPanel
      Left = 3
      Top = 25
      Width = 995
      Height = 649
      Alignment = taRightJustify
      Color = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      object Label1: TLabel
        Left = 68
        Top = 38
        Width = 51
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 21
        Top = 233
        Width = 98
        Height = 16
        Alignment = taRightJustify
        Caption = 'CxC de Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 5
        Top = 183
        Width = 114
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ventas Cerradas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 48
        Top = 208
        Width = 71
        Height = 16
        Alignment = taRightJustify
        Caption = 'Adelantos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 20
        Top = 265
        Width = 98
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ingreso Venta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 27
        Top = 290
        Width = 91
        Height = 16
        Alignment = taRightJustify
        Caption = 'Liquidaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 34
        Top = 315
        Width = 84
        Height = 16
        Alignment = taRightJustify
        Caption = 'Otros Pagos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 28
        Top = 350
        Width = 91
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ingreso Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 166
        Top = 567
        Width = 49
        Height = 16
        Alignment = taRightJustify
        Caption = 'Gastos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 61
        Top = 409
        Width = 57
        Height = 16
        Alignment = taRightJustify
        Caption = 'Efectivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 90
        Top = 150
        Width = 29
        Height = 16
        Alignment = taRightJustify
        Caption = 'IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 38
        Top = 65
        Width = 81
        Height = 16
        Caption = 'Descuentos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 27
        Top = 92
        Width = 92
        Height = 16
        Caption = 'Ventas Netas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfOrdenesDia: TDBText
        Left = 214
        Top = 7
        Width = 29
        Height = 17
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfOrdenesSem: TDBText
        Left = 350
        Top = 7
        Width = 31
        Height = 17
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = dsVentasXSem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfOrdenesMes: TDBText
        Left = 479
        Top = 7
        Width = 28
        Height = 17
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = dsVentasMes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbfOrdenesYear: TDBText
        Left = 775
        Top = 7
        Width = 31
        Height = 17
        DataField = 'Ordenes'
        DataSource = dsVentasYear
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 5
        Top = 116
        Width = 985
        Height = 3
        Brush.Color = clNavy
      end
      object Shape2: TShape
        Left = 5
        Top = 256
        Width = 985
        Height = 3
        Brush.Color = clNavy
      end
      object Shape3: TShape
        Left = 5
        Top = 339
        Width = 985
        Height = 5
        Brush.Color = clNavy
      end
      object Shape4: TShape
        Left = 5
        Top = 400
        Width = 985
        Height = 3
        Brush.Color = clNavy
      end
      object Shape12: TShape
        Left = 214
        Top = 433
        Width = 776
        Height = 3
        Brush.Color = clNavy
      end
      object lblDescD: TLabel
        Left = 217
        Top = 65
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblPendienteD: TLabel
        Left = 217
        Top = 233
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblCerradasD: TLabel
        Left = 217
        Top = 183
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblAdelD: TLabel
        Left = 217
        Top = 208
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblLiquD: TLabel
        Left = 217
        Top = 290
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblOtrPagosD: TLabel
        Left = 217
        Top = 315
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblIngresoTotalD: TLabel
        Left = 217
        Top = 350
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblGastosD: TLabel
        Left = 217
        Top = 376
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblTransferD: TLabel
        Left = 217
        Top = 442
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblVentasS: TLabel
        Left = 342
        Top = 38
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = '800.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDescS: TLabel
        Left = 356
        Top = 65
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIVAS: TLabel
        Left = 356
        Top = 151
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPendienteS: TLabel
        Left = 356
        Top = 233
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCerradasS: TLabel
        Left = 356
        Top = 183
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblAdelS: TLabel
        Left = 356
        Top = 208
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIngresoVtasS: TLabel
        Left = 356
        Top = 265
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLiquS: TLabel
        Left = 356
        Top = 290
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblOtrPagosS: TLabel
        Left = 356
        Top = 315
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIngresoTotalS: TLabel
        Left = 356
        Top = 350
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblGastosS: TLabel
        Left = 356
        Top = 376
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblTransferS: TLabel
        Left = 356
        Top = 442
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblPorCobrarS: TLabel
        Left = 1127
        Top = 52
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblVentasM: TLabel
        Left = 498
        Top = 38
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = '800.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDescM: TLabel
        Left = 512
        Top = 65
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIVAM: TLabel
        Left = 512
        Top = 151
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPendienteM: TLabel
        Left = 512
        Top = 233
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCerradasM: TLabel
        Left = 512
        Top = 183
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblAdelM: TLabel
        Left = 512
        Top = 208
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIngresoVtasM: TLabel
        Left = 512
        Top = 265
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLiquM: TLabel
        Left = 512
        Top = 290
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblOtrPagosM: TLabel
        Left = 512
        Top = 315
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIngresoTotalM: TLabel
        Left = 512
        Top = 350
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblGastosM: TLabel
        Left = 512
        Top = 376
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblTransM: TLabel
        Left = 512
        Top = 442
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblPorCobrarM: TLabel
        Left = 1128
        Top = 164
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblDescY: TLabel
        Left = 810
        Top = 65
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPorCobrarY: TLabel
        Left = 1316
        Top = 164
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblGastosY: TLabel
        Left = 810
        Top = 376
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblIngresoTotalY: TLabel
        Left = 810
        Top = 350
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblOtrPagosY: TLabel
        Left = 810
        Top = 315
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLiquY: TLabel
        Left = 810
        Top = 290
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIngresoVtasY: TLabel
        Left = 810
        Top = 265
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblAdelY: TLabel
        Left = 810
        Top = 208
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCerradasY: TLabel
        Left = 810
        Top = 183
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPendienteY: TLabel
        Left = 810
        Top = 233
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIVAY: TLabel
        Left = 810
        Top = 151
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblVentasY: TLabel
        Left = 796
        Top = 38
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = '800.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblIngresoVtasD: TLabel
        Left = 217
        Top = 265
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblVentasD: TLabel
        Left = 203
        Top = 38
        Width = 48
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '800.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblPorCobrarD: TLabel
        Left = 1131
        Top = 194
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label50: TLabel
        Left = 18
        Top = 376
        Width = 101
        Height = 16
        Alignment = taRightJustify
        Caption = 'Transferencias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblEfectivoD: TLabel
        Left = 217
        Top = 467
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblEfectivoS: TLabel
        Left = 355
        Top = 467
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblEfectM: TLabel
        Left = 512
        Top = 467
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblTransY: TLabel
        Left = 810
        Top = 442
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label55: TLabel
        Left = 684
        Top = 584
        Width = 89
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ingreso Neto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape13: TShape
        Left = 5
        Top = 491
        Width = 985
        Height = 3
        Brush.Color = clNavy
      end
      object lblEfectY: TLabel
        Left = 810
        Top = 467
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label59: TLabel
        Left = 62
        Top = 125
        Width = 57
        Height = 16
        Alignment = taRightJustify
        Caption = 'Importe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblIVAD: TLabel
        Left = 217
        Top = 151
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Shape15: TShape
        Left = 5
        Top = 174
        Width = 985
        Height = 3
        Brush.Color = clNavy
      end
      object Label51: TLabel
        Left = 286
        Top = 508
        Width = 90
        Height = 16
        Alignment = taRightJustify
        Caption = 'Composturas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label60: TLabel
        Left = 310
        Top = 537
        Width = 66
        Height = 16
        Alignment = taRightJustify
        Caption = 'Bordados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label61: TLabel
        Left = 498
        Top = 538
        Width = 75
        Height = 16
        Alignment = taRightJustify
        Caption = 'Tintorerias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label62: TLabel
        Left = 698
        Top = 508
        Width = 51
        Height = 16
        Alignment = taRightJustify
        Caption = 'Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblComposturas: TLabel
        Left = 422
        Top = 508
        Width = 48
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '100.0 %'
        ParentBiDiMode = False
      end
      object lblBordados: TLabel
        Left = 435
        Top = 538
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        ParentBiDiMode = False
      end
      object lblTintorerias: TLabel
        Left = 633
        Top = 538
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        ParentBiDiMode = False
      end
      object Label67: TLabel
        Left = 483
        Top = 508
        Width = 90
        Height = 16
        Alignment = taRightJustify
        Caption = 'Confecciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVentas: TLabel
        Left = 794
        Top = 508
        Width = 48
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '100.0 %'
        ParentBiDiMode = False
      end
      object lblConfeccion: TLabel
        Left = 618
        Top = 508
        Width = 48
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '100.0 %'
        ParentBiDiMode = False
      end
      object Label70: TLabel
        Left = 678
        Top = 538
        Width = 71
        Height = 16
        Alignment = taRightJustify
        Caption = 'Planchado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPlanchado: TLabel
        Left = 808
        Top = 538
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        ParentBiDiMode = False
      end
      object Label49: TLabel
        Left = 10
        Top = 507
        Width = 138
        Height = 21
        Caption = 'Ticket Promedio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTicketPromedio: TLabel
        Left = 49
        Top = 530
        Width = 53
        Height = 24
        Caption = '$X.XX'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label63: TLabel
        Left = 161
        Top = 507
        Width = 33
        Height = 21
        Caption = 'CPV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label64: TLabel
        Left = 233
        Top = 507
        Width = 23
        Height = 21
        Caption = 'CR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCPV: TLabel
        Left = 156
        Top = 532
        Width = 37
        Height = 21
        Caption = 'XX%'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblCR: TLabel
        Left = 221
        Top = 532
        Width = 37
        Height = 21
        Caption = 'XX%'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lblDeltaVentasMes: TLabel
        Left = 642
        Top = 38
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = '800.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaDescMes: TLabel
        Left = 656
        Top = 65
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaIVAMes: TLabel
        Left = 656
        Top = 151
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaVtasCerrMes: TLabel
        Left = 656
        Top = 183
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaAdelantosMes: TLabel
        Left = 656
        Top = 208
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaPendienteMes: TLabel
        Left = 656
        Top = 233
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaIngresoVentasMes: TLabel
        Left = 656
        Top = 265
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaLiquidacionesMes: TLabel
        Left = 656
        Top = 290
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaPagosMes: TLabel
        Left = 656
        Top = 315
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaOtrosPagosMes: TLabel
        Left = 656
        Top = 350
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object lblDeltaGastosMes: TLabel
        Left = 656
        Top = 376
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object lblDeltaTransMes: TLabel
        Left = 656
        Top = 442
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object lblDeltaEfectMes: TLabel
        Left = 656
        Top = 467
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object lblDeltaVentaY: TLabel
        Left = 945
        Top = 38
        Width = 48
        Height = 16
        Alignment = taRightJustify
        Caption = '800.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaDescY: TLabel
        Left = 959
        Top = 65
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaIVAY: TLabel
        Left = 959
        Top = 151
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaVtasCerrY: TLabel
        Left = 959
        Top = 183
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaAdelantosY: TLabel
        Left = 959
        Top = 208
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label108: TLabel
        Left = 959
        Top = 233
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaIngresoVtasY: TLabel
        Left = 959
        Top = 265
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaLiquidacionesY: TLabel
        Left = 959
        Top = 290
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaOtrosPagosY: TLabel
        Left = 959
        Top = 315
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object lblDeltaPagosY: TLabel
        Left = 959
        Top = 350
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object lblDeltaGastosY: TLabel
        Left = 959
        Top = 376
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object lblDeltaTransY: TLabel
        Left = 959
        Top = 442
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object lblDelteEfectY: TLabel
        Left = 959
        Top = 467
        Width = 34
        Height = 16
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '0.0 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        Visible = False
      end
      object Shape5: TShape
        Left = 398
        Top = 30
        Width = 4
        Height = 462
        Brush.Color = clNavy
      end
      object Shape14: TShape
        Left = 691
        Top = 30
        Width = 4
        Height = 462
        Brush.Color = clNavy
      end
      object Shape16: TShape
        Left = 5
        Top = 30
        Width = 985
        Height = 3
        Brush.Color = clNavy
      end
      object Label56: TLabel
        Left = 856
        Top = 508
        Width = 41
        Height = 16
        Caption = 'Otros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblOtros: TLabel
        Left = 949
        Top = 508
        Width = 44
        Height = 16
        Caption = '100.0%'
      end
      object edCxCDia: TEdit
        Left = 121
        Top = 230
        Width = 75
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = '0.00'
      end
      object edIngresoVentasDia: TEdit
        Left = 121
        Top = 262
        Width = 75
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Text = '0.00'
      end
      object edUtilidadDia: TEdit
        Left = 776
        Top = 581
        Width = 75
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '0.00'
      end
      object cbxDia: TCheckBox
        Left = 119
        Top = 7
        Width = 61
        Height = 17
        Caption = 'D'#205'A'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 3
        OnClick = cbxDiaClick
      end
      object edCxCSem: TEdit
        Left = 256
        Top = 230
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = '0.00'
      end
      object edIngresoVentasSem: TEdit
        Left = 256
        Top = 262
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = '0.00'
      end
      object edUtilidadSem: TEdit
        Left = 256
        Top = 406
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Text = '0.00'
      end
      object cbxSem: TCheckBox
        Left = 260
        Top = 7
        Width = 76
        Height = 17
        Caption = 'SEMANA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = cbxSemClick
      end
      object dbeVentasDia: TDBEdit
        Left = 121
        Top = 35
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasXDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 8
      end
      object dbeDescDia: TDBEdit
        Left = 121
        Top = 62
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasXDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 9
      end
      object dbeIVADia: TDBEdit
        Left = 121
        Top = 148
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasXDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 10
      end
      object dbeVtasCerrDia: TDBEdit
        Left = 121
        Top = 180
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasCerradasDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 11
      end
      object dbeTotalDia: TDBEdit
        Left = 121
        Top = 89
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasXDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 12
      end
      object dbeLiquidacionesDia: TDBEdit
        Left = 121
        Top = 287
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquidacionesDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 13
      end
      object dbeAdelantosDia: TDBEdit
        Left = 121
        Top = 205
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelantosDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 14
      end
      object dbePagosDia: TDBEdit
        Left = 121
        Top = 347
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosDia
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 15
      end
      object dbeOtrosPagosDia: TDBEdit
        Left = 121
        Top = 312
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrosPagosDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 16
      end
      object dbeGastosDia: TDBEdit
        Left = 217
        Top = 564
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 17
      end
      object edIngresoVentasMes: TEdit
        Left = 406
        Top = 262
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
        Text = '0.00'
      end
      object edIngresoVentasYear: TEdit
        Left = 701
        Top = 262
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        Text = '0.00'
      end
      object edCxCMes: TEdit
        Left = 406
        Top = 230
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
        Text = '0.00'
      end
      object edCxCYear: TEdit
        Left = 701
        Top = 230
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
        Text = '0.00'
      end
      object edUtilidadMes: TEdit
        Left = 406
        Top = 406
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
        Text = '0.00'
      end
      object edUtilidadYear: TEdit
        Left = 701
        Top = 406
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
        Text = '0.00'
      end
      object dbeVentasSem: TDBEdit
        Left = 256
        Top = 35
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 24
      end
      object dbeDescSem: TDBEdit
        Left = 256
        Top = 62
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 25
      end
      object dbeIVASem: TDBEdit
        Left = 256
        Top = 148
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 26
      end
      object dbeTotalSem: TDBEdit
        Left = 256
        Top = 89
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasXSem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 27
      end
      object dbeVtaCerrSem: TDBEdit
        Left = 256
        Top = 180
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 28
      end
      object dbeAdelantosSem: TDBEdit
        Left = 256
        Top = 205
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelantosSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 29
      end
      object dbeLiquidacionesSem: TDBEdit
        Left = 256
        Top = 287
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquidacionesSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 30
      end
      object dbeOtrosPagosSem: TDBEdit
        Left = 256
        Top = 312
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrosPagosSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 31
      end
      object dbePagosSem: TDBEdit
        Left = 256
        Top = 347
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosSem
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 32
      end
      object dbeGastosSem: TDBEdit
        Left = 256
        Top = 373
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 33
      end
      object dbeVentasMes: TDBEdit
        Left = 406
        Top = 35
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 34
      end
      object dbeDescMes: TDBEdit
        Left = 406
        Top = 62
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 35
      end
      object dbeIVAMes: TDBEdit
        Left = 406
        Top = 148
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 36
      end
      object dbeTotalMes: TDBEdit
        Left = 406
        Top = 89
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasMes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 37
      end
      object dbeVntasCerrMes: TDBEdit
        Left = 406
        Top = 180
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 38
      end
      object dbeAdelantosMes: TDBEdit
        Left = 406
        Top = 205
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelantosMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 39
      end
      object dbeLiquidacionesMes: TDBEdit
        Left = 406
        Top = 287
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquidacionesMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 40
      end
      object dbeOtrosPagosMes: TDBEdit
        Left = 406
        Top = 312
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrosPagosMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 41
      end
      object dbePagosMes: TDBEdit
        Left = 406
        Top = 347
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosMes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 42
      end
      object dbeGastosMes: TDBEdit
        Left = 406
        Top = 373
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 43
      end
      object dbeVentasYear: TDBEdit
        Left = 701
        Top = 35
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 44
      end
      object dbeDescYear: TDBEdit
        Left = 701
        Top = 62
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 45
      end
      object dbeIVAYear: TDBEdit
        Left = 701
        Top = 148
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 46
      end
      object dbeTotalYear: TDBEdit
        Left = 701
        Top = 89
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasYear
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 47
      end
      object dbeVtasCerrYear: TDBEdit
        Left = 701
        Top = 180
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 48
      end
      object dbeAdelantosYear: TDBEdit
        Left = 701
        Top = 205
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelantosYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 49
      end
      object dbeLiquidacionesYear: TDBEdit
        Left = 701
        Top = 287
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquidacionesYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 50
      end
      object dbeOtrosPagosYear: TDBEdit
        Left = 701
        Top = 312
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrosPagosYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 51
      end
      object dbePagosYear: TDBEdit
        Left = 701
        Top = 347
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosYear
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 52
      end
      object dbeGastosYear: TDBEdit
        Left = 701
        Top = 373
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 53
      end
      object cbxMes: TCheckBox
        Left = 415
        Top = 7
        Width = 58
        Height = 17
        Caption = 'MES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 54
        OnClick = cbxMesClick
      end
      object cbxYear: TCheckBox
        Left = 706
        Top = 7
        Width = 63
        Height = 17
        Caption = 'A'#209'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 55
        OnClick = cbxYearClick
      end
      object dbeCxCYear: TDBEdit
        Left = 1186
        Top = 161
        Width = 110
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'CxC'
        DataSource = dsVentasYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 56
      end
      object dbeTranXdia: TDBEdit
        Left = 121
        Top = 373
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransXDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 57
      end
      object dbeTransSem: TDBEdit
        Left = 256
        Top = 439
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 58
      end
      object dbeTransMes: TDBEdit
        Left = 406
        Top = 439
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 59
      end
      object dbeTransYear: TDBEdit
        Left = 701
        Top = 439
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 60
      end
      object edEfectDia: TEdit
        Left = 121
        Top = 406
        Width = 75
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 61
        Text = '0.00'
      end
      object edEfectSem: TEdit
        Left = 256
        Top = 464
        Width = 80
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 62
        Text = '0.00'
      end
      object edEfectMes: TEdit
        Left = 406
        Top = 464
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 63
        Text = '0.00'
      end
      object edEfectYear: TEdit
        Left = 701
        Top = 464
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 64
        Text = '0.00'
      end
      object dbeTintoDia: TDBEdit
        Left = 1186
        Top = 191
        Width = 110
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTintoDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 65
      end
      object dbeTintoYear: TDBEdit
        Left = 1186
        Top = 126
        Width = 110
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTintoYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 66
      end
      object dbeSubtotalDia: TDBEdit
        Left = 121
        Top = 122
        Width = 75
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasXDia
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 67
      end
      object edBordados: TEdit
        Left = 377
        Top = 534
        Width = 40
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 68
        Text = '0.00'
      end
      object edTintorerias: TEdit
        Left = 574
        Top = 535
        Width = 40
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 69
        Text = '0.00'
      end
      object edComposturas: TEdit
        Left = 377
        Top = 505
        Width = 40
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 70
        Text = '0.00'
      end
      object edVentas: TEdit
        Left = 751
        Top = 505
        Width = 40
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 71
        Text = '0.00'
      end
      object edConfeccion: TEdit
        Left = 574
        Top = 505
        Width = 40
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 72
        Text = '0.00'
      end
      object edPlanchado: TEdit
        Left = 751
        Top = 535
        Width = 40
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 73
        Text = '0.00'
      end
      object dbeSubtotalSem: TDBEdit
        Left = 256
        Top = 122
        Width = 80
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasXSem
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 74
      end
      object dbeSubtotalMes: TDBEdit
        Left = 406
        Top = 122
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasMes
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 75
      end
      object dbeSubtotalYear: TDBEdit
        Left = 701
        Top = 122
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasYear
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 76
      end
      object dbeVtasMesYP: TDBEdit
        Left = 551
        Top = 35
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 77
      end
      object dbeDescMesYP: TDBEdit
        Left = 551
        Top = 62
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 78
      end
      object dbeTotalMesYP: TDBEdit
        Left = 551
        Top = 89
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasMesAnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 79
      end
      object dbeSubtotalMesYP: TDBEdit
        Left = 551
        Top = 122
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 80
      end
      object dbeIVAMesYP: TDBEdit
        Left = 551
        Top = 148
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 81
      end
      object dbeVtaCerrMesYP: TDBEdit
        Left = 551
        Top = 180
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 82
      end
      object dbeAdelantosMesYP: TDBEdit
        Left = 551
        Top = 205
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsAdelantosMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 83
      end
      object edCxCMesYP: TEdit
        Left = 551
        Top = 230
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 84
        Text = '0.00'
      end
      object edIngresoVtasMEsYP: TEdit
        Left = 551
        Top = 262
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 85
        Text = '0.00'
      end
      object dbeLiquidacionesMesYP: TDBEdit
        Left = 551
        Top = 287
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsLiquidacionesMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 86
      end
      object dbePagosMesYP: TDBEdit
        Left = 551
        Top = 347
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsPagosMesAnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 87
      end
      object dbeGastosMesYP: TDBEdit
        Left = 551
        Top = 373
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGastosMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 88
      end
      object edUtilidadMesYP: TEdit
        Left = 551
        Top = 406
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 89
        Text = '0.00'
      end
      object dbeTransMesYP: TDBEdit
        Left = 551
        Top = 439
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsTransMesAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 90
      end
      object edEfecMesYP: TEdit
        Left = 551
        Top = 464
        Width = 85
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 91
        Text = '0.00'
      end
      object dbeVentasYP: TDBEdit
        Left = 848
        Top = 35
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsVentasYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 92
      end
      object dbeDescYP: TDBEdit
        Left = 848
        Top = 61
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Descuento'
        DataSource = dsVentasYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 93
      end
      object dbeTotalYP: TDBEdit
        Left = 848
        Top = 89
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVentasYearAnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 94
      end
      object dbeSubtotalYP: TDBEdit
        Left = 848
        Top = 122
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Subtotal'
        DataSource = dsVentasYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 95
      end
      object dbeIVAYP: TDBEdit
        Left = 848
        Top = 148
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Iva'
        DataSource = dsVentasYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 96
      end
      object dbeVtasCerrYP: TDBEdit
        Left = 848
        Top = 180
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsVtasCerrYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 97
      end
      object dbeAdelantosYP: TDBEdit
        Left = 848
        Top = 205
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsGetAdelantosXYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 98
      end
      object edCxCYP: TEdit
        Left = 848
        Top = 230
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 99
        Text = '0.00'
      end
      object edIngresoVtasYP: TEdit
        Left = 848
        Top = 262
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 100
        Text = '0.00'
      end
      object dbeLiquidacionesYP: TDBEdit
        Left = 848
        Top = 287
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsGetLiquidacionesXYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 101
      end
      object dbeOtrosPagosYP: TDBEdit
        Left = 848
        Top = 312
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsGetOtrosPagosXYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 102
      end
      object dbePagosYP: TDBEdit
        Left = 848
        Top = 347
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsGetPagosXYearAnt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 103
      end
      object dbeGastosYP: TDBEdit
        Left = 848
        Top = 373
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Total'
        DataSource = dsGetGastosXYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 104
      end
      object edUtilidadYP: TEdit
        Left = 848
        Top = 406
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 105
        Text = '0.00'
      end
      object dbeTransYP: TDBEdit
        Left = 848
        Top = 439
        Width = 90
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Importe'
        DataSource = dsGetTransXYearAnt
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 106
      end
      object edEfectYP: TEdit
        Left = 848
        Top = 464
        Width = 90
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 107
        Text = '0.00'
      end
      object chbxMMAP: TCheckBox
        Left = 558
        Top = 7
        Width = 62
        Height = 17
        Caption = 'MMAP'
        TabOrder = 108
        OnClick = chbxMMAPClick
      end
      object chbxAPAD: TCheckBox
        Left = 888
        Top = 8
        Width = 97
        Height = 17
        Caption = 'APAD'
        TabOrder = 109
        OnClick = chbxAPADClick
      end
      object dbeOtrosPagosMesYPv2: TDBEdit
        Left = 551
        Top = 315
        Width = 85
        Height = 24
        BiDiMode = bdRightToLeft
        DataField = 'Pagos'
        DataSource = dsOtrosPagosMesv2
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 110
      end
      object edOtros: TEdit
        Left = 903
        Top = 505
        Width = 40
        Height = 24
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 111
        Text = '0.00'
      end
    end
  end
  object Conn: TADOConnection
    CommandTimeout = 5
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Password=M0f1n1t0;Persist Security Info=Tr' +
      'ue;User ID=eugenes_prod;Initial Catalog=EugenesOneDes;Data Sourc' +
      'e=.;Use Procedure for Prepare=1;Auto Translate=True' +
      ';Packet Size=4096;Workstation ID=LAPHPALEX;Initial File Name="";' +
      'Use Encryption for Data=False;Tag with column collation when pos' +
      'sible=False;MARS Connection=False;DataTypeCompatibility=0;Trust ' +
      'Server Certificate=False;Server SPN="";Application Intent=READWR' +
      'ITE;MultisubnetFailover=False;Use FMTONLY=False;Authentication="' +
      '";Access Token=""'
    ConnectionTimeout = 5
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
  end
  object spVentasXDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 6
  end
  object spVentasXDiaDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDiaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 60
  end
  object dsVentasXDiaDet: TDataSource
    DataSet = spVentasXDiaDet
    Left = 1248
    Top = 82
  end
  object dsVentasXDia: TDataSource
    DataSet = spVentasXDia
    Left = 1248
    Top = 28
  end
  object spVentasXSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 6
  end
  object dsVentasXSem: TDataSource
    DataSet = spVentasXSem
    Left = 1444
    Top = 28
  end
  object spVentasXSemDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXSemDet;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 60
  end
  object dsVentasXSemDet: TDataSource
    DataSet = spVentasXSemDet
    Left = 1444
    Top = 82
  end
  object spVentasCerradasDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 114
  end
  object dsVentasCerradasDia: TDataSource
    DataSet = spVentasCerradasDia
    Left = 1248
    Top = 136
  end
  object spVentasCerradasDiaDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDiaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 168
  end
  object dsVentasCerradasDiaDet: TDataSource
    DataSet = spVentasCerradasDiaDet
    Left = 1248
    Top = 190
  end
  object spAdelantosDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 222
  end
  object spAdelantosDiaDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDiaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 276
  end
  object dsAdelantosDia: TDataSource
    DataSet = spAdelantosDia
    Left = 1248
    Top = 244
  end
  object dsAdelantosDiaDet: TDataSource
    DataSet = spAdelantosDiaDet
    Left = 1248
    Top = 298
  end
  object spLiquidacionesDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 330
  end
  object spLiquidacionesDiaDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDiaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 384
  end
  object dsLiquidacionesDia: TDataSource
    DataSet = spLiquidacionesDia
    Left = 1248
    Top = 352
  end
  object dsLiquidacionesDiaDet: TDataSource
    DataSet = spLiquidacionesDiaDet
    Left = 1248
    Top = 406
  end
  object spOtrosPagosDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 546
  end
  object spOtrosPagosDiaDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDiaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 600
  end
  object spPagosDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 438
  end
  object spPagosDiaDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDiaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 492
  end
  object dsOtrosPagosDia: TDataSource
    DataSet = spOtrosPagosDia
    Left = 1248
    Top = 568
  end
  object dsOtrosPagosDiaDet: TDataSource
    DataSet = spOtrosPagosDiaDet
    Left = 1248
    Top = 622
  end
  object dsPagosDia: TDataSource
    DataSet = spPagosDia
    Left = 1248
    Top = 460
  end
  object dsPagosDiaDet: TDataSource
    DataSet = spPagosDiaDet
    Left = 1248
    Top = 514
  end
  object spGastosDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 654
  end
  object spGastosDiaDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDiaDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 708
  end
  object dsGastosDia: TDataSource
    DataSet = spGastosDia
    Left = 1248
    Top = 676
  end
  object dsGastosDiaDet: TDataSource
    DataSet = spGastosDiaDet
    Left = 1248
    Top = 730
  end
  object spVtasCerrSem: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasCerradasXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 114
  end
  object spVtasCerrSemDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasCerradasXSemDet;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 168
  end
  object spAdelantosSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 222
  end
  object spAdelantosSemDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetAdelantosXSemDet;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 276
  end
  object spLiquidacionesSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 330
  end
  object spLiquidacionesSemDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetLiquidacionesXSemDet;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 384
  end
  object spPagosSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 438
  end
  object spPagosSemDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetPagosXSemDet;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 492
  end
  object spOtrosPagosSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 546
  end
  object spOtrosPagosSemDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetOtrosPagosXSemDet;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 600
  end
  object spGastosSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 654
  end
  object spGastosSemDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetGastosXSemDet;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 708
  end
  object dsVtasCerrSem: TDataSource
    DataSet = spVtasCerrSem
    Left = 1444
    Top = 136
  end
  object dsVtasCerrSemDet: TDataSource
    DataSet = spVtasCerrSemDet
    Left = 1444
    Top = 190
  end
  object dsAdelantosSem: TDataSource
    DataSet = spAdelantosSem
    Left = 1444
    Top = 244
  end
  object dsAdelantosSemDet: TDataSource
    DataSet = spAdelantosSemDet
    Left = 1444
    Top = 298
  end
  object dsLiquidacionesSem: TDataSource
    DataSet = spLiquidacionesSem
    Left = 1444
    Top = 352
  end
  object dsLiquidacionesSemDet: TDataSource
    DataSet = spLiquidacionesSemDet
    Left = 1444
    Top = 406
  end
  object dsPagosSem: TDataSource
    DataSet = spPagosSem
    Left = 1444
    Top = 460
  end
  object dsPagosSemDet: TDataSource
    DataSet = spPagosSemDet
    Left = 1444
    Top = 514
  end
  object dsOtrosPagosSem: TDataSource
    DataSet = spOtrosPagosSem
    Left = 1444
    Top = 568
  end
  object dsOtrosPagosSemDet: TDataSource
    DataSet = spOtrosPagosSemDet
    Left = 1444
    Top = 622
  end
  object dsGastosSem: TDataSource
    DataSet = spGastosSem
    Left = 1444
    Top = 676
  end
  object dsGastosSemDet: TDataSource
    DataSet = spGastosSemDet
    Left = 1444
    Top = 730
  end
  object spVentasMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1562
    Top = 7
  end
  object dsVentasMes: TDataSource
    DataSet = spVentasMes
    Left = 1641
    Top = 28
  end
  object spVentasMesDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasXMesDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1562
    Top = 62
  end
  object dsVentasMesDet: TDataSource
    DataSet = spVentasMesDet
    Left = 1641
    Top = 82
  end
  object spVtasCerrMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 114
  end
  object spVtasCerrMesDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasCerradasXMesDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 168
  end
  object spAdelantosMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 222
  end
  object spAdelantosMesDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetAdelantosXMesDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 276
  end
  object spLiquidacionesMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 330
  end
  object spLiquidacionesMesDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetLiquidacionesXMesDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 384
  end
  object spPagosMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 438
  end
  object spPagosMesDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetPagosXMesDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 492
  end
  object spOtrosPagosMesDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetOtrosPagosXMesDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 600
  end
  object spGastosMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXMesRep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 654
  end
  object spGastosMesDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetGastosXMesDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 708
  end
  object dsVtasCerrMes: TDataSource
    DataSet = spVtasCerrMes
    Left = 1641
    Top = 136
  end
  object dsVtasCerrMesDet: TDataSource
    DataSet = spVtasCerrMesDet
    Left = 1641
    Top = 190
  end
  object dsAdelantosMes: TDataSource
    DataSet = spAdelantosMes
    Left = 1641
    Top = 244
  end
  object dsAdelantosMesDet: TDataSource
    DataSet = spAdelantosMesDet
    Left = 1641
    Top = 298
  end
  object dsLiquidacionesMes: TDataSource
    DataSet = spLiquidacionesMes
    Left = 1641
    Top = 352
  end
  object dsLiquidacionesMesDet: TDataSource
    DataSet = spLiquidacionesMesDet
    Left = 1641
    Top = 406
  end
  object dsPagosMes: TDataSource
    DataSet = spPagosMes
    Left = 1641
    Top = 460
  end
  object dsPagosMesDet: TDataSource
    DataSet = spPagosMesDet
    Left = 1641
    Top = 514
  end
  object dsOtrosPagosMes: TDataSource
    DataSet = spOtrosPagosMes
    Left = 1641
    Top = 568
  end
  object dsOtrosPagosMesDet: TDataSource
    DataSet = spOtrosPagosMesDet
    Left = 1641
    Top = 622
  end
  object dsGastosMes: TDataSource
    DataSet = spGastosMes
    Left = 1641
    Top = 676
  end
  object dsGastosMesDet: TDataSource
    DataSet = spGastosMesDet
    Left = 1641
    Top = 730
  end
  object spVentasYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 4
  end
  object dsVentasYear: TDataSource
    DataSet = spVentasYear
    Left = 1838
    Top = 28
  end
  object spVentasYearDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasXYearDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 54
  end
  object dsVentasYearDet: TDataSource
    DataSet = spVentasYearDet
    Left = 1838
    Top = 74
  end
  object spVtasCerrYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 114
  end
  object spVtasCerrYearDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasCerradasXYearDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 160
  end
  object spAdelantosYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 214
  end
  object spAdelantosYearDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetAdelantosXYearDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 268
  end
  object spLiquidacionesYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 322
  end
  object spLiquidacionesYearDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetLiquidacionesXYearDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 376
  end
  object spPagosYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 430
  end
  object spPagosYearDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetPagosXYearDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 484
  end
  object spOtrosPagosYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 538
  end
  object spOtrosPagosYearDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetOtrosPagosXYearDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 592
  end
  object spGastosYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 646
  end
  object spGastosYearDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetGastosXYearDet;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 700
  end
  object dsVtasCerrYear: TDataSource
    DataSet = spVtasCerrYear
    Left = 1838
    Top = 136
  end
  object dsVtasCerrYearDet: TDataSource
    DataSet = spVtasCerrYearDet
    Left = 1838
    Top = 182
  end
  object dsAdelantosYear: TDataSource
    DataSet = spAdelantosYear
    Left = 1838
    Top = 236
  end
  object dsAdelantosYearDet: TDataSource
    DataSet = spAdelantosYearDet
    Left = 1838
    Top = 290
  end
  object dsLiquidacionesYear: TDataSource
    DataSet = spLiquidacionesYear
    Left = 1838
    Top = 344
  end
  object dsLiquidacionesYearDet: TDataSource
    DataSet = spLiquidacionesYearDet
    Left = 1838
    Top = 398
  end
  object dsPagosYear: TDataSource
    DataSet = spPagosYear
    Left = 1838
    Top = 452
  end
  object dsPagosYearDet: TDataSource
    DataSet = spPagosYearDet
    Left = 1838
    Top = 506
  end
  object dsOtrosPagosYear: TDataSource
    DataSet = spOtrosPagosYear
    Left = 1838
    Top = 560
  end
  object dsOtrosPagosYearDet: TDataSource
    DataSet = spOtrosPagosYearDet
    Left = 1838
    Top = 614
  end
  object dsGastosYear: TDataSource
    DataSet = spGastosYear
    Left = 1838
    Top = 668
  end
  object dsGastosYearDet: TDataSource
    DataSet = spGastosYearDet
    Left = 1838
    Top = 722
  end
  object spVentasDiaLunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 664
  end
  object dsVentasDiaLunes: TDataSource
    DataSet = spVentasDiaLunes
    Left = 287
    Top = 680
  end
  object spVtasCerrDiaLunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 713
  end
  object dsVtasCerrDiaLunes: TDataSource
    DataSet = spVtasCerrDiaLunes
    Left = 287
    Top = 731
  end
  object spAdelDiaLunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 763
  end
  object dsAdelDiaLunes: TDataSource
    DataSet = spAdelDiaLunes
    Left = 287
    Top = 782
  end
  object spLiquDialunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 813
  end
  object dsLiquDialunes: TDataSource
    DataSet = spLiquDialunes
    Left = 287
    Top = 833
  end
  object spPagosDiaLunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 863
  end
  object dsPagosDiaLunes: TDataSource
    DataSet = spPagosDiaLunes
    Left = 287
    Top = 876
  end
  object spOtrPagosDiaLunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 913
  end
  object dsOtrPagosDiaLunes: TDataSource
    DataSet = spOtrPagosDiaLunes
    Left = 287
    Top = 935
  end
  object spGastosDiaLunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 216
    Top = 963
  end
  object dsGastosDiaLunes: TDataSource
    DataSet = spGastosDiaLunes
    Left = 287
    Top = 986
  end
  object spVentasDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 664
  end
  object dsVentasDiaMartes: TDataSource
    DataSet = spVentasDiaMartes
    Left = 431
    Top = 680
  end
  object spVtasCerrDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 713
  end
  object dsVtasCerrDiaMartes: TDataSource
    DataSet = spVtasCerrDiaMartes
    Left = 431
    Top = 731
  end
  object spAdelDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 763
  end
  object dsAdelDiaMartes: TDataSource
    DataSet = spAdelDiaMartes
    Left = 431
    Top = 782
  end
  object spLiquDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 813
  end
  object dsLiquDiaMartes: TDataSource
    DataSet = spLiquDiaMartes
    Left = 431
    Top = 833
  end
  object spPagosDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 863
  end
  object dsPagosDiaMartes: TDataSource
    DataSet = spPagosDiaMartes
    Left = 431
    Top = 876
  end
  object spOtrPagosDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 913
  end
  object dsOtrPagosDiaMartes: TDataSource
    DataSet = spOtrPagosDiaMartes
    Left = 431
    Top = 935
  end
  object spGastosDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 360
    Top = 963
  end
  object dsGastosDiaMartes: TDataSource
    DataSet = spGastosDiaMartes
    Left = 431
    Top = 986
  end
  object spVentasDiaMierc: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 664
  end
  object dsVentasDiaMierc: TDataSource
    DataSet = spVentasDiaMierc
    Left = 567
    Top = 680
  end
  object spVtasCerrDiaMierc: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 713
  end
  object dsVtasCerrDiaMierc: TDataSource
    DataSet = spVtasCerrDiaMierc
    Left = 567
    Top = 731
  end
  object spAdelDiaMierc: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 763
  end
  object dsAdelDiaMierc: TDataSource
    DataSet = spAdelDiaMierc
    Left = 567
    Top = 782
  end
  object spLiquDiaMierc: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 813
  end
  object dsLiquDiaMierc: TDataSource
    DataSet = spLiquDiaMierc
    Left = 567
    Top = 833
  end
  object spPagosDiaMierc: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 863
  end
  object dsPagosDiaMierc: TDataSource
    DataSet = spPagosDiaMierc
    Left = 567
    Top = 876
  end
  object spOtrPagosDiaMierc: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 913
  end
  object dsOtrPagosDiaMierc: TDataSource
    DataSet = spOtrPagosDiaMierc
    Left = 567
    Top = 935
  end
  object spGastosDiaMierc: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 496
    Top = 963
  end
  object dsGastosDiaMierc: TDataSource
    DataSet = spGastosDiaMierc
    Left = 567
    Top = 986
  end
  object spVentasDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 664
  end
  object dsVentasDiaJueves: TDataSource
    DataSet = spVentasDiaJueves
    Left = 711
    Top = 680
  end
  object spVtasCerrDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 713
  end
  object dsVtasCerrDiaJueves: TDataSource
    DataSet = spVtasCerrDiaJueves
    Left = 711
    Top = 731
  end
  object spAdelDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 763
  end
  object dsAdelDiaJueves: TDataSource
    DataSet = spAdelDiaJueves
    Left = 711
    Top = 782
  end
  object spLiquDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 813
  end
  object dsLiquDiaJueves: TDataSource
    DataSet = spLiquDiaJueves
    Left = 711
    Top = 833
  end
  object spPagosDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 863
  end
  object dsPagosDiaJueves: TDataSource
    DataSet = spPagosDiaJueves
    Left = 711
    Top = 876
  end
  object spOtrPagosDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 913
  end
  object dsOtrPagosDiaJueves: TDataSource
    DataSet = spOtrPagosDiaJueves
    Left = 711
    Top = 935
  end
  object spGastosDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 963
  end
  object dsGastosDiaJueves: TDataSource
    DataSet = spGastosDiaJueves
    Left = 711
    Top = 986
  end
  object spVentasDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 664
  end
  object dsVentasDiaViernes: TDataSource
    DataSet = spVentasDiaViernes
    Left = 855
    Top = 680
  end
  object spVtasCerrDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 713
  end
  object dsVtasCerrDiaViernes: TDataSource
    DataSet = spVtasCerrDiaViernes
    Left = 855
    Top = 731
  end
  object spAdelDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 763
  end
  object dsAdelDiaViernes: TDataSource
    DataSet = spAdelDiaViernes
    Left = 855
    Top = 782
  end
  object spLiquDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 813
  end
  object dsLiquDiaViernes: TDataSource
    DataSet = spLiquDiaViernes
    Left = 855
    Top = 833
  end
  object spPagosDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 863
  end
  object dsPagosDiaViernes: TDataSource
    DataSet = spPagosDiaViernes
    Left = 855
    Top = 876
  end
  object spOtrPagosDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 913
  end
  object dsOtrPagosDiaViernes: TDataSource
    DataSet = spOtrPagosDiaViernes
    Left = 855
    Top = 935
  end
  object spGastosDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 784
    Top = 963
  end
  object dsGastosDiaViernes: TDataSource
    DataSet = spGastosDiaViernes
    Left = 855
    Top = 986
  end
  object spVentasDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 664
  end
  object dsVentasDiaSabado: TDataSource
    DataSet = spVentasDiaSabado
    Left = 991
    Top = 680
  end
  object spVtasCerrDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 713
  end
  object dsVtasCerrDiaSabado: TDataSource
    DataSet = spVtasCerrDiaSabado
    Left = 991
    Top = 731
  end
  object spAdelDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 763
  end
  object dsAdelDiaSabado: TDataSource
    DataSet = spAdelDiaSabado
    Left = 991
    Top = 782
  end
  object spLiquDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 813
  end
  object dsLiquDiaSabado: TDataSource
    DataSet = spLiquDiaSabado
    Left = 991
    Top = 833
  end
  object spPagosDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 863
  end
  object dsPagosDiaSabado: TDataSource
    DataSet = spPagosDiaSabado
    Left = 991
    Top = 876
  end
  object spOtrPagosDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 913
  end
  object dsOtrPagosDiaSabado: TDataSource
    DataSet = spOtrPagosDiaSabado
    Left = 991
    Top = 935
  end
  object spGastosDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 920
    Top = 963
  end
  object dsGastosDiaSabado: TDataSource
    DataSet = spGastosDiaSabado
    Left = 991
    Top = 986
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
    Left = 1080
    Top = 8
  end
  object dsGetSucursales: TDataSource
    DataSet = spGetSucursales
    Left = 1080
    Top = 64
  end
  object spTransXDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 762
  end
  object dsTransXDia: TDataSource
    DataSet = spTransXDia
    Left = 1248
    Top = 784
  end
  object spTransSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 762
  end
  object dsTransSem: TDataSource
    DataSet = spTransSem
    Left = 1444
    Top = 784
  end
  object spTransMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 762
  end
  object dsTransMes: TDataSource
    DataSet = spTransMes
    Left = 1641
    Top = 784
  end
  object spTransYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 754
  end
  object dsTransYear: TDataSource
    DataSet = spTransYear
    Left = 1838
    Top = 776
  end
  object dsTintoDia: TDataSource
    DataSet = spTintoDia
    Left = 1248
    Top = 838
  end
  object dsTintoSem: TDataSource
    DataSet = spTintoSem
    Left = 1444
    Top = 838
  end
  object dsTintoMes: TDataSource
    DataSet = spTintoMes
    Left = 1641
    Top = 838
  end
  object dsTintoYear: TDataSource
    DataSet = spTintoYear
    Left = 1838
    Top = 830
  end
  object spTintoDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTintoDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 816
  end
  object spTintoSem: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTintoSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1364
    Top = 816
  end
  object spTintoMes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTintoMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1561
    Top = 816
  end
  object spTintoYear: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTintoYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1757
    Top = 808
  end
  object spGetVentasDivisionXPeriodo: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasDivisionXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1080
    Top = 136
  end
  object dsGetVentasDivisionXPeriodo: TDataSource
    DataSet = spGetVentasDivisionXPeriodo
    Left = 1080
    Top = 200
  end
  object spVentasDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 53
    Top = 658
  end
  object dsVentasDiaDomingo: TDataSource
    DataSet = spVentasDiaDomingo
    Left = 132
    Top = 682
  end
  object dsVtasCerrDiaDomingo: TDataSource
    DataSet = spVtasCerrDiaDomingo
    Left = 132
    Top = 733
  end
  object spVtasCerrDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 53
    Top = 707
  end
  object spAdelDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 53
    Top = 757
  end
  object dsAdelDiaDomingo: TDataSource
    DataSet = spAdelDiaDomingo
    Left = 132
    Top = 784
  end
  object spLiquDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 53
    Top = 807
  end
  object dsLiquDiaDomingo: TDataSource
    DataSet = spLiquDiaDomingo
    Left = 132
    Top = 835
  end
  object spPagosDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 45
    Top = 865
  end
  object dsPagosDiaDomingo: TDataSource
    DataSet = spPagosDiaDomingo
    Left = 132
    Top = 886
  end
  object spOtrPagosDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 45
    Top = 915
  end
  object dsOtrPagosDiaDomingo: TDataSource
    DataSet = spOtrPagosDiaDomingo
    Left = 132
    Top = 937
  end
  object spGastosDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 45
    Top = 965
  end
  object dsGastosDiaDomingo: TDataSource
    DataSet = spGastosDiaDomingo
    Left = 132
    Top = 988
  end
  object spTransDiaDomingo: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 43
    Top = 1019
  end
  object dsTransDiaDomingo: TDataSource
    DataSet = spTransDiaDomingo
    Left = 131
    Top = 1035
  end
  object spTransDiaLunes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 211
    Top = 1019
  end
  object dsTransDiaLunes: TDataSource
    DataSet = spTransDiaLunes
    Left = 291
    Top = 1035
  end
  object spTransDiaMartes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 355
    Top = 1019
  end
  object dsTransDiaMartes: TDataSource
    DataSet = spTransDiaMartes
    Left = 427
    Top = 1035
  end
  object spTransDiaMiercoles: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 499
    Top = 1011
  end
  object dsTransDiaMiercoles: TDataSource
    DataSet = spTransDiaMiercoles
    Left = 571
    Top = 1035
  end
  object dsTransDiaJueves: TDataSource
    DataSet = spTransDiaJueves
    Left = 707
    Top = 1035
  end
  object spTransDiaJueves: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 635
    Top = 1011
  end
  object dsTransDiaViernes: TDataSource
    DataSet = spTransDiaViernes
    Left = 851
    Top = 1035
  end
  object spTransDiaViernes: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 779
    Top = 1011
  end
  object dsTransDiaSabado: TDataSource
    DataSet = spTransDiaSabado
    Left = 987
    Top = 1035
  end
  object spTransDiaSabado: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransferenciasXDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pdteDia'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 923
    Top = 1011
  end
  object spVentasMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1906
    Top = 3
  end
  object dsVentasMesAnt: TDataSource
    DataSet = spVentasMesAnt
    Left = 2009
    Top = 24
  end
  object spVentasMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2090
    Top = 2
  end
  object dsVentasMesYP: TDataSource
    DataSet = spVentasMesYP
    Left = 2161
    Top = 23
  end
  object spVentasYearAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2285
    Top = 55
  end
  object dsVentasYearAnt: TDataSource
    DataSet = spVentasYearAnt
    Left = 2286
    Top = 119
  end
  object spVentasYearAntAlDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteDiaIni'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pdteDiaFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 2373
    Top = 87
  end
  object dsVentasYearAntAlDia: TDataSource
    DataSet = spVentasYearAntAlDia
    Left = 2374
    Top = 143
  end
  object spVtasCerrYearAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2285
    Top = 181
  end
  object dsVtasCerrYearAnt: TDataSource
    DataSet = spVtasCerrYearAnt
    Left = 2286
    Top = 235
  end
  object spVtasCerrYearAntAlDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2373
    Top = 213
  end
  object dsVtasCerrYearAntAlDia: TDataSource
    DataSet = spVtasCerrYearAntAlDia
    Left = 2374
    Top = 267
  end
  object spVtasCerrMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1937
    Top = 62
  end
  object dsVtasCerrMesAnt: TDataSource
    DataSet = spVtasCerrMesAnt
    Left = 2009
    Top = 76
  end
  object dsVtasCerrMesYP: TDataSource
    DataSet = spVtasCerrMesYP
    Left = 2161
    Top = 83
  end
  object spVtasCerrMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasCerradasXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2089
    Top = 61
  end
  object spAdelantosMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1937
    Top = 114
  end
  object dsAdelantosMesAnt: TDataSource
    DataSet = spAdelantosMesAnt
    Left = 2009
    Top = 128
  end
  object dsAdelantosMesYP: TDataSource
    DataSet = spAdelantosMesYP
    Left = 2161
    Top = 143
  end
  object spAdelantosMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetAdelantosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2089
    Top = 113
  end
  object dsLiquidacionesMesAnt: TDataSource
    DataSet = spLiquidacionesMesAnt
    Left = 2009
    Top = 196
  end
  object spLiquidacionesMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1937
    Top = 174
  end
  object spLiquidacionesMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetLiquidacionesXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2089
    Top = 181
  end
  object dsLiquidacionesMesYP: TDataSource
    DataSet = spLiquidacionesMesYP
    Left = 2161
    Top = 211
  end
  object spOtrosPagosMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXMesAntv2;1'
    Parameters = <>
    Left = 1932
    Top = 242
  end
  object dsOtrosPagosMesAnt: TDataSource
    DataSet = spOtrosPagosMesAnt
    Left = 2012
    Top = 264
  end
  object spPagosMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1932
    Top = 318
  end
  object dsPagosMesAnt: TDataSource
    DataSet = spPagosMesAnt
    Left = 2012
    Top = 340
  end
  object spGastosMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXMesRep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1932
    Top = 374
  end
  object dsGastosMesAnt: TDataSource
    DataSet = spGastosMesAnt
    Left = 2012
    Top = 396
  end
  object dsTransMesAnt: TDataSource
    DataSet = spTransMesAnt
    Left = 2012
    Top = 456
  end
  object spOtrosPagosMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2085
    Top = 242
  end
  object dsOtrosPagosMesYP: TDataSource
    DataSet = spOtrosPagosMesYP
    Left = 2166
    Top = 264
  end
  object spPagosMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPagosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2085
    Top = 318
  end
  object dsPagosMesYP: TDataSource
    DataSet = spPagosMesYP
    Left = 2166
    Top = 340
  end
  object spGastosMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetGastosXMesRep;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2085
    Top = 374
  end
  object dsGastosMesYP: TDataSource
    DataSet = spGastosMesYP
    Left = 2166
    Top = 396
  end
  object spTransMesYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2085
    Top = 434
  end
  object dsTransMesYP: TDataSource
    DataSet = spTransMesYP
    Left = 2166
    Top = 456
  end
  object spTransMesAnt: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTransXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1933
    Top = 434
  end
  object spOtrosPagosMes: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetOtrosPagosXMes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1560
    Top = 544
  end
  object spOtrosPagosMesv2: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOtrosPagosXMesAntv2;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1936
    Top = 490
  end
  object dsOtrosPagosMesv2: TDataSource
    DataSet = spOtrosPagosMesv2
    Left = 2016
    Top = 514
  end
  object spGetVentasDivisionXPeriodoSEM: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasDivisionXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1080
    Top = 264
  end
  object dsGetVentasDivisionXPeriodoSEM: TDataSource
    DataSet = spGetVentasDivisionXPeriodoSEM
    Left = 1072
    Top = 328
  end
  object spGetVentasDivisionXPeriodoMES: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasDivisionXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1064
    Top = 392
  end
  object dsGetVentasDivisionXPeriodoMES: TDataSource
    DataSet = spGetVentasDivisionXPeriodoMES
    Left = 1056
    Top = 456
  end
  object spGetVentasDivisionXPeriodoYEAR: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetVentasDivisionXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1056
    Top = 512
  end
  object dsGetVentasDivisionXPeriodoYEAR: TDataSource
    DataSet = spGetVentasDivisionXPeriodoYEAR
    Left = 1048
    Top = 576
  end
  object spGetKPIsClientes: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetKPIsClientes;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteFin'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 96
    Top = 623
  end
  object dsGetKPIsClientes: TDataSource
    DataSet = spGetKPIsClientes
    Left = 208
    Top = 623
  end
  object spGetTicketPromedioXPeriodoD: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetTicketPromedioXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 888
  end
  object spGetTicketPromedioXPeriodoS: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetTicketPromedioXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 944
  end
  object spGetTicketPromedioXPeriodoM: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetTicketPromedioXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 1000
  end
  object spGetTicketPromedioXPeriodoY: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetTicketPromedioXPeriodo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
        Name = '@pintMes'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 1168
    Top = 1056
  end
  object spGetAdelantosXYearAnt: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetAdelantosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2280
    Top = 304
  end
  object spGetLiquidacionesXYearAnt: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetLiquidacionesXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2280
    Top = 360
  end
  object spGetOtrosPagosXYearAnt: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetOtrosPagosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2280
    Top = 416
  end
  object spGetPagosXYearAnt: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetPagosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2280
    Top = 472
  end
  object spGetGastosXYearAnt: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetGastosXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2280
    Top = 528
  end
  object spGetTransXYearAnt: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetTransXYear;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintYear'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2280
    Top = 592
  end
  object dsGetAdelantosXYearAnt: TDataSource
    DataSet = spGetAdelantosXYearAnt
    Left = 2384
    Top = 328
  end
  object dsGetLiquidacionesXYearAnt: TDataSource
    DataSet = spGetLiquidacionesXYearAnt
    Left = 2384
    Top = 384
  end
  object dsGetOtrosPagosXYearAnt: TDataSource
    DataSet = spGetOtrosPagosXYearAnt
    Left = 2384
    Top = 440
  end
  object dsGetPagosXYearAnt: TDataSource
    DataSet = spGetPagosXYearAnt
    Left = 2384
    Top = 496
  end
  object dsGetGastosXYearAnt: TDataSource
    DataSet = spGetGastosXYearAnt
    Left = 2384
    Top = 552
  end
  object dsGetTransXYearAnt: TDataSource
    DataSet = spGetTransXYearAnt
    Left = 2384
    Top = 608
  end
  object spGetAdelantosXPeriodo: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetAdelantosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2192
    Top = 680
  end
  object spGetLiquidacionesXPeriodo: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetLiquidacionesXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2192
    Top = 736
  end
  object spGetOtrosPagosXPeriodo: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetOtrosPagosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2192
    Top = 792
  end
  object spGetPagosXPeriodo: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetPagosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2192
    Top = 848
  end
  object spGetGastosXPeriodo: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetGastosXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2192
    Top = 904
  end
  object spGetTransXPeriodo: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetTransXSem;1'
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
        Name = '@pintAlcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 2192
    Top = 960
  end
  object dsGetAdelantosXPeriodo: TDataSource
    DataSet = spGetAdelantosXPeriodo
    Left = 2304
    Top = 704
  end
  object dsGetLiquidacionesXPeriodo: TDataSource
    DataSet = spGetLiquidacionesXPeriodo
    Left = 2304
    Top = 760
  end
  object dsGetOtrosPagosXPeriodo: TDataSource
    DataSet = spGetOtrosPagosXPeriodo
    Left = 2304
    Top = 816
  end
  object dsGetPagosXPeriodo: TDataSource
    DataSet = spGetPagosXPeriodo
    Left = 2304
    Top = 872
  end
  object dsGetGastosXPeriodo: TDataSource
    DataSet = spGetGastosXPeriodo
    Left = 2304
    Top = 928
  end
  object dsGetTransXPeriodo: TDataSource
    DataSet = spGetTransXPeriodo
    Left = 2304
    Top = 984
  end
end
