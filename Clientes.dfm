object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de Clientes'
  ClientHeight = 510
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 19
  object Label1: TLabel
    Left = 82
    Top = 282
    Width = 21
    Height = 19
    Caption = 'Id:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 50
    Top = 315
    Width = 57
    Height = 19
    Caption = 'Nombre'
  end
  object Correo: TLabel
    Left = 59
    Top = 348
    Width = 48
    Height = 19
    Caption = 'Correo'
  end
  object Label4: TLabel
    Left = 39
    Top = 380
    Width = 68
    Height = 19
    Caption = 'Tel'#233'fono:'
  end
  object Label6: TLabel
    Left = 268
    Top = 280
    Width = 34
    Height = 19
    Caption = 'Alta:'
  end
  object Label7: TLabel
    Left = 29
    Top = 414
    Width = 85
    Height = 19
    Caption = 'Tipo Cliente'
  end
  object Label9: TLabel
    Left = 410
    Top = 413
    Width = 108
    Height = 19
    Caption = 'Descuento SAC'
  end
  object Label10: TLabel
    Left = 422
    Top = 385
    Width = 96
    Height = 19
    Caption = 'Descuento SE'
  end
  object DBGrid1: TDBGrid
    Left = 10
    Top = 50
    Width = 715
    Height = 215
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idCliente'
        Title.Caption = 'Id'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNombre'
        PickList.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5')
        Title.Caption = 'Nombre'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 210
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
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idTipoCliente'
        Title.Caption = 'Tipo Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lgcFactura'
        Title.Caption = 'Factura'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 93
        Visible = True
      end>
  end
  object cbxCampo: TComboBox
    Left = 72
    Top = 16
    Width = 145
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'SELECCIONE...'
    OnChange = cbxCampoChange
    Items.Strings = (
      'ID'
      'NOMBRE'
      'TELEFONO'
      'TIPO'
      'ALTA'
      'FACTURA')
  end
  object cbxCondicion: TComboBox
    Left = 223
    Top = 16
    Width = 145
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'SELECCIONE...'
    Items.Strings = (
      '='
      '>='
      '<='
      'CONTIENE')
  end
  object edtDato: TEdit
    Left = 374
    Top = 17
    Width = 153
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button1: TButton
    Left = 544
    Top = 16
    Width = 75
    Height = 28
    Caption = 'Buscar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object dbeId: TDBEdit
    Left = 120
    Top = 279
    Width = 105
    Height = 27
    DataField = 'idCliente'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object dbeNombre: TDBEdit
    Left = 120
    Top = 312
    Width = 315
    Height = 27
    DataField = 'strNombre'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object dbeCorreo: TDBEdit
    Left = 120
    Top = 345
    Width = 209
    Height = 27
    DataField = 'strCorreo'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object dbeTelefono: TDBEdit
    Left = 120
    Top = 377
    Width = 209
    Height = 27
    DataField = 'strTelefono'
    DataSource = dsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object dbeAlta: TDBEdit
    Left = 308
    Top = 279
    Width = 127
    Height = 27
    DataField = 'dteAlta'
    DataSource = dsClientes
    TabOrder = 9
  end
  object dbeTipoCliente: TDBEdit
    Left = 120
    Top = 410
    Width = 31
    Height = 27
    DataField = 'idTipoCliente'
    DataSource = dsClientes
    Enabled = False
    TabOrder = 10
  end
  object dbeDescSAC: TDBEdit
    Left = 524
    Top = 410
    Width = 65
    Height = 27
    DataField = 'dcmDescuentoSAC'
    DataSource = dsClientes
    TabOrder = 11
  end
  object dbeDescSE: TDBEdit
    Left = 524
    Top = 377
    Width = 65
    Height = 27
    DataField = 'dcmDescuentoSE'
    DataSource = dsClientes
    TabOrder = 12
  end
  object dblkTipoCliente: TDBLookupComboBox
    Left = 157
    Top = 410
    Width = 145
    Height = 27
    DataField = 'idTipoCliente'
    DataSource = dsClientes
    KeyField = 'idTipoCliente'
    ListField = 'strTipoCliente'
    ListSource = dsTipoCliente
    TabOrder = 13
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 462
    Top = 296
    Width = 185
    Height = 43
    Caption = 'Genero'
    Columns = 2
    DataField = 'chrGenero'
    DataSource = dsClientes
    Items.Strings = (
      'H'
      'M')
    TabOrder = 14
  end
  object DBCheckBox1: TDBCheckBox
    Left = 524
    Top = 354
    Width = 97
    Height = 17
    Caption = 'Factura'
    DataField = 'lgcFactura'
    DataSource = dsClientes
    TabOrder = 15
  end
  object DBNavigator1: TDBNavigator
    Left = 120
    Top = 461
    Width = 504
    Height = 41
    DataSource = dsClientes
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 16
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
    Left = 7
    Top = 8
  end
  object spClientes: TADOStoredProc
    Connection = Conn
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
    Left = 632
    Top = 8
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = spClientes
    Left = 688
    Top = 8
  end
  object spTipoCliente: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    DataSource = dsClientes
    ProcedureName = 'spGetTipoClienteCat;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 582
    Top = 192
  end
  object dsTipoCliente: TDataSource
    DataSet = spTipoCliente
    Left = 646
    Top = 144
  end
end
