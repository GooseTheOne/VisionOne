unit CambioSucursal;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Data.DB, Data.Win.ADODB, Globales,
  Vcl.StdCtrls;
type
  TfrmSucursal = class(TForm)
    Label1: TLabel;
    edSucursalActiva: TEdit;
    spSucursales: TADOStoredProc;
    Conn: TADOConnection;
    dsSucursales: TDataSource;
    dbcbxSucursal: TDBLookupComboBox;
    edNombreSucursal: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmSucursal: TfrmSucursal;
implementation
{$R *.dfm}
procedure TfrmSucursal.Button1Click(Sender: TObject);
begin
    edSucursalActiva.Text := dbcbxSucursal.KeyValue;
    edNombreSucursal.Text := dbcbxSucursal.Text;
    vgintSucursal := dbcbxSucursal.KeyValue;
    vgstrSucursal := dbcbxSucursal.Text;

    frmSucursal.close;
end;
procedure TfrmSucursal.FormCreate(Sender: TObject);
begin
  edSucursalActiva.Text := inttostr(vgintSucursal);
  edNombreSucursal.Text := vgstrSucursal;
  if vgIesPROD = 1 then
    Conn.ConnectionString := vgCadenaConexion
  else
    Conn.ConnectionString := vgCadenaConexionDes;

  try
    Conn.Open;
  except
    On E: Exception do
    begin
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ConsultaClientes');
    end;
  end;
  spSucursales.Open;
end;
end.
