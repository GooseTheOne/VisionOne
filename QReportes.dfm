object frmQReportes: TfrmQReportes
  Left = 0
  Top = 74
  AutoSize = True
  Caption = 'Quick Reportes Admin'
  ClientHeight = 644
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 425
    Top = 18
    Width = 51
    Height = 17
    Caption = 'Sucursal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object btnAtras: TButton
    Left = 21
    Top = 15
    Width = 50
    Height = 25
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnAtrasClick
  end
  object btnAdelante: TButton
    Left = 269
    Top = 15
    Width = 50
    Height = 25
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnAdelanteClick
  end
  object btnConsultar: TButton
    Left = 328
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnConsultarClick
  end
  object dbLkcSucursal: TDBLookupComboBox
    Left = 481
    Top = 15
    Width = 177
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = 'idSucursal'
    ListField = 'strSucursal'
    ListSource = dsGetSucursales
    ParentFont = False
    TabOrder = 4
    OnClick = dbLkcSucursalClick
  end
  object dtpCalendario: TDateTimePicker
    Left = 77
    Top = 15
    Width = 186
    Height = 25
    Date = 45354.000000000000000000
    Time = 0.891948877317190600
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object RadioGroup1: TRadioGroup
    Left = 690
    Top = 0
    Width = 286
    Height = 44
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'DIA'
      'SEM'
      'MES'
      'A'#209'O')
    ShowFrame = False
    TabOrder = 6
    OnClick = RadioGroup1Click
  end
  object tcViewers: TTabControl
    Left = 0
    Top = 46
    Width = 1008
    Height = 598
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
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
    object pnlDetalleSemanal: TPanel
      Left = 9
      Top = 39
      Width = 996
      Height = 545
      ParentBackground = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 8
      Visible = False
      object Label19: TLabel
        Left = 67
        Top = 52
        Width = 62
        Height = 21
        Caption = 'Ordenes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 80
        Top = 79
        Width = 49
        Height = 21
        Caption = 'Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 46
        Top = 99
        Width = 83
        Height = 21
        Caption = 'Descuentos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 26
        Top = 146
        Width = 103
        Height = 21
        Caption = 'Ventas Netas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 71
        Top = 172
        Width = 58
        Height = 21
        Caption = 'Importe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 103
        Top = 193
        Width = 26
        Height = 21
        Caption = 'IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 14
        Top = 221
        Width = 115
        Height = 21
        Caption = 'Ventas Cerradas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 57
        Top = 242
        Width = 72
        Height = 21
        Caption = 'Adelantos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 49
        Top = 264
        Width = 80
        Height = 21
        Caption = 'CxC Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 24
        Top = 292
        Width = 105
        Height = 21
        Caption = 'Ingreso Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label29: TLabel
        Left = 31
        Top = 313
        Width = 98
        Height = 21
        Caption = 'Liquidaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 42
        Top = 334
        Width = 87
        Height = 21
        Caption = 'Otros Pagos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 26
        Top = 380
        Width = 103
        Height = 21
        Caption = 'Ingreso Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 79
        Top = 456
        Width = 50
        Height = 21
        Caption = 'Gastos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 36
        Top = 478
        Width = 93
        Height = 21
        Caption = 'Ingreso Neto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 27
        Top = 407
        Width = 102
        Height = 21
        Caption = 'Transferencias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 63
        Top = 426
        Width = 66
        Height = 21
        Caption = 'Efectivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape12: TShape
        Left = 14
        Top = 502
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape13: TShape
        Left = 14
        Top = 451
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape14: TShape
        Left = 14
        Top = 403
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape15: TShape
        Left = 14
        Top = 378
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape16: TShape
        Left = 14
        Top = 288
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape17: TShape
        Left = 14
        Top = 216
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape18: TShape
        Left = 14
        Top = 168
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape19: TShape
        Left = 13
        Top = 142
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clLime
        Pen.Width = 0
      end
      object Shape20: TShape
        Left = 14
        Top = 76
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object DBText103: TDBText
        Left = 192
        Top = 51
        Width = 40
        Height = 25
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText104: TDBText
        Left = 145
        Top = 79
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText105: TDBText
        Left = 145
        Top = 99
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText106: TDBText
        Left = 145
        Top = 145
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText107: TDBText
        Left = 145
        Top = 172
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText108: TDBText
        Left = 145
        Top = 193
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText109: TDBText
        Left = 145
        Top = 221
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText110: TDBText
        Left = 145
        Top = 264
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText111: TDBText
        Left = 145
        Top = 242
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText112: TDBText
        Left = 145
        Top = 292
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText113: TDBText
        Left = 145
        Top = 313
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText114: TDBText
        Left = 145
        Top = 334
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText115: TDBText
        Left = 145
        Top = 380
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText116: TDBText
        Left = 145
        Top = 456
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText117: TDBText
        Left = 145
        Top = 478
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText118: TDBText
        Left = 145
        Top = 407
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText119: TDBText
        Left = 145
        Top = 426
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText120: TDBText
        Left = 312
        Top = 51
        Width = 40
        Height = 25
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText121: TDBText
        Left = 265
        Top = 79
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText122: TDBText
        Left = 265
        Top = 99
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText123: TDBText
        Left = 265
        Top = 145
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText124: TDBText
        Left = 265
        Top = 172
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText125: TDBText
        Left = 265
        Top = 193
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText126: TDBText
        Left = 265
        Top = 221
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText127: TDBText
        Left = 265
        Top = 242
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText128: TDBText
        Left = 265
        Top = 264
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText129: TDBText
        Left = 265
        Top = 292
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText130: TDBText
        Left = 265
        Top = 313
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText131: TDBText
        Left = 265
        Top = 334
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText132: TDBText
        Left = 265
        Top = 380
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText133: TDBText
        Left = 265
        Top = 456
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText134: TDBText
        Left = 265
        Top = 478
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText135: TDBText
        Left = 265
        Top = 407
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText136: TDBText
        Left = 265
        Top = 426
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText137: TDBText
        Left = 433
        Top = 51
        Width = 40
        Height = 25
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText138: TDBText
        Left = 386
        Top = 79
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText139: TDBText
        Left = 386
        Top = 99
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText140: TDBText
        Left = 386
        Top = 145
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText141: TDBText
        Left = 386
        Top = 172
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText142: TDBText
        Left = 386
        Top = 193
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText143: TDBText
        Left = 386
        Top = 221
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText144: TDBText
        Left = 386
        Top = 242
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText145: TDBText
        Left = 386
        Top = 264
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText146: TDBText
        Left = 386
        Top = 292
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText147: TDBText
        Left = 386
        Top = 313
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText148: TDBText
        Left = 386
        Top = 334
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText149: TDBText
        Left = 386
        Top = 380
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText150: TDBText
        Left = 386
        Top = 456
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText151: TDBText
        Left = 386
        Top = 478
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText152: TDBText
        Left = 386
        Top = 407
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText153: TDBText
        Left = 386
        Top = 426
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText154: TDBText
        Left = 554
        Top = 51
        Width = 40
        Height = 25
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText155: TDBText
        Left = 507
        Top = 79
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText156: TDBText
        Left = 507
        Top = 99
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText157: TDBText
        Left = 507
        Top = 145
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText158: TDBText
        Left = 507
        Top = 172
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText159: TDBText
        Left = 507
        Top = 193
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText160: TDBText
        Left = 507
        Top = 221
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText161: TDBText
        Left = 507
        Top = 242
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText162: TDBText
        Left = 507
        Top = 264
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText163: TDBText
        Left = 507
        Top = 292
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText164: TDBText
        Left = 507
        Top = 313
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText165: TDBText
        Left = 507
        Top = 334
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText166: TDBText
        Left = 507
        Top = 380
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText167: TDBText
        Left = 507
        Top = 456
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText168: TDBText
        Left = 507
        Top = 478
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText169: TDBText
        Left = 507
        Top = 407
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText170: TDBText
        Left = 507
        Top = 426
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText171: TDBText
        Left = 674
        Top = 51
        Width = 40
        Height = 25
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText172: TDBText
        Left = 627
        Top = 79
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText173: TDBText
        Left = 627
        Top = 99
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText174: TDBText
        Left = 627
        Top = 145
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText175: TDBText
        Left = 627
        Top = 172
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText176: TDBText
        Left = 627
        Top = 193
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText177: TDBText
        Left = 627
        Top = 221
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText178: TDBText
        Left = 627
        Top = 242
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText179: TDBText
        Left = 627
        Top = 264
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText180: TDBText
        Left = 627
        Top = 292
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText181: TDBText
        Left = 627
        Top = 313
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText182: TDBText
        Left = 627
        Top = 334
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText183: TDBText
        Left = 627
        Top = 380
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText184: TDBText
        Left = 627
        Top = 456
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText185: TDBText
        Left = 627
        Top = 478
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText186: TDBText
        Left = 627
        Top = 407
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText187: TDBText
        Left = 627
        Top = 426
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText188: TDBText
        Left = 795
        Top = 51
        Width = 40
        Height = 25
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText189: TDBText
        Left = 748
        Top = 79
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText190: TDBText
        Left = 748
        Top = 99
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText191: TDBText
        Left = 748
        Top = 145
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText192: TDBText
        Left = 748
        Top = 172
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText193: TDBText
        Left = 748
        Top = 193
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText194: TDBText
        Left = 748
        Top = 221
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText195: TDBText
        Left = 748
        Top = 242
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText196: TDBText
        Left = 748
        Top = 264
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText197: TDBText
        Left = 748
        Top = 292
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText198: TDBText
        Left = 748
        Top = 313
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText199: TDBText
        Left = 748
        Top = 334
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText200: TDBText
        Left = 748
        Top = 380
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText201: TDBText
        Left = 748
        Top = 456
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText202: TDBText
        Left = 748
        Top = 478
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText203: TDBText
        Left = 748
        Top = 407
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText204: TDBText
        Left = 748
        Top = 426
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText205: TDBText
        Left = 916
        Top = 51
        Width = 40
        Height = 25
        Alignment = taCenter
        DataField = 'Ordenes'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText206: TDBText
        Left = 869
        Top = 79
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText207: TDBText
        Left = 869
        Top = 99
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText208: TDBText
        Left = 869
        Top = 145
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText209: TDBText
        Left = 869
        Top = 172
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText210: TDBText
        Left = 869
        Top = 193
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText211: TDBText
        Left = 869
        Top = 221
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText212: TDBText
        Left = 869
        Top = 242
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText213: TDBText
        Left = 869
        Top = 264
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText214: TDBText
        Left = 869
        Top = 292
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText215: TDBText
        Left = 869
        Top = 313
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText216: TDBText
        Left = 869
        Top = 334
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText217: TDBText
        Left = 869
        Top = 380
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText218: TDBText
        Left = 869
        Top = 456
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText219: TDBText
        Left = 869
        Top = 478
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText220: TDBText
        Left = 869
        Top = 407
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText221: TDBText
        Left = 869
        Top = 426
        Width = 97
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 183
        Top = 7
        Width = 759
        Height = 21
        Caption = 
          'DOM                      LUN                     MAR            ' +
          '             MIE                        JUE                     ' +
          '   VIE                       SAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object lblDom: TLabel
        Left = 170
        Top = 30
        Width = 42
        Height = 17
        Caption = 'lblDom'
      end
      object lblLun: TLabel
        Left = 289
        Top = 30
        Width = 45
        Height = 17
        Caption = 'Label37'
      end
      object lblMar: TLabel
        Left = 406
        Top = 30
        Width = 45
        Height = 17
        Caption = 'Label37'
      end
      object lblMie: TLabel
        Left = 533
        Top = 30
        Width = 45
        Height = 17
        Caption = 'Label37'
      end
      object lblSab: TLabel
        Left = 893
        Top = 30
        Width = 45
        Height = 17
        Caption = 'Label37'
      end
      object lblVie: TLabel
        Left = 772
        Top = 30
        Width = 45
        Height = 17
        Caption = 'Label37'
      end
      object lblJue: TLabel
        Left = 655
        Top = 30
        Width = 45
        Height = 17
        Caption = 'Label37'
      end
      object DBText240: TDBText
        Left = 145
        Top = 119
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'Dev Ventas'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText241: TDBText
        Left = 265
        Top = 119
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'Dev Ventas'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText242: TDBText
        Left = 386
        Top = 119
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'Dev Ventas'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText243: TDBText
        Left = 507
        Top = 119
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'Dev Ventas'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText244: TDBText
        Left = 627
        Top = 119
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'Dev Ventas'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText245: TDBText
        Left = 748
        Top = 119
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'Dev Ventas'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBText246: TDBText
        Left = 869
        Top = 119
        Width = 97
        Height = 26
        Alignment = taRightJustify
        Color = clBtnFace
        DataField = 'Dev Ventas'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label40: TLabel
        Left = 14
        Top = 119
        Width = 115
        Height = 21
        Caption = 'Devoluci'#243'n Vtas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 3
        Top = 354
        Width = 126
        Height = 21
        Caption = 'Devoluci'#243'n Pagos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 77
        Top = 509
        Width = 52
        Height = 21
        Caption = 'Retiros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBText247: TDBText
        Left = 145
        Top = 509
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText248: TDBText
        Left = 265
        Top = 509
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText249: TDBText
        Left = 386
        Top = 509
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText250: TDBText
        Left = 507
        Top = 509
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText251: TDBText
        Left = 627
        Top = 509
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText252: TDBText
        Left = 748
        Top = 509
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText253: TDBText
        Left = 869
        Top = 509
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText254: TDBText
        Left = 145
        Top = 354
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText255: TDBText
        Left = 265
        Top = 354
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText256: TDBText
        Left = 386
        Top = 354
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = DataSource3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText257: TDBText
        Left = 507
        Top = 354
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = DataSource4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText258: TDBText
        Left = 627
        Top = 354
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = DataSource5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText259: TDBText
        Left = 748
        Top = 354
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = DataSource6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText260: TDBText
        Left = 869
        Top = 354
        Width = 97
        Height = 26
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = DataSource7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlLiquidaciones: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      TabOrder = 4
      Visible = False
      object DBGrid4: TDBGrid
        Left = 5
        Top = 3
        Width = 988
        Height = 542
        DataSource = dsGetRepAdminLiquidacionesDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid4DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID Pago'
            Title.Caption = 'ID'
            Width = 43
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Pago'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Forma Pago'
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fecha'
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recepci'#243'n'
            Width = 160
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Ventas'
            Width = 65
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Descuento'
            Width = 74
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Ventas Netas'
            Width = 68
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Adelanto'
            Width = 70
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 59
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'IVA'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Suc'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id Cte'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Folio'
            Width = 52
            Visible = True
          end>
      end
    end
    object pnlGastos: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      Caption = 'Gastos'
      TabOrder = 7
      Visible = False
    end
    object pnlOtrosPagos: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      Caption = 'Otros Pagos'
      TabOrder = 6
      Visible = False
    end
    object pnlPagos: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      Caption = 'Pagos'
      TabOrder = 5
      Visible = False
    end
    object pnlVentas: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      TabOrder = 1
      Visible = False
      object DBGrid1: TDBGrid
        Left = 5
        Top = 3
        Width = 990
        Height = 542
        DataSource = dsGetRepAdminVentasDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Orden'
            ReadOnly = True
            Title.Color = clNavy
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            ReadOnly = True
            Title.Color = clNavy
            Width = 193
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recepci'#243'n'
            ReadOnly = True
            Title.Color = clNavy
            Width = 160
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Ventas'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = clNavy
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Descuento'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Desc.'
            Title.Color = clNavy
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Ventas Netas'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Vtas Net'
            Title.Color = clNavy
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Adelanto'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = clNavy
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = clNavy
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = clNavy
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'IVA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Color = clNavy
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            ReadOnly = True
            Title.Color = clNavy
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Suc'
            ReadOnly = True
            Title.Color = clNavy
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id Cte'
            ReadOnly = True
            Title.Color = clNavy
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            ReadOnly = True
            Title.Color = clNavy
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Folio'
            ReadOnly = True
            Title.Color = clNavy
            Visible = True
          end>
      end
    end
    object pnlVentasCerradas: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      TabOrder = 2
      Visible = False
      object DBGrid2: TDBGrid
        Left = 5
        Top = 3
        Width = 988
        Height = 542
        DataSource = dsGetRepAdminVentasCerrDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid2DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID Pago'
            Width = 49
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Pago'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recepci'#243'n'
            Width = 162
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Ventas'
            Width = 59
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Descuento'
            Width = 74
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Ventas Netas'
            Width = 68
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Adelanto'
            Width = 70
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CxC'
            Width = 60
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Importe'
            Width = 59
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'IVA'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Suc'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id Cte'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Folio'
            Width = 52
            Visible = True
          end>
      end
    end
    object pnlAdelantos: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      TabOrder = 3
      Visible = False
      object DBGrid3: TDBGrid
        Left = 5
        Top = 3
        Width = 988
        Height = 542
        DataSource = dsGetRepAdminAdelantosDet
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID Pago'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pago'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Forma Pago'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Orden'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cliente'
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Recepci'#243'n'
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ventas'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descuento'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ventas Netas'
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Adelanto'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CxC'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Importe'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IVA'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Estatus'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Suc'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Id Cte'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usuario'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Folio'
            Width = 52
            Visible = True
          end>
      end
    end
    object pnlResumen: TPanel
      Left = 6
      Top = 32
      Width = 996
      Height = 560
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object DBText1: TDBText
        Left = 199
        Top = 10
        Width = 52
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ordenes'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 142
        Top = 61
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 142
        Top = 36
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 142
        Top = 111
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 142
        Top = 138
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 142
        Top = 165
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 142
        Top = 192
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 142
        Top = 219
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 142
        Top = 246
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 142
        Top = 273
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 142
        Top = 300
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 142
        Top = 327
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 142
        Top = 381
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText14: TDBText
        Left = 142
        Top = 463
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 142
        Top = 487
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 142
        Top = 409
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText17: TDBText
        Left = 142
        Top = 433
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 69
        Top = 10
        Width = 62
        Height = 21
        Caption = 'Ordenes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 82
        Top = 36
        Width = 49
        Height = 21
        Caption = 'Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 48
        Top = 61
        Width = 83
        Height = 21
        Caption = 'Descuentos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 28
        Top = 111
        Width = 103
        Height = 21
        Caption = 'Ventas Netas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 73
        Top = 138
        Width = 58
        Height = 21
        Caption = 'Importe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 105
        Top = 165
        Width = 26
        Height = 21
        Caption = 'IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 192
        Width = 115
        Height = 21
        Caption = 'Ventas Cerradas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 59
        Top = 219
        Width = 72
        Height = 21
        Caption = 'Adelantos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 51
        Top = 246
        Width = 80
        Height = 21
        Caption = 'CxC Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 26
        Top = 273
        Width = 105
        Height = 21
        Caption = 'Ingreso Ventas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 33
        Top = 300
        Width = 98
        Height = 21
        Caption = 'Liquidaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 44
        Top = 327
        Width = 87
        Height = 21
        Caption = 'Otros Pagos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 28
        Top = 381
        Width = 103
        Height = 21
        Caption = 'Ingreso Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 81
        Top = 463
        Width = 50
        Height = 21
        Caption = 'Gastos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 38
        Top = 487
        Width = 93
        Height = 21
        Caption = 'Ingreso Neto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 29
        Top = 409
        Width = 102
        Height = 21
        Caption = 'Transferencias:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 63
        Top = 433
        Width = 66
        Height = 21
        Caption = 'Efectivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape2: TShape
        Left = 16
        Top = 269
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape3: TShape
        Left = 16
        Top = 377
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape4: TShape
        Left = 16
        Top = 403
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape5: TShape
        Left = 16
        Top = 512
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape6: TShape
        Left = 16
        Top = 458
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape7: TShape
        Left = 16
        Top = 33
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape8: TShape
        Left = 16
        Top = 134
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape9: TShape
        Left = 16
        Top = 188
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape1: TShape
        Left = 16
        Top = 107
        Width = 960
        Height = 4
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object DBText18: TDBText
        Left = 344
        Top = 10
        Width = 52
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ordenes'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText19: TDBText
        Left = 287
        Top = 36
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText20: TDBText
        Left = 287
        Top = 61
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText21: TDBText
        Left = 287
        Top = 111
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText22: TDBText
        Left = 287
        Top = 138
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText23: TDBText
        Left = 287
        Top = 165
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText24: TDBText
        Left = 287
        Top = 192
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText25: TDBText
        Left = 287
        Top = 219
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText26: TDBText
        Left = 287
        Top = 246
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText27: TDBText
        Left = 287
        Top = 273
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText28: TDBText
        Left = 287
        Top = 300
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText29: TDBText
        Left = 287
        Top = 327
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText30: TDBText
        Left = 287
        Top = 381
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText31: TDBText
        Left = 287
        Top = 463
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText32: TDBText
        Left = 287
        Top = 487
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText33: TDBText
        Left = 287
        Top = 408
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText34: TDBText
        Left = 287
        Top = 433
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText35: TDBText
        Left = 489
        Top = 10
        Width = 52
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ordenes'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText36: TDBText
        Left = 432
        Top = 61
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText37: TDBText
        Left = 432
        Top = 111
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText38: TDBText
        Left = 432
        Top = 138
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText39: TDBText
        Left = 432
        Top = 165
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText40: TDBText
        Left = 432
        Top = 192
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText41: TDBText
        Left = 432
        Top = 219
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText42: TDBText
        Left = 432
        Top = 246
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText43: TDBText
        Left = 432
        Top = 273
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText44: TDBText
        Left = 432
        Top = 300
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText45: TDBText
        Left = 432
        Top = 327
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText46: TDBText
        Left = 432
        Top = 381
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText47: TDBText
        Left = 432
        Top = 463
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText48: TDBText
        Left = 432
        Top = 487
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText49: TDBText
        Left = 432
        Top = 408
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText50: TDBText
        Left = 432
        Top = 433
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText51: TDBText
        Left = 432
        Top = 36
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText69: TDBText
        Left = 722
        Top = 36
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText70: TDBText
        Left = 722
        Top = 433
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText71: TDBText
        Left = 722
        Top = 408
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText72: TDBText
        Left = 722
        Top = 487
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText73: TDBText
        Left = 722
        Top = 463
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText74: TDBText
        Left = 722
        Top = 381
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText75: TDBText
        Left = 722
        Top = 327
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText76: TDBText
        Left = 722
        Top = 300
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText77: TDBText
        Left = 722
        Top = 273
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText78: TDBText
        Left = 722
        Top = 246
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText79: TDBText
        Left = 722
        Top = 219
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText80: TDBText
        Left = 722
        Top = 192
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText81: TDBText
        Left = 722
        Top = 165
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText82: TDBText
        Left = 722
        Top = 138
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText83: TDBText
        Left = 722
        Top = 111
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText84: TDBText
        Left = 722
        Top = 61
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText85: TDBText
        Left = 779
        Top = 10
        Width = 52
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ordenes'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText52: TDBText
        Left = 634
        Top = 10
        Width = 52
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ordenes'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText53: TDBText
        Left = 577
        Top = 36
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText54: TDBText
        Left = 577
        Top = 61
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText55: TDBText
        Left = 577
        Top = 111
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText56: TDBText
        Left = 577
        Top = 138
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText57: TDBText
        Left = 577
        Top = 165
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText58: TDBText
        Left = 577
        Top = 192
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText59: TDBText
        Left = 577
        Top = 219
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText60: TDBText
        Left = 577
        Top = 246
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText61: TDBText
        Left = 577
        Top = 273
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText62: TDBText
        Left = 577
        Top = 300
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText63: TDBText
        Left = 577
        Top = 327
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText64: TDBText
        Left = 577
        Top = 381
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText65: TDBText
        Left = 577
        Top = 463
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText66: TDBText
        Left = 577
        Top = 487
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText67: TDBText
        Left = 577
        Top = 408
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText68: TDBText
        Left = 577
        Top = 433
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText86: TDBText
        Left = 924
        Top = 10
        Width = 52
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ordenes'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText87: TDBText
        Left = 867
        Top = 36
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText88: TDBText
        Left = 867
        Top = 61
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Descuentos'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText89: TDBText
        Left = 867
        Top = 111
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Netas'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText90: TDBText
        Left = 867
        Top = 138
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Importe'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText91: TDBText
        Left = 867
        Top = 165
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'IVA'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText92: TDBText
        Left = 867
        Top = 192
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ventas Cerradas'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText93: TDBText
        Left = 867
        Top = 219
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Adelantos'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText94: TDBText
        Left = 867
        Top = 246
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'CxC Ventas'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText95: TDBText
        Left = 867
        Top = 273
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Ventas'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText96: TDBText
        Left = 867
        Top = 300
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Liquidaciones'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText97: TDBText
        Left = 867
        Top = 327
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Otros Pagos'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText98: TDBText
        Left = 867
        Top = 381
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Total'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText99: TDBText
        Left = 867
        Top = 463
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Gastos'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText100: TDBText
        Left = 867
        Top = 487
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Ingreso Neto'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText101: TDBText
        Left = 867
        Top = 408
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Transferencias'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText102: TDBText
        Left = 867
        Top = 433
        Width = 109
        Height = 24
        Alignment = taRightJustify
        DataField = 'Efectivo'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape10: TShape
        Left = 422
        Top = 33
        Width = 4
        Height = 512
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Shape11: TShape
        Left = 712
        Top = 33
        Width = 4
        Height = 512
        Brush.Color = clNavy
        Pen.Color = clNavy
        Pen.Width = 0
      end
      object Label37: TLabel
        Left = 14
        Top = 84
        Width = 115
        Height = 21
        Caption = 'Devoluci'#243'n Vtas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBText222: TDBText
        Left = 142
        Top = 84
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Dev Ventas'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText223: TDBText
        Left = 287
        Top = 84
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Dev Ventas'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText224: TDBText
        Left = 432
        Top = 84
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Dev Ventas'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText225: TDBText
        Left = 577
        Top = 84
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Dev Ventas'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText226: TDBText
        Left = 722
        Top = 84
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Dev Ventas'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText227: TDBText
        Left = 867
        Top = 84
        Width = 109
        Height = 25
        Alignment = taRightJustify
        DataField = 'Dev Ventas'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label38: TLabel
        Left = 10
        Top = 350
        Width = 126
        Height = 21
        Caption = 'Devoluci'#243'n Pagos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 77
        Top = 519
        Width = 52
        Height = 21
        Caption = 'Retiros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object DBText228: TDBText
        Left = 145
        Top = 352
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText229: TDBText
        Left = 290
        Top = 354
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText230: TDBText
        Left = 435
        Top = 354
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText231: TDBText
        Left = 580
        Top = 354
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText232: TDBText
        Left = 725
        Top = 354
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText233: TDBText
        Left = 870
        Top = 354
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Devoluciones'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText234: TDBText
        Left = 145
        Top = 519
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = dsGetReportesAdminD
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText235: TDBText
        Left = 291
        Top = 517
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = dsGetReportesAdminS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText236: TDBText
        Left = 435
        Top = 519
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = dsGetReportesAdminM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText237: TDBText
        Left = 580
        Top = 519
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = dsGetReportesAdminMP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText238: TDBText
        Left = 729
        Top = 519
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = dsGetReportesAdminY
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText239: TDBText
        Left = 868
        Top = 519
        Width = 106
        Height = 25
        Alignment = taRightJustify
        DataField = 'Retiros'
        DataSource = dsGetReportesAdminYP
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
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
    Left = 760
  end
  object spGetSucursales: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetSucursales;1'
    Parameters = <>
    Left = 1048
    Top = 8
  end
  object dsGetSucursales: TDataSource
    DataSet = spGetSucursales
    Left = 1048
    Top = 64
  end
  object spGetReportesAdminD: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1048
    Top = 144
  end
  object dsGetReportesAdminD: TDataSource
    DataSet = spGetReportesAdminD
    Left = 1048
    Top = 208
  end
  object spGetReportesAdminS: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1048
    Top = 272
  end
  object dsGetReportesAdminS: TDataSource
    DataSet = spGetReportesAdminS
    Left = 1048
    Top = 336
  end
  object spGetReportesAdminM: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1048
    Top = 400
  end
  object dsGetReportesAdminM: TDataSource
    DataSet = spGetReportesAdminM
    Left = 1048
    Top = 464
  end
  object spGetReportesAdminY: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1048
    Top = 528
  end
  object dsGetReportesAdminY: TDataSource
    DataSet = spGetReportesAdminY
    Left = 1048
    Top = 592
  end
  object spGetReportesAdminMP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1144
    Top = 424
  end
  object dsGetReportesAdminMP: TDataSource
    DataSet = spGetReportesAdminMP
    Left = 1144
    Top = 488
  end
  object spGetReportesAdminYP: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1144
    Top = 552
  end
  object dsGetReportesAdminYP: TDataSource
    DataSet = spGetReportesAdminYP
    Left = 1144
    Top = 616
  end
  object spGetRepAdminVentasDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetRepAdminVentasDet;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 72
    Top = 640
  end
  object dsGetRepAdminVentasDet: TDataSource
    DataSet = spGetRepAdminVentasDet
    Left = 72
    Top = 696
  end
  object spGetRepAdminVentasCerrDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetRepAdminVentasCerrDet;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 240
    Top = 640
  end
  object dsGetRepAdminVentasCerrDet: TDataSource
    DataSet = spGetRepAdminVentasCerrDet
    Left = 240
    Top = 696
  end
  object spGetRepAdminLiquidacionesDet: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetRepAdminLiquidacionesDet;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 600
    Top = 640
  end
  object dsGetRepAdminAdelantosDet: TDataSource
    DataSet = spGetRepAdminAdelantosDet
    Left = 416
    Top = 696
  end
  object dsGetRepAdminLiquidacionesDet: TDataSource
    DataSet = spGetRepAdminLiquidacionesDet
    Left = 600
    Top = 696
  end
  object spGetRepAdminAdelantosDet: TADOStoredProc
    Connection = Conn
    ProcedureName = 'spGetRepAdminAdelantosDet;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 416
    Top = 640
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    CommandTimeout = 5
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1184
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 1256
    Top = 48
  end
  object ADOStoredProc2: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintPeriodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1184
    Top = 80
  end
  object ADOStoredProc3: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1184
    Top = 136
  end
  object ADOStoredProc4: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1184
    Top = 192
  end
  object ADOStoredProc5: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1184
    Top = 248
  end
  object ADOStoredProc6: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1184
    Top = 304
  end
  object DataSource2: TDataSource
    DataSet = ADOStoredProc2
    Left = 1256
    Top = 104
  end
  object DataSource3: TDataSource
    DataSet = ADOStoredProc3
    Left = 1256
    Top = 160
  end
  object DataSource4: TDataSource
    DataSet = ADOStoredProc4
    Left = 1256
    Top = 216
  end
  object DataSource5: TDataSource
    DataSet = ADOStoredProc5
    Left = 1256
    Top = 272
  end
  object DataSource6: TDataSource
    DataSet = ADOStoredProc6
    Left = 1256
    Top = 328
  end
  object ADOStoredProc7: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetReportesAdmin;1'
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
      end
      item
        Name = '@pintperiodo'
        Attributes = [paNullable]
        DataType = ftInteger
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
      end>
    Left = 1184
    Top = 360
  end
  object DataSource7: TDataSource
    DataSet = ADOStoredProc7
    Left = 1256
    Top = 384
  end
end
