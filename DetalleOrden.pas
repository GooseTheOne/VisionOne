unit DetalleOrden;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids, Globales,
  Vcl.DBGrids;

type
  TfrmDetalleOrden = class(TForm)
    Conn: TADOConnection;
    ADOStoredProc1: TADOStoredProc;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure setOrden(parOrden:Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalleOrden: TfrmDetalleOrden;
  vlintOrden :Integer;

implementation

{$R *.dfm}

procedure TfrmDetalleOrden.FormCreate(Sender: TObject);
begin

    Conn.Connected := false;

    if vgIesPROD = 1 then
      Conn.ConnectionString := vgCadenaConexion
    else
      Conn.ConnectionString := vgCadenaConexionDes;

    try
      Conn.Open;
    except
      On E: Exception do
      begin
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ReportesAdmin');
      end;
    end;




end;

procedure TfrmDetalleOrden.setOrden(parOrden: Integer);
begin
   vlintOrden := parOrden;

    ADOStoredProc1.Close;
    ADOStoredProc1.Parameters.ParamByName('@pidOrden').Value := vlintOrden;
    ADOStoredProc1.Open;


end;
end.
