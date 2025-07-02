unit Cierre;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Globales,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, DateUtils, Vcl.Mask,
  Vcl.DBCtrls;
type
  TfrmCierre = class(TForm)
    Conn: TADOConnection;
    spCierreDia: TADOStoredProc;
    dsCierreDia: TDataSource;
    DBGrid1: TDBGrid;
    spPagosNoCont: TADOStoredProc;
    dsPagosNoCont: TDataSource;
    DBGrid2: TDBGrid;
    spGastosNocont: TADOStoredProc;
    dsGastosNoCont: TDataSource;
    DBGrid3: TDBGrid;
    btnContDia: TButton;
    spContabilizar: TADOStoredProc;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    spUltimoDiaCont: TADOStoredProc;
    dtpDiaContable: TDateTimePicker;
    Label1: TLabel;
    btnDiaAtras: TButton;
    btnDiaAdel: TButton;
    btnPreContDia: TButton;
    spPreContabilizar: TADOStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure btnContDiaClick(Sender: TObject);
    procedure btnDiaAtrasClick(Sender: TObject);
    procedure btnDiaAdelClick(Sender: TObject);
    procedure btnPreContDiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmCierre: TfrmCierre;
implementation
{$R *.dfm}
procedure TfrmCierre.btnContDiaClick(Sender: TObject);
var
  UltimoDiaCont :TDate;
begin
    spUltimoDiaCont.Close;
    spUltimoDiaCont.Open;
    if spUltimoDiaCont.RecordCount > 0 then
        UltimoDiaCont := spUltimoDiaCont.FieldByName('Ultimo').Value
    else
        UltimoDiaCont := strtodate('28/02/2021');
    while UltimoDiaCont < dtpDiaContable.Date do begin
        spContabilizar.Close;
        spContabilizar.Parameters.ParamByName('@pintTipo').Value := 1;
        spContabilizar.Parameters.ParamByName('@pdteDia').Value := UltimoDiaCont + 1;
        spContabilizar.Open;
        UltimoDiaCont := UltimoDiaCont + 1;
    end;

    spCierreDia.Close;
    spCierreDia.Parameters.ParamByName('@pintTipo').Value := 1;
    spCierreDia.Parameters.ParamByName('@pdteHoy').Value := now;
    spCierreDia.Open;
    spPagosNoCont.Close;
    spPagosNoCont.Parameters.ParamByName('@pintTipo').Value :=1;
    spPagosNoCont.Open;
    spGastosNoCont.Close;
    spGastosNoCont.Parameters.ParamByName('@pintTipo').Value :=1;
    spGastosNoCont.Open;


end;

procedure TfrmCierre.btnDiaAtrasClick(Sender: TObject);
begin
  dtpDiaContable.Date := dtpDiaContable.Date - 1;
end;
procedure TfrmCierre.btnDiaAdelClick(Sender: TObject);
begin
  dtpDiaContable.Date := dtpDiaContable.Date + 1;
end;


procedure TfrmCierre.btnPreContDiaClick(Sender: TObject);
var
  UltimoDiaCont :TDate;
begin
    spUltimoDiaCont.Close;
    spUltimoDiaCont.Open;
    if spUltimoDiaCont.RecordCount > 0 then
        UltimoDiaCont := spUltimoDiaCont.FieldByName('Ultimo').Value
    else
        UltimoDiaCont := strtodate('28/02/2021');
    while UltimoDiaCont < dtpDiaContable.Date do begin
        spPreContabilizar.Close;
        spPreContabilizar.Parameters.ParamByName('@pintTipo').Value := 1;
        spPreContabilizar.Parameters.ParamByName('@pdteDia').Value := UltimoDiaCont + 1;
        spPreContabilizar.Open;
        UltimoDiaCont := UltimoDiaCont + 1;
    end;
    spCierreDia.Close;
    spCierreDia.Parameters.ParamByName('@pintTipo').Value := 1;
    spCierreDia.Parameters.ParamByName('@pdteHoy').Value := now;
    spCierreDia.Open;
    spPagosNoCont.Close;
    spPagosNoCont.Parameters.ParamByName('@pintTipo').Value :=1;
    spPagosNoCont.Open;
    spGastosNoCont.Close;
    spGastosNoCont.Parameters.ParamByName('@pintTipo').Value :=1;
    spGastosNoCont.Open;
end;
procedure TfrmCierre.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Cierre');
      end;
    end;
    spCierreDia.Close;
    spCierreDia.Parameters.ParamByName('@pintTipo').Value := 1;
    spCierreDia.Parameters.ParamByName('@pdteHoy').Value := now;
    spCierreDia.Open;
    spPagosNoCont.Close;
    spPagosNoCont.Parameters.ParamByName('@pintTipo').Value :=1;
    spPagosNoCont.Open;
    spGastosNoCont.Close;
    spGastosNoCont.Parameters.ParamByName('@pintTipo').Value :=1;
    spGastosNoCont.Open;
    dtpDiaContable.Date := now;
end;
end.
