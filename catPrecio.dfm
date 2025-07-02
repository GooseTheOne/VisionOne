object frmPrecios: TfrmPrecios
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de Precios'
  ClientHeight = 488
  ClientWidth = 840
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
    Left = 104
    Top = 20
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
  object Label2: TLabel
    Left = 158
    Top = 198
    Width = 23
    Height = 19
    Caption = 'ID:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 126
    Top = 231
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
  object Label4: TLabel
    Left = 120
    Top = 266
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
  object Label5: TLabel
    Left = 132
    Top = 298
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
  object Label6: TLabel
    Left = 61
    Top = 331
    Width = 120
    Height = 19
    Caption = 'Tipo de Servicio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 116
    Top = 364
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
  object dblkcPrendas: TDBLookupComboBox
    Left = 172
    Top = 16
    Width = 313
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idPrenda'
    ListField = 'strPrenda'
    ListSource = dsPrendas
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 496
    Top = 18
    Width = 75
    Height = 25
    Caption = '. . .'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 61
    Top = 69
    Width = 756
    Height = 120
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idPrecio'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 36
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
        Width = 198
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
        Width = 265
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
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoCorto'
        Title.Caption = 'Tipo Serv.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lgcActivo'
        Title.Caption = 'Activo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 52
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 208
    Top = 416
    Width = 444
    Height = 49
    DataSource = dsPreciosCat
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 187
    Top = 195
    Width = 49
    Height = 27
    DataField = 'idPrecio'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit
    Left = 187
    Top = 228
    Width = 49
    Height = 27
    DataField = 'idPrenda'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 187
    Top = 263
    Width = 49
    Height = 27
    DataField = 'idServicio'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit4: TDBEdit
    Left = 200
    Top = 295
    Width = 68
    Height = 27
    DataField = 'dcmPrecio'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit5: TDBEdit
    Left = 187
    Top = 328
    Width = 49
    Height = 27
    DataField = 'idTipoServicio'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBCheckBox1: TDBCheckBox
    Left = 331
    Top = 200
    Width = 97
    Height = 17
    Caption = 'Activo'
    DataField = 'lgcActivo'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 242
    Top = 228
    Width = 346
    Height = 27
    DataField = 'idPrenda'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idPrenda'
    ListField = 'strPrenda'
    ListSource = dsPrendasCat
    ParentFont = False
    TabOrder = 10
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 242
    Top = 263
    Width = 346
    Height = 27
    DataField = 'idServicio'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idServicio'
    ListField = 'strServicio'
    ListSource = dsServicioCat
    ParentFont = False
    TabOrder = 11
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 242
    Top = 328
    Width = 346
    Height = 27
    DataField = 'idTipoServicio'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idTipoServicio'
    ListField = 'strTipoServicio'
    ListSource = dsTipoServicio
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit6: TDBEdit
    Left = 187
    Top = 361
    Width = 49
    Height = 27
    DataField = 'idSucursal'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 242
    Top = 361
    Width = 346
    Height = 27
    DataField = 'idSucursal'
    DataSource = dsPreciosCat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'idSucursal'
    ListField = 'strSucursal'
    ListSource = dsGetSucursalesCambio
    ParentFont = False
    TabOrder = 14
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
    Left = 16
    Top = 16
  end
  object spPrendas: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPrendas;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 592
    Top = 16
  end
  object dsPrendas: TDataSource
    AutoEdit = False
    DataSet = spPrendas
    OnDataChange = dsPrendasDataChange
    Left = 656
    Top = 16
  end
  object spPreciosCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPrecioCat;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pintPrenda'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 304
    Top = 120
  end
  object dsPreciosCat: TDataSource
    AutoEdit = False
    DataSet = spPreciosCat
    Left = 424
    Top = 120
  end
  object spPrendasCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetPrendas;1'
    Parameters = <>
    Left = 600
    Top = 224
  end
  object dsPrendasCat: TDataSource
    DataSet = spPrendasCat
    Left = 656
    Top = 200
  end
  object spServicioCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetServicio;1'
    Parameters = <>
    Left = 608
    Top = 272
  end
  object dsServicioCat: TDataSource
    DataSet = spServicioCat
    Left = 656
    Top = 248
  end
  object spTipoServicio: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetTipoServicio;1'
    Parameters = <>
    Left = 608
    Top = 328
  end
  object dsTipoServicio: TDataSource
    DataSet = spTipoServicio
    Left = 664
    Top = 312
  end
  object spGetSucursalesCambio: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetSucursalesCambio;1'
    Parameters = <>
    Left = 616
    Top = 376
  end
  object dsGetSucursalesCambio: TDataSource
    DataSet = spGetSucursalesCambio
    Left = 704
    Top = 400
  end
end
