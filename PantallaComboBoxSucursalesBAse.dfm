object frmRetirosEfectivo: TfrmRetirosEfectivo
  Left = 0
  Top = 0
  Caption = 'Retiros de Efectivo'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object dblkcSucursales: TDBLookupComboBox
    Left = 200
    Top = 40
    Width = 145
    Height = 23
    KeyField = 'idSucursal'
    ListField = 'strSucursal'
    ListSource = dsGetSucursales
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 288
    Top = 336
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object conn: TADOConnection
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
    LoginPrompt = False
    Provider = 'MSOLEDBSQL.1'
    Left = 8
    Top = 8
  end
  object spGetSucursales: TADOStoredProc
    Connection = conn
    CursorType = ctStatic
    ProcedureName = 'spGetSucursales;1'
    Parameters = <>
    Left = 312
    Top = 184
  end
  object dsGetSucursales: TDataSource
    DataSet = spGetSucursales
    Left = 416
    Top = 72
  end
end
