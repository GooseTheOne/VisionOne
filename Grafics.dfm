object Graficas: TGraficas
  Left = 0
  Top = 0
  Caption = 'Graficas'
  ClientHeight = 624
  ClientWidth = 1029
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
    Left = 512
    Top = 26
    Width = 45
    Height = 19
    Caption = 'Inicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 713
    Top = 26
    Width = 27
    Height = 19
    Caption = 'Fin:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 41
    Top = 107
    Width = 46
    Height = 19
    Caption = 'Min Y:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 184
    Top = 107
    Width = 49
    Height = 19
    Caption = 'Max Y:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 68
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
  object chrtVentaXMes: TChart
    Left = 8
    Top = 142
    Width = 1017
    Height = 474
    Legend.Alignment = laBottom
    Legend.CheckBoxes = True
    Legend.LegendStyle = lsSeries
    Legend.TextStyle = ltsValue
    Title.Alignment = taRightJustify
    Title.Color = clBlue
    Title.Font.Height = -19
    Title.Text.Strings = (
      'Ventas X Mes')
    Title.TextFormat = ttfHtml
    BottomAxis.LabelsAngle = 90
    BottomAxis.TickLength = 1
    BottomAxis.Title.Font.Height = -19
    Chart3DPercent = 16
    LeftAxis.MaximumOffset = 15
    Panning.MouseWheel = pmwNone
    View3D = False
    View3DOptions.HorizOffset = -6
    View3DOptions.Perspective = 27
    Zoom.MouseButton = mbMiddle
    TabOrder = 7
    DefaultCanvas = 'TGDIPlusCanvas'
    PrintMargins = (
      15
      30
      15
      30)
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      HoverElement = [heCurrent]
      Marks.Visible = True
      Marks.Style = smsValue
      Marks.Callout.Length = 20
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 8
    Top = 142
    Width = 1017
    Height = 474
    Legend.Alignment = laBottom
    Legend.CheckBoxes = True
    Legend.VertSpacing = 5
    Title.Alignment = taRightJustify
    Title.Font.Height = -19
    Title.Text.Strings = (
      'Ventas X Semana')
    BottomAxis.LabelsAngle = 90
    DepthTopAxis.AxisValuesFormat = '#,##0'
    View3D = False
    TabOrder = 0
    Visible = False
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series3: TBarSeries
      HoverElement = []
      BarBrush.Color = clBlack
      Marks.Frame.Visible = False
      Marks.Transparent = True
      Marks.Style = smsValue
      Marks.Angle = 90
      Marks.Arrow.Visible = False
      Marks.Callout.Arrow.Visible = False
      RoundSize = 8
      SeriesColor = clBlue
      Title = 'Ingresos'
      ValueFormat = '#,##0'
      BarWidthPercent = 40
      DepthPercent = 20
      MarksLocation = mlCenter
      OffsetPercent = -100
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series4: TBarSeries
      HoverElement = []
      BarBrush.Color = clYellow
      BarBrush.BackColor = clDefault
      Marks.Font.Color = 4194432
      Marks.Frame.Color = clRed
      Marks.Transparent = True
      Marks.Style = smsValue
      Marks.Angle = 90
      Marks.Arrow.Visible = False
      Marks.BackColor = 4194432
      Marks.Callout.Arrow.Visible = False
      Marks.Color = 4194432
      SeriesColor = clYellow
      Title = 'Ventas'
      BarWidthPercent = 40
      OffsetPercent = 100
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 8
    Top = 142
    Width = 1017
    Height = 474
    Legend.Visible = False
    Title.Alignment = taRightJustify
    Title.Font.Height = -24
    Title.Text.Strings = (
      'Ventas Diarias')
    BottomAxis.LabelsAngle = 90
    View3D = False
    TabOrder = 2
    Visible = False
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series6: TBarSeries
      HoverElement = []
      BarBrush.BackColor = clDefault
      Marks.Bevel = bvRaised
      Marks.Font.Color = clRed
      Marks.Font.Height = -12
      Marks.Frame.Width = 0
      Marks.RoundSize = 10
      Marks.Margins.Left = 0
      Marks.Margins.Top = 0
      Marks.Margins.Right = 0
      Marks.Margins.Bottom = 0
      Marks.Style = smsValue
      Marks.Angle = 90
      Marks.BackColor = 4259584
      Marks.Color = 4259584
      BarWidthPercent = 50
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object rgVentas: TRadioGroup
    Left = 7
    Top = 8
    Width = 498
    Height = 50
    Caption = 'Ventas'
    Columns = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Ventas X Mes'
      'Ventas X Semana'
      'Ventas Diarias')
    ParentFont = False
    TabOrder = 1
    OnClick = rgVentasClick
  end
  object btnConsultar: TButton
    Left = 911
    Top = 87
    Width = 107
    Height = 32
    Caption = 'GO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnConsultarClick
  end
  object dtpIni: TDateTimePicker
    Left = 563
    Top = 22
    Width = 136
    Height = 27
    Date = 44397.000000000000000000
    Time = 0.517896504628879500
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dtpFin: TDateTimePicker
    Left = 756
    Top = 22
    Width = 129
    Height = 27
    Date = 44397.000000000000000000
    Time = 0.517932847222255100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object ckbComparado: TCheckBox
    Left = 344
    Top = 94
    Width = 120
    Height = 17
    Caption = 'Comparado'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    OnClick = ckbComparadoClick
  end
  object ckbVentas: TCheckBox
    Left = 481
    Top = 71
    Width = 87
    Height = 17
    Caption = 'Ventas'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    State = cbChecked
    TabOrder = 8
    OnClick = ckbVentasClick
  end
  object ckbIngresos: TCheckBox
    Left = 584
    Top = 65
    Width = 97
    Height = 30
    Caption = 'Ingresos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = ckbIngresosClick
  end
  object ckbGastos: TCheckBox
    Left = 696
    Top = 71
    Width = 74
    Height = 17
    Caption = 'Gastos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = ckbGastosClick
  end
  object ckbValoresVentas: TCheckBox
    Left = 481
    Top = 94
    Width = 97
    Height = 17
    Caption = 'Valores'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 11
    OnClick = ckbValoresVentasClick
  end
  object ckbValoresIngresos: TCheckBox
    Left = 584
    Top = 94
    Width = 97
    Height = 17
    Caption = 'Valores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = ckbValoresIngresosClick
  end
  object ckbValoresGastos: TCheckBox
    Left = 696
    Top = 94
    Width = 97
    Height = 17
    Caption = 'Valores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = ckbValoresGastosClick
  end
  object ckbLineasVentas: TCheckBox
    Left = 481
    Top = 119
    Width = 97
    Height = 17
    Caption = 'Lineas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = ckbLineasVentasClick
  end
  object ckbLineasIngresos: TCheckBox
    Left = 584
    Top = 119
    Width = 97
    Height = 17
    Caption = 'Lineas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = ckbLineasIngresosClick
  end
  object ckbLineasGastos: TCheckBox
    Left = 696
    Top = 119
    Width = 97
    Height = 17
    Caption = 'Lineas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = ckbLineasGastosClick
  end
  object edMinY: TEdit
    Left = 93
    Top = 104
    Width = 75
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    Text = '0'
  end
  object edMaxY: TEdit
    Left = 240
    Top = 104
    Width = 69
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
    Text = '40000'
    OnKeyDown = edMaxYKeyDown
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 79
    Top = 64
    Width = 250
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
    TabOrder = 19
  end
  object ckbAcumulado: TCheckBox
    Left = 344
    Top = 71
    Width = 105
    Height = 17
    Caption = 'Acumulado'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 20
    OnClick = ckbAcumuladoClick
  end
  object ckbCxC: TCheckBox
    Left = 799
    Top = 71
    Width = 88
    Height = 17
    Caption = 'CxC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    OnClick = ckbCxCClick
  end
  object ckbValoresCxC: TCheckBox
    Left = 799
    Top = 94
    Width = 97
    Height = 17
    Caption = 'Valores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = ckbValoresCxCClick
  end
  object ckbLineasCxC: TCheckBox
    Left = 799
    Top = 119
    Width = 97
    Height = 17
    Caption = 'Lineas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnClick = ckbLineasCxCClick
  end
  object CheckBox1: TCheckBox
    Left = 344
    Top = 119
    Width = 97
    Height = 17
    Caption = 'Anual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object spVentasMes: TADOStoredProc
    Connection = conn
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
      end>
    Left = 980
    Top = 312
  end
  object spPagosMes: TADOStoredProc
    Connection = conn
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
      end>
    Left = 788
    Top = 300
  end
  object conn: TADOConnection
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
    Left = 52
    Top = 145
  end
  object spPagosSemana: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetPagosXSemana;1'
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
    Left = 892
    Top = 296
  end
  object spVentasSemana: TADOStoredProc
    Connection = conn
    CursorType = ctStatic
    ProcedureName = 'spGetVentasXSemana;1'
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
    Left = 860
    Top = 232
  end
  object spVentasDiarias: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetVentasDiarias;1'
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
      end>
    Left = 980
    Top = 240
  end
  object spVentasMesYear: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetVentasMesXYear;1'
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
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 796
    Top = 151
  end
  object spIngresoMes: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetIngresoXMes;1'
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
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 316
    Top = 559
  end
  object qParametro: TADOQuery
    Connection = conn
    Parameters = <
      item
        Name = 'pParametro'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'Select strDescripcion, strParametro,intParametro from sysParamet' +
        'ro'
      'where idParametro = :pParametro')
    Left = 980
    Top = 378
  end
  object spGastoMes: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetGastosXMes;1'
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
    Left = 788
    Top = 359
  end
  object spGastosSemana: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetGastosXSemana;1'
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
    Left = 892
    Top = 371
  end
  object spGetSucursales: TADOStoredProc
    Connection = conn
    CursorType = ctStatic
    ProcedureName = 'spGetSucursales;1'
    Parameters = <>
    Left = 84
    Top = 562
  end
  object dsGetSucursales: TDataSource
    DataSet = spGetSucursales
    OnDataChange = dsGetSucursalesDataChange
    Left = 196
    Top = 562
  end
  object spVentasMesYear2: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetVentasMesXYear;1'
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
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 100
    Top = 231
  end
  object spGetCxCXMes: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetCxCXMes;1'
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
        Name = '@pintalcance'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 258
    Top = 158
  end
  object spGetCxCXSemana: TADOStoredProc
    Connection = conn
    ProcedureName = 'spGetCxCXSemana;1'
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
    Left = 418
    Top = 158
  end
end
