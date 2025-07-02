unit ConsultaMovCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids, Globales,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmConsultaMovCaja = class(TForm)
    Conn: TADOConnection;
    DBGrid1: TDBGrid;
    dsGetMovimientosCaja: TDataSource;
    spGetMovimientosCaja: TADOStoredProc;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure dsGetSucursalesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaMovCaja: TfrmConsultaMovCaja;
  vlintAlcance: integer;

implementation

{$R *.dfm}

procedure TfrmConsultaMovCaja.dsGetSucursalesDataChange(Sender: TObject; Field: TField);
begin
    if DBLookupComboBox1.KeyValue <> null then begin
        vlintAlcance := DBLookupComboBox1.KeyValue;
        spGetMovimientosCaja.Close;
        spGetMovimientosCaja.Parameters.ParamByName('@pidSucursal').Value := vlintAlcance;
        spGetMovimientosCaja.Open;


    end
    else begin
        vlintAlcance := 0;
        DBLookupComboBox1.KeyValue := 0;
        spGetMovimientosCaja.Close;
        spGetMovimientosCaja.Parameters.ParamByName('@pidSucursal').Value := vlintAlcance;
        spGetMovimientosCaja.Open;
    end;





end;

procedure TfrmConsultaMovCaja.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Gastos');
    end;
  end;


    spGetSucursales.Close;
    spGetSucursales.Open;

    //vlintAlcance := 2;


    if vgIdTipoUsuario <> 3 then begin
        DBLookupComboBox1.KeyValue := vgintSucursal;
        DBLookupComboBox1.Enabled := false;
        //vlintAlcance := vgintSucursal;
    end
    else
        DBLookupComboBox1.KeyValue := vgintSucursal;



  spGetMovimientosCaja.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
  spGetMovimientosCaja.Open;





end;

end.
