unit RegistroMovimientos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Globales;

type
  TfrmRegistroMovimientos = class(TForm)
    edImporte: TEdit;
    Label1: TLabel;
    dblkcCuentaOrigen: TDBLookupComboBox;
    dblkcCuentaDestino: TDBLookupComboBox;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    spCuentaOrigen: TADOStoredProc;
    spCuentaDestino: TADOStoredProc;
    Conn: TADOConnection;
    dsCuentaOrigen: TDataSource;
    dsCuentaDestino: TDataSource;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    spInsertaMovimiento: TADOStoredProc;
    spMovimientos: TADOStoredProc;
    dsMovimientos: TDataSource;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    edDescripcion: TEdit;
    Label6: TLabel;
    spDeleteMovimiento: TADOStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRegistroMovimientos: TfrmRegistroMovimientos;

implementation

{$R *.dfm}

procedure TfrmRegistroMovimientos.Button1Click(Sender: TObject);
begin

    if (edDescripcion.text <> '') and (edImporte.Text <> '') then begin
      if dblkcCuentaOrigen.KeyValue <> dblkcCuentaDestino.KeyValue then begin
          spInsertaMovimiento.Close;
          spInsertaMovimiento.Parameters.ParamByName('@pidCuenta').Value := dblkcCuentaOrigen.KeyValue;
          spInsertaMovimiento.Parameters.ParamByName('@pdteMovimiento').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());
          spInsertaMovimiento.Parameters.ParamByName('@pstrDescripcion').Value := edDescripcion.Text;
          spInsertaMovimiento.Parameters.ParamByName('@pdcmImporteCargo').Value := edImporte.Text;
          spInsertaMovimiento.Parameters.ParamByName('@pdcmImporteAbono').Value := '0';
          spInsertaMovimiento.Parameters.ParamByName('@pintTipoMovimiento').Value := 1;
          spInsertaMovimiento.Open;

          spInsertaMovimiento.Close;
          spInsertaMovimiento.Parameters.ParamByName('@pidCuenta').Value := dblkcCuentaDestino.KeyValue;
          spInsertaMovimiento.Parameters.ParamByName('@pdteMovimiento').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());
          spInsertaMovimiento.Parameters.ParamByName('@pstrDescripcion').Value := edDescripcion.Text;
          spInsertaMovimiento.Parameters.ParamByName('@pdcmImporteCargo').Value := '0';
          spInsertaMovimiento.Parameters.ParamByName('@pdcmImporteAbono').Value := edImporte.Text;
          spInsertaMovimiento.Parameters.ParamByName('@pintTipoMovimiento').Value := 2;
          spInsertaMovimiento.Open;

          edImporte.Text := '';
          edDescripcion.Text := '';
          dblkcCuentaOrigen.KeyValue := 2;
          dblkcCuentaDestino.KeyValue := 2;

          spMovimientos.Close;
          spMovimientos.Parameters.ParamByName('@plgContabilizado').value := 0;
          spMovimientos.Parameters.ParamByName('@pdteInicio').value := '1900-01-01';
          spMovimientos.Parameters.ParamByName('@pdteFin').value := '2050-01-01';
          spMovimientos.Open;
      end
      else
          Application.MessageBox('SELECCIONE CUENTA ORIGEN Y DESTINO (DIFERENTES).', 'ERROR');
    end
    else
          Application.MessageBox('No PUEDE REGISTRAR UN MOVIMIENTO SIN DESCRIPCIÓN O IMPORTE.', 'ERROR');


end;

procedure TfrmRegistroMovimientos.DBGrid1DblClick(Sender: TObject);
begin

    if DBGrid1.DataSource.DataSet.FieldByName('intReferencia').Value <> 0 then
        Application.MessageBox('No puede borrar un movimiento sin borrar el origen.', 'ERROR')
    else begin
        spDeleteMovimiento.Close;
        spDeleteMovimiento.Parameters.ParamByName('@pidMovimiento').Value := DBGrid1.DataSource.DataSet.FieldByName('idMovimiento').Value;
        spDeleteMovimiento.Open;

        spMovimientos.Close;
        spMovimientos.Open;
    end;
end;

procedure TfrmRegistroMovimientos.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - RegistroMovimientos');
      end;
    end;

    spCuentaOrigen.Open;
    spCuentaDestino.Open;

    dblkcCuentaOrigen.KeyValue := 2;
    dblkcCuentaDestino.KeyValue := 2;

    spMovimientos.Parameters.ParamByName('@plgContabilizado').value := 0;
    spMovimientos.Parameters.ParamByName('@pdteInicio').value := '1900-01-01';
    spMovimientos.Parameters.ParamByName('@pdteFin').value := '2050-01-01';

    spMovimientos.Open;

end;

end.
