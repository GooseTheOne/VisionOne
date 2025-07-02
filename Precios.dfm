object frmMantPrecios: TfrmMantPrecios
  Left = 0
  Top = 0
  Caption = 'Mantenimiento de Precios'
  ClientHeight = 596
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 159
    Width = 280
    Height = 41
    DataSource = dsPrendas
    TabOrder = 0
  end
  object DBGrid2: TDBGrid
    Left = 376
    Top = 8
    Width = 320
    Height = 145
    DataSource = dsAjustes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'intTipoAjuste'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoAjuste'
        Title.Caption = 'Ajuste'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 245
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 400
    Top = 159
    Width = 280
    Height = 41
    DataSource = dsAjustes
    TabOrder = 2
  end
  object Button1: TButton
    Left = 327
    Top = 232
    Width = 43
    Height = 25
    Caption = '>>'
    TabOrder = 3
  end
  object Button2: TButton
    Left = 327
    Top = 320
    Width = 43
    Height = 25
    Caption = '<<'
    TabOrder = 4
  end
  object DBGrid3: TDBGrid
    Left = 24
    Top = 416
    Width = 537
    Height = 120
    DataSource = dsPrecios
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator3: TDBNavigator
    Left = 192
    Top = 542
    Width = 240
    Height = 25
    DataSource = dsPrecios
    TabOrder = 6
  end
  object dbgPrenda: TDBGrid
    Left = 8
    Top = 8
    Width = 313
    Height = 145
    DataSource = dsPrendas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgPrendaCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'intTipoPrenda'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoPrenda'
        Title.Caption = 'Prenda'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 240
        Visible = True
      end>
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 376
    Top = 216
    Width = 313
    Height = 42
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'intTipoAjuste'
    ListField = 'strTipoAjuste'
    ListSource = dsAjustesPrenda
    ParentFont = False
    TabOrder = 8
  end
  object DBLookupListBox2: TDBLookupListBox
    Left = 8
    Top = 218
    Width = 313
    Height = 23
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'intTipoAjuste'
    ListField = 'strTipoAjuste'
    ListSource = dsAjustesPrendaOrigen
    ParentFont = False
    TabOrder = 9
  end
  object Conn: TADOConnection
    ConnectionString = 
      'Provider=MSOLEDBSQL.1;Password=M0f1n1t0;Persist Security Info=Tr' +
      'ue;User ID=eugenes_prod;Initial Catalog="";Data Source=eugenes.c' +
      'om.mx;Use Procedure for Prepare=1;Auto Translate=True;Packet Siz' +
      'e=4096;Workstation ID=LAPHPALEX;Initial File Name="";Use Encrypt' +
      'ion for Data=False;Tag with column collation when possible=False' +
      ';MARS Connection=False;DataTypeCompatibility=0;Trust Server Cert' +
      'ificate=False;Server SPN="";Application Intent=READWRITE;MultiSu' +
      'bnetFailover=False;Use FMTONLY=False;Authentication="";Access To' +
      'ken=""'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 56
    Top = 16
  end
  object tblPrendas: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'catTipoPrenda'
    Left = 128
    Top = 16
  end
  object dsPrendas: TDataSource
    DataSet = tblPrendas
    Left = 192
    Top = 24
  end
  object tblAjustes: TADOTable
    Connection = Conn
    CursorType = ctStatic
    TableName = 'catTipoAjuste'
    Left = 392
    Top = 24
  end
  object dsAjustes: TDataSource
    DataSet = tblAjustes
    Left = 448
    Top = 24
  end
  object qPrecios: TADOQuery
    Connection = Conn
    CursorType = ctStatic
    DataSource = dsPrendas
    Parameters = <>
    SQL.Strings = (
      
        'select relPrecios.intTipoPrenda, catTipoPrenda.strTipoPrenda, re' +
        'lPrecios.intTipoAjuste, catTipoAjuste.strTipoAjuste, dcmPrecio f' +
        'rom relprecios'
      
        'inner join catTipoPrenda on catTipoPrenda.intTipoPrenda = relpre' +
        'cios.intTipoPrenda'
      
        'inner join catTipoAjuste on catTipoAjuste.intTipoAjuste = relpre' +
        'cios.intTipoAjuste')
    Left = 328
    Top = 368
  end
  object dsPrecios: TDataSource
    DataSet = qPrecios
    Left = 384
    Top = 368
  end
  object qAjustesPrenda: TADOQuery
    Connection = Conn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pPrenda'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select relPrecios.intTipoPrenda, catTipoPrenda.strTipoPrenda, re' +
        'lPrecios.intTipoAjuste, catTipoAjuste.strTipoAjuste, dcmPrecio f' +
        'rom relprecios'
      
        'inner join catTipoPrenda on catTipoPrenda.intTipoPrenda = relpre' +
        'cios.intTipoPrenda'
      
        'inner join catTipoAjuste on catTipoAjuste.intTipoAjuste = relpre' +
        'cios.intTipoAjuste'
      'where relPrecios.intTipoPrenda = :pPrenda')
    Left = 472
    Top = 224
  end
  object dsAjustesPrenda: TDataSource
    DataSet = qAjustesPrenda
    Left = 584
    Top = 224
  end
  object qAjustesPrendaOrigen: TADOQuery
    Connection = Conn
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pPrendaOrigen'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select relPrecios.intTipoPrenda, catTipoPrenda.strTipoPrenda, re' +
        'lPrecios.intTipoAjuste, catTipoAjuste.strTipoAjuste, dcmPrecio f' +
        'rom relprecios'
      
        'inner join catTipoPrenda on catTipoPrenda.intTipoPrenda = relpre' +
        'cios.intTipoPrenda'
      
        'inner join catTipoAjuste on catTipoAjuste.intTipoAjuste = relpre' +
        'cios.intTipoAjuste'
      'where relPrecios.intTipoPrenda <> :pPrendaOrigen')
    Left = 56
    Top = 264
  end
  object dsAjustesPrendaOrigen: TDataSource
    DataSet = qAjustesPrendaOrigen
    Left = 192
    Top = 264
  end
end
