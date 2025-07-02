unit CierreCaja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, System.DateUtils, Globales, DataModuleGlobal,Vcl.ExtCtrls;

type
  TfrmCierreCaja = class(TForm)
    Conn: TADOConnection;
    spGetUltimaApertura: TADOStoredProc;
    dsGetUltimaApertura: TDataSource;
    edEfectivoUltimaOperacion: TEdit;
    Label3: TLabel;
    btnCerrar: TButton;
    spInsertCierre: TADOStoredProc;
    Label4: TLabel;
    edVentas: TEdit;
    dbeEfectivoCierreAnt: TDBEdit;
    Label1: TLabel;
    Label5: TLabel;
    edGastos: TEdit;
    edEfectivo: TEdit;
    Label6: TLabel;
    Shape1: TShape;
    dbeFecha: TDBEdit;
    edRetiros: TEdit;
    Label11: TLabel;
    spEfectivoDesdeUltimoCierre: TADOStoredProc;
    dsEfectivoDesdeUltimoCierre: TDataSource;
    spGastosDesdeUltimoCierre: TADOStoredProc;
    dsGastosDesdeUltimoCierre: TDataSource;
    spRetirosDesdeUltimoCierre: TADOStoredProc;
    dsRetirosDesdeUltimoCierre: TDataSource;
    dbeVentas: TDBEdit;
    dbeGastos: TDBEdit;
    dbeRetiros: TDBEdit;
    dbeEfectivo: TDBEdit;
    Label12: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    dbeDepositos: TDBEdit;
    Label10: TLabel;
    spGetDepositosDesdeUltimoCierre: TADOStoredProc;
    dsGetDepositosDesdeUltimoCierre: TDataSource;
    edDepositos: TEdit;
    edDiferencia: TEdit;
    Label31: TLabel;
    dbeDiferencia: TDBEdit;
    Label32: TLabel;
    edReal: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure edRealKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edRealChange(Sender: TObject);
    procedure edRealExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCierreCaja: TfrmCierreCaja;
  ayer: TDateTime;

  vldcmEfectivoUltimoCierreRegistrado: double;
  vldcmEfectivoDesdeUltimoCierreRegistrado: double;
  vldcmGastosDesdeUltimoCierreRegistrado: double;
  vldcmRetirosDesdeUltimoCierreRegistrado: double;
  vldcmEfectivoCajaRegistrado: double;

  vldcmEfectivoUltimoCierreReal: double;
  vldcmEfectivoDesdeUltimoCierreReal: double;
  vldcmGastosDesdeUltimoCierreReal: double;
  vldcmRetirosDesdeUltimoCierreReal: double;
  vldcmEfectivoCajaReal: double;

  vldcmTransferenciasDesdeUltimoCierreReal: double;
  vldcmTransferenciasDesdeUltimoCierreRegistrado: double;

implementation

{$R *.dfm}

procedure TfrmCierreCaja.btnCerrarClick(Sender: TObject);
begin
  spInsertCierre.Close;
  spInsertCierre.Parameters.ParamByName('@pdteFechaHora').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());
  spInsertCierre.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
  spInsertCierre.Parameters.ParamByName('@pintTipoOperacion').Value := 0;

  if(dbeEfectivoCierreAnt.Text = '') then
      spInsertCierre.Parameters.ParamByName('@pdcmEfectivoUltimaOperacion').Value := 0
  else
      spInsertCierre.Parameters.ParamByName('@pdcmEfectivoUltimaOperacion').Value := strtofloat(edEfectivoUltimaOperacion.Text);

  spInsertCierre.Parameters.ParamByName('@pdcmVentas').Value := strtofloat(edVentas.Text);
  spInsertCierre.Parameters.ParamByName('@pdcmGastos').Value := strtofloat(edGastos.Text);
  spInsertCierre.Parameters.ParamByName('@pdcmRetiros').Value := strtofloat(edRetiros.Text);
  spInsertCierre.Parameters.ParamByName('@pdcmDepositos').Value := strtofloat(edDepositos.Text);
  spInsertCierre.Parameters.ParamByName('@pdcmEfectivo').Value := strtofloat(edReal.Text);
  spInsertCierre.Parameters.ParamByName('@pdcmDiferencia').Value := strtofloat(edDiferencia.Text);

  vgintCajaAbierta := 0;

  try
    spInsertCierre.Open;
  except
    On E: Exception do
    begin
        vgintCajaAbierta := 1;
        ShowMessage('ERROR DE BASE DE DATOS - Ocurrio un error - TfrmCierreCaja.btnCerrarClick: ' + E.Message);
        exit;
    end;
  end;



  MessageDlg('HA CERRADO USTED LA CAJA!',mtInformation ,[mbOK],0);

  btnCerrar.Enabled := false;
  frmCierreCaja.Close;
  //edEfectivoReal.Enabled := false;

