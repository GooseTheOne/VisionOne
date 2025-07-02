unit AperturaCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Globales, System.DateUtils,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmAperturaCaja = class(TForm)
    btnAbrir: TButton;
    Label1: TLabel;
    edReal: TEdit;
    Label3: TLabel;
    Conn: TADOConnection;
    spInsertApertura: TADOStoredProc;
    dbeEfectivo: TDBEdit;
    dbeFechaUltimoCierre: TDBEdit;
    dsGetUltimoCierre: TDataSource;
    Label4: TLabel;
    dbeVentas: TDBEdit;
    dbeGastos: TDBEdit;
    dbeRetiros: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    dbeEfectivoUltimaOperacion: TDBEdit;
    Label2: TLabel;
    dbeDepositos: TDBEdit;
    Label5: TLabel;
    edDiferencia: TEdit;
    Label6: TLabel;
    dbeDiferencia: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    spGetUltimoCierre: TADOStoredProc;
    Shape1: TShape;
    procedure btnAbrirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edRealEnter(Sender: TObject);
    procedure edRealExit(Sender: TObject);
    procedure edRealChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAperturaCaja: TfrmAperturaCaja;
  ayer: TDateTime;

implementation

{$R *.dfm}

procedure TfrmAperturaCaja.btnAbrirClick(Sender: TObject);
begin
  spInsertApertura.Close;
  spInsertApertura.Parameters.ParamByName('@pdteFechaHora').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());
  spInsertApertura.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
  spInsertApertura.Parameters.ParamByName('@pintTipoOperacion').Value := 1;

  if spGetUltimoCierre.FieldByName('dcmEfectivoUltimaOperacion').Value = null then
      spInsertApertura.Parameters.ParamByName('@pdcmEfectivoUltimaOperacion').Value := 0
  else
      spInsertApertura.Parameters.ParamByName('@pdcmEfectivoUltimaOperacion').Value := spGetUltimoCierre.FieldByName('dcmEfectivoUltimaOperacion').Value;

  if spGetUltimoCierre.FieldByName('dcmVentas').Value = null then
      spInsertApertura.Parameters.ParamByName('@pdcmVentas').Value := 0
  else
      spInsertApertura.Parameters.ParamByName('@pdcmVentas').Value := spGetUltimoCierre.FieldByName('dcmVentas').Value;

  if spGetUltimoCierre.FieldByName('dcmGastos').Value = null then
      spInsertApertura.Parameters.ParamByName('@pdcmGastos').Value := 0
  else
      spInsertApertura.Parameters.ParamByName('@pdcmGastos').Value := spGetUltimoCierre.FieldByName('dcmGastos').Value;

  if spGetUltimoCierre.FieldByName('dcmRetiros').Value = null then
      spInsertApertura.Parameters.ParamByName('@pdcmRetiros').Value := 0
  else
      spInsertApertura.Parameters.ParamByName('@pdcmRetiros').Value := spGetUltimoCierre.FieldByName('dcmRetiros').Value;

  if spGetUltimoCierre.FieldByName('dcmDepositos').Value = null then
      spInsertApertura.Parameters.ParamByName('@pdcmDepositos').Value := 0
  else
      spInsertApertura.Parameters.ParamByName('@pdcmDepositos').Value := spGetUltimoCierre.FieldByName('dcmDepositos').Value;

  spInsertApertura.Parameters.ParamByName('@pdcmEfectivo').Value := edReal.Text;
  spInsertApertura.Parameters.ParamByName('@pdcmDiferencia').Value := edDiferencia.Text;

  vgintCajaAbierta := 1;
  vgFechaUltimaApertura := now;

  try
    spInsertApertura.Open;
  except
    On E: Exception do
    begin
        vgintCajaAbierta := 0;
        ShowMessage('ERROR DE BASE DE DATOS - Ocurrio un error - TfrmAperturaCaja.btnAbrirClick: ' + E.Message);
        exit;
    end;
  end;



  MessageDlg('HA ABIERTO USTED LA CAJA!',mtInformation ,[mbOK],0);

  btnAbrir.Enabled := false;
  edReal.Enabled := false;
  frmAperturaCaja.close;


end;

procedure TfrmAperturaCaja.edRealChange(Sender: TObject);
begin
  if edReal.Text = '' then
    edReal.Text := dbeEfectivo.Text
  else
    if dbeEfectivo.Text <> '' then
      edDiferencia.Text := floattostr(strtofloat(edReal.Text) - strtofloat(dbeEfectivo.Text))
    else
      edDiferencia.Text := edReal.Text;
end;

procedure TfrmAperturaCaja.edRealEnter(Sender: TObject);
begin
    //edReal.Text := '';
end;

procedure TfrmAperturaCaja.edRealExit(Sender: TObject);
begin
//  if StrToFloat(edReal.Text) - trunc(StrTofloat(edReal.Text)) = 0 then
//    edReal.Text := edReal.Text + '.00';



  if edReal.Text = '' then
    edReal.Text := dbeEfectivo.Text
  else
    if dbeEfectivo.Text <> '' then
      edDiferencia.Text := floattostr(strtofloat(edReal.Text) - strtofloat(dbeEfectivo.Text))
    else
      edDiferencia.Text := edReal.Text;



end;

procedure TfrmAperturaCaja.FormCreate(Sender: TObject);
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
          MessageDlg('ERROR DE CONEXION  - VERIFICA ACCESO A INTERNET '+#13+'RUTA: TfrmAperturaCaja.FormCreate ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit
      end;
    end;

    spGetUltimoCierre.close;
    spGetUltimoCierre.Parameters.ParamByName('@pidsucursal').Value := vgintSucursal;
    spGetUltimoCierre.open;

    if spGetUltimoCierre.RecordCount > 0 then begin
      if spGetUltimoCierre.FieldByName('dcmEfectivo').Value <> null then begin
        //dbeEfectivo.Text :=  spGetUltimoCierre.FieldByName('dcmEfectivo').Value;
        edReal.Text       :=  spGetUltimoCierre.FieldByName('dcmEfectivo').Value;
      end
      else begin
        //dbeEfectivo.Text :=  '0';
        edReal.Text       :=  '0';

      end;

    end;


end;

end.
