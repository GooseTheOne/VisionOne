unit ConsultaClientesV2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Globales;

type
  TfrmConsultaClienteV2 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    edNombre: TEdit;
    edTelefono: TEdit;
    btnBuscar: TButton;
    spGetClienteCat: TADOStoredProc;
    spGetOrdenesXCliente: TADOStoredProc;
    dsGetClienteCat: TDataSource;
    dsGetOrdenesXCliente: TDataSource;
    dbgClientes: TDBGrid;
    dbgOrdenes: TDBGrid;
    Conn: TADOConnection;
    spGetLineasXOrden: TADOStoredProc;
    dsGetLineasXOrden: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure edNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTelefonoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsGetClienteCatDataChange(Sender: TObject; Field: TField);
    procedure dsGetOrdenesXClienteDataChange(Sender: TObject;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaClienteV2: TfrmConsultaClienteV2;

implementation

{$R *.dfm}

procedure TfrmConsultaClienteV2.btnBuscarClick(Sender: TObject);
begin
  if edNombre.Text <> '' then begin
    spGetClienteCat.Close;
    spGetClienteCat.Parameters.ParamByName('@pintCampo').Value := 1;
    spGetClienteCat.Parameters.ParamByName('@pintCondicion').Value := 1;
    spGetClienteCat.Parameters.ParamByName('@pstrDato').Value := edNombre.Text;
    spGetClienteCat.Open;
  end
  else if edTelefono.Text <> '' then begin
          spGetClienteCat.Close;
          spGetClienteCat.Parameters.ParamByName('@pintCampo').Value := 2;
          spGetClienteCat.Parameters.ParamByName('@pintCondicion').Value := 1;
          spGetClienteCat.Parameters.ParamByName('@pstrDato').Value := edTelefono.Text;
          spGetClienteCat.Open;
  end;

  dbgClientes.SetFocus;
end;

procedure TfrmConsultaClienteV2.dsGetClienteCatDataChange(Sender: TObject;
  Field: TField);
begin
    spGetOrdenesXCliente.Close;
    spGetOrdenesXCliente.Parameters.ParamByName('@pidCliente').Value := dbgClientes.DataSource.DataSet.FieldByName('idCliente').Value;
    spGetOrdenesXCliente.Open;
end;

procedure TfrmConsultaClienteV2.dsGetOrdenesXClienteDataChange(
  Sender: TObject; Field: TField);
begin
    spGetLineasXOrden.Close;
    spGetLineasXOrden.Parameters.ParamByName('@pidOrden').Value := dbgOrdenes.DataSource.DataSet.FieldByName('idOrden').Value;
    spGetLineasXOrden.Open;
end;

procedure TfrmConsultaClienteV2.edNombreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = 13 then
      btnBuscar.Click;
end;

procedure TfrmConsultaClienteV2.edTelefonoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = 13 then
      btnBuscar.Click;
end;

procedure TfrmConsultaClienteV2.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ConsultaClientes');
      end;
    end;

    spGetClienteCat.Close;
    spGetClienteCat.Parameters.ParamByName('@pintCampo').Value := 99;
    spGetClienteCat.Parameters.ParamByName('@pintCondicion').Value := 99;
    spGetClienteCat.Open;
end;

end.
