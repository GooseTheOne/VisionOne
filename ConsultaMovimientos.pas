unit ConsultaMovimientos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, globales;

type
  TfrmConsultaMov = class(TForm)
    spMovimientos: TADOStoredProc;
    dsMovimientos: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    conn: TADOConnection;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaMov: TfrmConsultaMov;

implementation

{$R *.dfm}

procedure TfrmConsultaMov.FormCreate(Sender: TObject);
begin
  if vgIesPROD = 1 then
    Conn.ConnectionString := vgCadenaConexion
  else
    Conn.ConnectionString := vgCadenaConexionDes;

  try
    Conn.Open;
  except
    On E: Exception do
    begin
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ConsultaMovimientos');
    end;
  end;


    spMovimientos.Parameters.ParamByName('@plgContabilizado').value := -1;
    spMovimientos.Parameters.ParamByName('@pdteInicio').value := '1900-01-01';
    spMovimientos.Parameters.ParamByName('@pdteFin').value := '2050-01-01';

    spMovimientos.Open;

end;

end.
