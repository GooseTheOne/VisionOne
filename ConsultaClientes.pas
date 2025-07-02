unit ConsultaClientes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,Globales, Vcl.DBCGrids, Vcl.ExtCtrls,
  Vcl.ComCtrls, VPE_VCL, Vcl.Mask;
type
  TfrmConsultaClientes = class(TForm)
    conn: TADOConnection;
    dbgClientes: TDBGrid;
    edNombre: TEdit;
    edTelefono: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    btnBuscar: TButton;
    spGetClienteCat: TADOStoredProc;
    dsGetClienteCat: TDataSource;
    VPENota: TVPEngine;
    spGetOrdenesXCliente: TADOStoredProc;
    dsGetOrdenesXCliente: TDataSource;
    DBGrid1: TDBGrid;
    spGetLineasXOrden: TADOStoredProc;
    dsGetLineasXOrden: TDataSource;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dsGetClienteCatDataChange(Sender: TObject; Field: TField);
    procedure edNombreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTelefonoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmConsultaClientes: TfrmConsultaClientes;
  vlCliente:Integer;
  vlOrden:Integer;
  i:Integer;
  vintUpadate:Boolean;
  lFolioExistente: Boolean;
  vdcmSAC: double;
  vdcmSE: double;
implementation
{$R *.dfm}
uses Ordenes;


procedure TfrmConsultaClientes.btnBuscarClick(Sender: TObject);
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

//  spGetOrdenesXCliente.Close;
//  spGetOrdenesXCliente.Parameters.ParamByName('@pidCliente').Value := dbgClientes.DataSource.DataSet.FieldByName('idCliente').Value;
//  spGetOrdenesXCliente.Open;



end;

procedure TfrmConsultaClientes.dsGetClienteCatDataChange(Sender: TObject;
  Field: TField);
begin
//  spGetOrdenesXCliente.Close;
//  spGetOrdenesXCliente.Parameters.ParamByName('@pidCliente').Value := dbgClientes.DataSource.DataSet.FieldByName('idCliente').Value;
//  spGetOrdenesXCliente.Open;

    spGetOrdenesXCliente.Close;
    spGetOrdenesXCliente.Parameters.ParamByName('@pidCliente').Value := dbgClientes.DataSource.DataSet.FieldByName('idCliente').Value;
    spGetOrdenesXCliente.Open;
end;

procedure TfrmConsultaClientes.edNombreKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = 13 then
      btnBuscar.Click;
end;

procedure TfrmConsultaClientes.edTelefonoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = 13 then
      btnBuscar.Click;
end;

procedure TfrmConsultaClientes.FormCreate(Sender: TObject);
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
