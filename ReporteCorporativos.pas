unit ReporteCorporativos;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Globales,
  Vcl.ExtCtrls;
type
  TfrmCorporativos = class(TForm)
    Conn: TADOConnection;
    spGetOrdenesXFacturar: TADOStoredProc;
    dsGetOrdenesXFacturar: TDataSource;
    DBGrid1: TDBGrid;
    spGetOrdenesXFacturarAgrupada: TADOStoredProc;
    dsGetOrdenesXFacturarAgrupada: TDataSource;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbedSubtotal: TDBEdit;
    dbedDescuento: TDBEdit;
    dbedIVA: TDBEdit;
    dbedTotal: TDBEdit;
    spGetOrdenesXFacturalTotales: TADOStoredProc;
    dsGetOrdenesXFacturarTotales: TDataSource;
    dtpInicio: TDateTimePicker;
    dtpFin: TDateTimePicker;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmCorporativos: TfrmCorporativos;
implementation
{$R *.dfm}
procedure TfrmCorporativos.Button1Click(Sender: TObject);
begin
    spGetOrdenesXFacturarAgrupada.Close;
    spGetOrdenesXFacturarAgrupada.Parameters.ParamByName('@pdteInicio').Value := dtpInicio.Date;
    spGetOrdenesXFacturarAgrupada.Parameters.ParamByName('@pdteFin').Value := dtpfin.Date;
    spGetOrdenesXFacturarAgrupada.Open;
    spGetOrdenesXFacturalTotales.Close;
    spGetOrdenesXFacturalTotales.Parameters.ParamByName('@pdteInicio').Value := dtpInicio.Date;
    spGetOrdenesXFacturalTotales.Parameters.ParamByName('@pdteFin').Value := dtpFin.Date;
    spGetOrdenesXFacturalTotales.Open;
    spGetOrdenesXFacturar.Close;
    spGetOrdenesXFacturar.Parameters.ParamByName('@pdteInicio').Value := dtpInicio.Date;
    spGetOrdenesXFacturar.Parameters.ParamByName('@pdteFin').Value := dtpFin.Date;
    spGetOrdenesXFacturar.Open;
end;
procedure TfrmCorporativos.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ReporteCorporativos');
    end;
  end;

    dtpInicio.Date := now;
    dtpFin.Date := now;
end;
end.
