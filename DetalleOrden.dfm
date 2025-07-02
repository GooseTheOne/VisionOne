object frmDetalleOrden: TfrmDetalleOrden
  Left = 0
  Top = 0
  Caption = 'Detalle de la orden'
  ClientHeight = 281
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 922
    Height = 265
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'intCantidad'
        Title.Caption = 'Cant.'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strPrenda'
        Title.Caption = 'Prenda'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strServicio'
        Title.Caption = 'Servicio'
        Width = 234
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmPrecio'
        Title.Caption = 'Precio'
        Width = 56
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmMonto'
        Title.Caption = 'Importe'
        Width = 57
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'dcmDescuento'
        Title.Caption = 'Desc'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strTipoServicio'
        Title.Caption = 'Tipo Serv'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'strNota'
        Title.Caption = 'Notas'
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idTipoCliente'
        Title.Caption = 'Tipo Cliente'
        Width = 67
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
    Left = 96
    Top = 24
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Conn
    CursorType = ctStatic
    ProcedureName = 'spGetOrdenPrendaServicio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@pidOrden'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 504
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 496
    Top = 104
  end
end
