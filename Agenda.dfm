object frmAgenda: TfrmAgenda
  Left = 0
  Top = 0
  Caption = 'Agenda'
  ClientHeight = 750
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  TextHeight = 13
  object lblLunes1: TLabel
    Left = 8
    Top = 21
    Width = 54
    Height = 25
    Caption = 'Lunes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblMiercoles1: TLabel
    Left = 8
    Top = 572
    Width = 86
    Height = 25
    Caption = 'Mi'#233'rcoles'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblMartes1: TLabel
    Left = 8
    Top = 381
    Width = 62
    Height = 25
    Caption = 'Martes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblJueves1: TLabel
    Left = 576
    Top = 197
    Width = 62
    Height = 25
    Caption = 'Jueves'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblViernes1: TLabel
    Left = 576
    Top = 381
    Width = 69
    Height = 25
    Caption = 'Viernes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblSabado1: TLabel
    Left = 576
    Top = 572
    Width = 69
    Height = 25
    Caption = 'S'#225'bado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edLunes1: TEdit
    Left = 8
    Top = 52
    Width = 125
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object edMartes1: TEdit
    Left = 8
    Top = 412
    Width = 125
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edMiercoles1: TEdit
    Left = 8
    Top = 603
    Width = 125
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object edJueves1: TEdit
    Left = 576
    Top = 228
    Width = 125
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object edViernes1: TEdit
    Left = 576
    Top = 412
    Width = 125
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object edSabado1: TEdit
    Left = 576
    Top = 603
    Width = 125
    Height = 31
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object lbxLunes1: TListBox
    Left = 149
    Top = 200
    Width = 386
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 6
  end
  object lbxMartes1: TListBox
    Left = 149
    Top = 383
    Width = 386
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 7
  end
  object lbxMiercoles1: TListBox
    Left = 149
    Top = 566
    Width = 386
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 8
  end
  object lbxJueves1: TListBox
    Left = 707
    Top = 200
    Width = 386
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 9
  end
  object lbxViernes1: TListBox
    Left = 707
    Top = 383
    Width = 386
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 10
  end
  object lbxSabado1: TListBox
    Left = 707
    Top = 566
    Width = 386
    Height = 177
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 11
  end
  object btSemanaAntes: TButton
    Left = 149
    Top = 749
    Width = 386
    Height = 50
    Caption = '<<   Semana Anterior'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = btSemanaAntesClick
  end
  object btSemanaSiguiente: TButton
    Left = 707
    Top = 749
    Width = 386
    Height = 50
    Caption = 'Semana Siguiente   >>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = btSemanaSiguienteClick
  end
  object DBGrid1: TDBGrid
    Left = 149
    Top = 19
    Width = 386
    Height = 175
    Color = clBtnFace
    DataSource = dsOrdenesPorDia
    FixedColor = clYellow
    GradientStartColor = clLime
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idOrden'
        Title.Caption = 'Orden'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNombre'
        Title.Caption = 'Nombre'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTelefono'
        Title.Caption = 'Telefono'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmTotal'
        Title.Caption = 'Total'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dcmPorPagar'
        Title.Caption = 'CxC'
        Width = 35
        Visible = True
      end>
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
    Left = 23
    Top = 93
  end
  object qAgenda: TADOQuery
    Connection = Conn
    Parameters = <>
    Left = 651
    Top = 268
  end
  object spOrdenesPorDia: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenesPorDia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@pdteFecha'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end>
    Left = 221
    Top = 80
  end
  object dsOrdenesPorDia: TDataSource
    DataSet = spOrdenesPorDia
    Left = 341
    Top = 80
  end
end
