unit catEstatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids, globales,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  REST.Types, Data.Bind.Components, Data.Bind.ObjectScope, REST.Client,
  REST.Response.Adapter, Datasnap.DBClient;

type
  TfrmCatEstatus = class(TForm)
    spEstatusCat: TADOStoredProc;
    Conn: TADOConnection;
    dsEstatusCat: TDataSource;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    ClientDataSet1: TClientDataSet;
    RESTClient2: TRESTClient;
    RESTRequest2: TRESTRequest;
    RESTResponse2: TRESTResponse;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatEstatus: TfrmCatEstatus;

implementation

{$R *.dfm}

procedure TfrmCatEstatus.FormCreate(Sender: TObject);
var
sContent: string;
begin
//    if vgIesPROD = 1 then
//      Conn.ConnectionString := vgCadenaConexion
//    else
//      Conn.ConnectionString := vgCadenaConexionDes;
//
//    try
//      Conn.Open;
//    except
//      On E: Exception do
//      begin
//          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - catEstatus');
//      end;
//    end;

    //spEstatusCat.Close;
    //spEstatusCat.Open;

    //RESTRequest1.Execute;

sContent := '{'+
              '"dteFechaInicio": "2024-03-01",'+
              '"dteFechaFin": "2024-03-31",'+
              '"intSucursal": 0'+
            '}';

RESTRequest2.ClearBody;
RESTRequest2.Body.Add(sContent, TRESTContentType.ctAPPLICATION_JSON);
RESTRequest2.Method:= rmPOST;
RESTRequest2.Execute;

    RESTRequest2.Execute;

end;

end.
