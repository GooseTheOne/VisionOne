object frmDetalleCancelacion: TfrmDetalleCancelacion
  Left = 0
  Top = 0
  Caption = 'Detalle de la Devoluci'#243'n'
  ClientHeight = 231
  ClientWidth = 497
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
    Left = 70
    Top = 8
    Width = 52
    Height = 21
    Caption = 'Motivo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 46
    Width = 448
    Height = 21
    Caption = 
      'Describa brevemente las razones de la Devoluci'#243'n (Justificaci'#243'n)' +
      ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object memJustificacion: TMemo
    Left = 8
    Top = 73
    Width = 481
    Height = 105
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 192
    Top = 184
    Width = 105
    Height = 33
    Caption = 'Registrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object dbcbxMotivo: TDBLookupComboBox
    Left = 128
    Top = 5
    Width = 241
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = 'idMotivo'
    ListField = 'Motivo'
    ListSource = dsGetMotivosCancelacion
    ParentFont = False
    TabOrder = 2
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
    Left = 24
    Top = 88
  end
  object spGetMotivosCancelacion: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetMotivosCancelaci'#243'n;1'
    Parameters = <>
    Left = 392
    Top = 96
  end
  object dsGetMotivosCancelacion: TDataSource
    DataSet = spGetMotivosCancelacion
    Left = 96
    Top = 112
  end
end
