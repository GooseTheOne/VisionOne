unit PantallaComboBoxSucursalesBAse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,globales, Data.DB, Data.Win.ADODB,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmRetirosEfectivo = class(TForm)
    conn: TADOConnection;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    dblkcSucursales: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetirosEfectivo: TfrmRetirosEfectivo;
  vlintAlcance: integer;


implementation

{$R *.dfm}

procedure TfrmRetirosEfectivo.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ReportesGlobales');
      end;
    end;

    spGetSucursales.Open;
    dblkcSucursales.KeyValue := 0;
    vlintAlcance := 0;

    if vgIdTipoUsuario <> 3 then begin
        dblkcSucursales.KeyValue := vgintSucursal;
        dblkcSucursales.Enabled := false;
        vlintAlcance := vgintSucursal;
    end
    else
        dblkcSucursales.KeyValue := vgintSucursal;


end;

end.