end;


procedure TfrmCierreCaja.edRealChange(Sender: TObject);
begin
  edDiferencia.Text := floattostr(strtofloat(edReal.Text) - strtofloat(edEfectivo.Text));
end;

procedure TfrmCierreCaja.edRealExit(Sender: TObject);
begin
  edDiferencia.Text := floattostr(strtofloat(edReal.Text) - strtofloat(edEfectivo.Text));
end;

procedure TfrmCierreCaja.edRealKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    edDiferencia.Text := floattostr(strtofloat(edReal.Text) - strtofloat(edEfectivo.Text));
end;

procedure TfrmCierreCaja.FormCreate(Sender: TObject);
begin

//    spGetUltimaApertura.Connection              := DMGlobalConn.Conn;
//    spInsertCierre.Connection                   := DMGlobalConn.Conn;
//    spEfectivoDesdeUltimoCierre.Connection      := DMGlobalConn.Conn;
//    spGastosDesdeUltimoCierre.Connection        := DMGlobalConn.Conn;
//    spRetirosDesdeUltimoCierre.Connection       := DMGlobalConn.Conn;
//    spGetDepositosDesdeUltimoCierre.Connection  := DMGlobalConn.Conn;

    if vgIesPROD = 1 then
      Conn.ConnectionString := vgCadenaConexion
    else
      Conn.ConnectionString := vgCadenaConexionDes;

    try
      Conn.Open;
    except
      On E: Exception do
      begin
          MessageDlg('ERROR DE CONEXION  - VERIFICA ACCESO A INTERNET '+#13+'RUTA: TfrmCierreCaja.FormCreate ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
      end;
    end;

    //Obtiene el ultimo cierre de esta sucursal
    spGetUltimaApertura.Close;
    spGetUltimaApertura.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
    spGetUltimaApertura.Open;

    if spGetUltimaApertura.FieldByName('dcmEfectivo').Value = null then begin
      edEfectivo.Text           := '0.0';
      vldcmEfectivoUltimoCierreReal       := 0;
    end
    else begin
      edEfectivo.Text                 := spGetUltimaApertura.FieldByName('dcmEfectivo').Value;
      //edReal.Text                     := spGetUltimaApertura.FieldByName('dcmEfectivo').Value;
      vldcmEfectivoUltimoCierreReal   := spGetUltimaApertura.FieldByName('dcmEfectivo').Value;
      edEfectivoUltimaOperacion.Text  := spGetUltimaApertura.FieldByName('dcmEfectivo').Value;
    end;


    if spGetUltimaApertura.FieldByName('dcmEfectivoUltimaOperacion').Value = null then begin
      edEfectivo.Text     := '0.0';
      vldcmEfectivoUltimoCierreRegistrado := 0;
    end
    else begin
      edEfectivo.Text     := spGetUltimaApertura.FieldByName('dcmEfectivoUltimaOperacion').Value;
      vldcmEfectivoUltimoCierreRegistrado := spGetUltimaApertura.FieldByName('dcmEfectivoUltimaOperacion').Value;
    end;






    spEfectivoDesdeUltimoCierre.Close;
    spEfectivoDesdeUltimoCierre.Parameters.ParamByName('@pdteFechaUltimoCierre').Value :=  spGetUltimaApertura.FieldByName('dteFechaHora').Value;
    spEfectivoDesdeUltimoCierre.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
    spEfectivoDesdeUltimoCierre.Open;

    if spEfectivoDesdeUltimoCierre.FieldByName('dcmPago').Value <> null then begin
      edVentas.Text                         := spEfectivoDesdeUltimoCierre.FieldByName('dcmPago').Value;
      vldcmEfectivoDesdeUltimoCierreReal        := spEfectivoDesdeUltimoCierre.FieldByName('dcmPago').Value;
      vldcmEfectivoDesdeUltimoCierreRegistrado  := spEfectivoDesdeUltimoCierre.FieldByName('dcmPago').Value;
    end
    else begin
      edVentas.Text                         := '0.0';
      vldcmEfectivoDesdeUltimoCierreReal        := 0;
      vldcmEfectivoDesdeUltimoCierreRegistrado  := 0;
    end;

    spGastosDesdeUltimoCierre.Close;
    spGastosDesdeUltimoCierre.Parameters.ParamByName('@pdteUltimoCierre').Value :=  spGetUltimaApertura.FieldByName('dteFechaHora').Value;
    spGastosDesdeUltimoCierre.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
    spGastosDesdeUltimoCierre.Open;
    if spGastosDesdeUltimoCierre.FieldByName('dcmTotal').value <> null then begin
      edGastos.Text                       := spGastosDesdeUltimoCierre.FieldByName('dcmTotal').value;
      vldcmGastosDesdeUltimoCierreReal        := spGastosDesdeUltimoCierre.FieldByName('dcmTotal').value;
      vldcmGastosDesdeUltimoCierreRegistrado  := spGastosDesdeUltimoCierre.FieldByName('dcmTotal').value;
    end
    else begin
      edGastos.Text                       := '0.0';
      vldcmGastosDesdeUltimoCierreReal        := 0;
      vldcmGastosDesdeUltimoCierreRegistrado  := 0;
    end;

    spRetirosDesdeUltimoCierre.Close;
    spRetirosDesdeUltimoCierre.Parameters.ParamByName('@pdteUltimoCierre').Value :=  spGetUltimaApertura.FieldByName('dteFechaHora').Value;
    spRetirosDesdeUltimoCierre.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
    spRetirosDesdeUltimoCierre.Open;
    if spRetirosDesdeUltimoCierre.FieldByName('dcmTotal').value <> null then begin
      edRetiros.Text                := spRetirosDesdeUltimoCierre.FieldByName('dcmTotal').value;
      vldcmRetirosDesdeUltimoCierreRegistrado := spRetirosDesdeUltimoCierre.FieldByName('dcmTotal').value;
      vldcmRetirosDesdeUltimoCierreReal       := spRetirosDesdeUltimoCierre.FieldByName('dcmTotal').value;
    end
    else begin
      edRetiros.Text                := '0.0';
      vldcmRetirosDesdeUltimoCierreRegistrado := 0;
      vldcmRetirosDesdeUltimoCierreReal       := 0;
    end;



    spGetDepositosDesdeUltimoCierre.Close;
    spGetDepositosDesdeUltimoCierre.Parameters.ParamByName('@pdteFechaUltimoCierre').Value :=  spGetUltimaApertura.FieldByName('dteFechaHora').Value;
    spGetDepositosDesdeUltimoCierre.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
    spGetDepositosDesdeUltimoCierre.Open;
    if spGetDepositosDesdeUltimoCierre.FieldByName('dcmPago').value <> null then begin
      edDepositos.Text                := spGetDepositosDesdeUltimoCierre.FieldByName('dcmPago').value;
      vldcmTransferenciasDesdeUltimoCierreRegistrado  := spGetDepositosDesdeUltimoCierre.FieldByName('dcmPago').value;
      vldcmTransferenciasDesdeUltimoCierreReal        := spGetDepositosDesdeUltimoCierre.FieldByName('dcmPago').value;
    end
    else begin
      edDepositos.Text                := '0.0';
      vldcmTransferenciasDesdeUltimoCierreRegistrado  := 0;
      vldcmTransferenciasDesdeUltimoCierreReal        := 0;
    end;

    vldcmEfectivoCajaRegistrado := vldcmEfectivoUltimoCierreReal  + vldcmEfectivoDesdeUltimoCierreRegistrado - vldcmGastosDesdeUltimoCierreRegistrado - vldcmRetirosDesdeUltimoCierreRegistrado; //- vldcmTransferenciasDesdeUltimoCierreRegistrado;
    vldcmEfectivoCajaReal       := vldcmEfectivoUltimoCierreReal       + vldcmEfectivoDesdeUltimoCierreReal       - vldcmGastosDesdeUltimoCierreReal       - vldcmRetirosDesdeUltimoCierreReal; //- vldcmTransferenciasDesdeUltimoCierreReal;

    //edEfectivoTotal.Text := floattostr(vldcmEfectivoCajaRegistrado);
    edEfectivo.Text  := floattostr(vldcmEfectivoCajaRegistrado);
    edReal.Text  := floattostr(vldcmEfectivoCajaRegistrado);



    self.Width := 995;
end;

end.

