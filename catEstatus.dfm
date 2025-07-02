object frmCatEstatus: TfrmCatEstatus
  Left = 0
  Top = 0
  Caption = 'Cat'#225'logo de Estatus'
  ClientHeight = 521
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object DBEdit1: TDBEdit
    Left = 368
    Top = 368
    Width = 121
    Height = 21
    DataField = 'Pago'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 368
    Top = 432
    Width = 121
    Height = 21
    DataField = 'Importe'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 144
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object spEstatusCat: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetEstatusCat;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 456
    Top = 280
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
    Left = 40
    Top = 24
  end
  object dsEstatusCat: TDataSource
    AutoEdit = False
    DataSet = ClientDataSet1
    Left = 456
    Top = 216
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:44369/api/Estatus'
    Params = <>
    SynchronizedEvents = False
    Left = 344
    Top = 32
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 448
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    Left = 424
    Top = 96
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = ClientDataSet1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 584
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 584
    Top = 176
  end
  object RESTClient2: TRESTClient
    BaseURL = 'http://eugenes.com.mx/api/ReporteIngreso/GetReporteByPeriodo'
    Params = <>
    SynchronizedEvents = False
    Left = 80
    Top = 320
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Method = rmPOST
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 144
    Top = 56
  end
  object RESTResponse2: TRESTResponse
    Left = 88
    Top = 432
  end
  object RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter
    Dataset = ClientDataSet2
    FieldDefs = <>
    Response = RESTResponse2
    Left = 104
    Top = 752
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 296
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet2
    Left = 240
    Top = 408
  end
end
