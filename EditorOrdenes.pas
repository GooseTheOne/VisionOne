unit EditorOrdenes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Globales;
type
  TForm1 = class(TForm)
    spOrdenes: TADOStoredProc;
    Conn: TADOConnection;
    dsOrdenes: TDataSource;
    dbgOrdenes: TDBGrid;
    dbnOrdenes: TDBNavigator;
    spLineas: TADOStoredProc;
    dsLineas: TDataSource;
    dbnLineas: TDBNavigator;
    spPagos: TADOStoredProc;
    dsPagos: TDataSource;
    dbgPagos: TDBGrid;
    dbnPagos: TDBNavigator;
    spPrendaServicio: TADOStoredProc;
    dsPrendaServicio: TDataSource;
    DBGrid1: TDBGrid;
    procedure dsOrdenesDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
implementation
{$R *.dfm}



procedure TForm1.dsOrdenesDataChange(Sender: TObject; Field: TField);
begin
    spLineas.Close;
    spLineas.Parameters.ParamByName('@pidOrden').Value := dbgOrdenes.DataSource.DataSet.FieldByName('idOrden').Value;
    spLineas.Open;
    spPagos.Close;
    spPagos.Parameters.ParamByName('@pidOrden').Value := dbgOrdenes.DataSource.DataSet.FieldByName('idOrden').Value;
    spPagos.Open;

    spPrendaServicio.Close;
    spPrendaServicio.Parameters.ParamByName('@pintOrden').Value := dbgOrdenes.DataSource.DataSet.FieldByName('idOrden').Value;
    spPrendaServicio.Open;
end;
procedure TForm1.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - EditorOrdenes');
    end;
  end;

  spOrdenes.Open;
  spLineas.Open;
  spPagos.Open;
  spPrendaServicio.Open;

end;

end.
