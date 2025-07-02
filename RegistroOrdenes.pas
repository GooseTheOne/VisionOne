unit RegistroOrdenes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,Agenda,Globales,
  VPE_VCL, Vcl.Mask, System.UITypes,DateUtils, Vcl.Buttons;
type
  TfrmOrdenesV2 = class(TForm)
    Conn: TADOConnection;
    edCantidad: TEdit;
    edDescuento: TEdit;
    edImporte: TEdit;
    edPrecio: TEdit;
    memNotas: TMemo;
    dbcbxPrenda: TDBLookupComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    btnAgregarServicio: TButton;
    edImporteSinDesc: TEdit;
    edDescuentoTotal: TEdit;
    edSubtotal: TEdit;
    edIVA: TEdit;
    edTotal: TEdit;
    edIngreso: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel2: TPanel;
    Panel1: TPanel;
    objCalendario: TMonthCalendar;
    btnAgenda: TButton;
    Label23: TLabel;
    edFechaEntrega: TEdit;
    btnGuardaNota: TButton;
    btnLiquidar: TButton;
    btnImprimir: TButton;
    btnSalir: TButton;
    spGetPrendas: TADOStoredProc;
    dsGetPrendas: TDataSource;
    spGetPrecioPorPrenda: TADOStoredProc;
    dsGetPrecioPorPrenda: TDataSource;
    dbcbxServicio: TDBLookupComboBox;
    lblTipoServ: TLabel;
    lblPrecio: TLabel;
    lblOrden: TLabel;
    spInsertOrden: TADOStoredProc;
    spGetLineasPorOrden: TADOStoredProc;
    dsGetLineasPorOrden: TDataSource;
    spUpdateOrden: TADOStoredProc;
    spInsertPagoWithOrden: TADOStoredProc;
    Panel4: TPanel;
    Panel5: TPanel;
    VPENota: TVPEngine;
    dtpRetro: TDateTimePicker;
    dbgOrdenPrenda: TDBGrid;
    spOrdenPrenda: TADOStoredProc;
    dsOrdenPrenda: TDataSource;
    spInsertOrdenPrenda: TADOStoredProc;
    spInsertLineaServicio: TADOStoredProc;
    spLineaServicio: TADOStoredProc;
    dsLineaServicio: TDataSource;
    dbgLineaServicio: TDBGrid;
    spCalculaTotal: TADOStoredProc;
    dsCalculaTotal: TDataSource;
    btnLimpiaTodo: TButton;
    btnAgregarPrenda: TButton;
    spDeleteLineaServicio: TADOStoredProc;
    spDeleteOrdenPrenda: TADOStoredProc;
    Label22: TLabel;
    spFormaPago: TADOStoredProc;
    dsFormaPago: TDataSource;
    dblkcFormaPago: TDBLookupComboBox;
    btnMas: TButton;
    btnMenos: TButton;
    Panel3: TPanel;
    Label24: TLabel;
    Label9: TLabel;
    edPorCobrar: TEdit;
    spGetClientesCat: TADOStoredProc;
    dsGetClientesCat: TDataSource;
    dbgCliente2: TDBGrid;
    dbeNombre: TDBEdit;
    dbeTelefono: TDBEdit;
    dbeCorreo: TDBEdit;
    DBNavigator1: TDBNavigator;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    Label28: TLabel;
    edTelefono2: TEdit;
    Label29: TLabel;
    edNombre2: TEdit;
    btnBuscar2: TButton;
    dbeAlta: TDBEdit;
    Label1: TLabel;
    spDeletePagosXOrden: TADOStoredProc;
    Label2: TLabel;
    Label3: TLabel;
    edFolio: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    edPrendas: TEdit;
    Label6: TLabel;
    chbxRetro: TCheckBox;
    procedure dbcbxPrendaClick(Sender: TObject);
    procedure dbcbxServicioClick(Sender: TObject);
    procedure edCantidadExit(Sender: TObject);
    procedure btnAgregarServicioClick(Sender: TObject);
    procedure memNotasExit(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure edDescuentoExit(Sender: TObject);
    procedure edDescuentoEnter(Sender: TObject);
    procedure edCantidadEnter(Sender: TObject);
    procedure btnGuardaNotaClick(Sender: TObject);
    procedure edIngresoExit(Sender: TObject);
    procedure edIngresoEnter(Sender: TObject);
    procedure btnLiquidarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edPrecioEnter(Sender: TObject);
    procedure edPrecioExit(Sender: TObject);
    procedure objCalendarioClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCantidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPrecioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDescuentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure memNotasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtpRetroChange(Sender: TObject);
    procedure dbgOrdenPrendaCellClick(Column: TColumn);
    procedure dbgOrdenPrendaDblClick(Sender: TObject);
    procedure btnLimpiaTodoClick(Sender: TObject);
    procedure btnAgregarPrendaClick(Sender: TObject);
    procedure dbgLineaServicioDblClick(Sender: TObject);
    procedure btnAgendaClick(Sender: TObject);
    procedure btnBuscar2Click(Sender: TObject);
    procedure edIngresoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edTelefono2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNombre2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNombre2Exit(Sender: TObject);
    procedure dbeNombreExit(Sender: TObject);
    procedure dbeNombreEnter(Sender: TObject);
    procedure dsGetClientesCatDataChange(Sender: TObject; Field: TField);
    procedure calculaTotalDB();
    procedure btnMasClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure limpiarPantalla();
    procedure calculaImporte();
    procedure eliminaLinea();
    procedure dsGetPrendasDataChange(Sender: TObject; Field: TField);
    procedure dsOrdenPrendaDataChange(Sender: TObject; Field: TField);
    procedure edCantidadChange(Sender: TObject);
    procedure edPrendasEnter(Sender: TObject);
    procedure edPrendasExit(Sender: TObject);
    procedure chbxRetroClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmOrdenesV2: TfrmOrdenesV2;
  vbNuevo: boolean = false;
  vbModificar: boolean = false;
  vlintCantidad: integer = 1;
  vldcmImporte: real = 0.0;
  vldcmImporteSinDesc: real = 0.0;
  vldcmDescuento: real = 0.0;
  vldcmsubtotal: real = 0.0;
  vldcmIVA: real = 0.0;
  vldcmIVAswap: real = 0.0;
  vldcmTotal: real = 0.0;
  vldcmAdelanto: real = 0.0;
  vldcmPorCobrar: real = 0.0;
  vltemCantidad: integer = 0;
  vlintPrendas: integer = 0;
  vlintOrden: integer = 0;
  vlintOrdenPrenda: integer = 0;
  vldcmDescuentoTotal: real = 0.0;
  vlbolIVA: boolean = true;
  //vlbPrenda:integer = 0;
implementation

{$R *.dfm}

procedure TfrmOrdenesV2.calculaTotalDB();
// Revisado Alex (11/03/23)
begin

    try
      //spCalculaTotal regresa Importe/Descuento/Total por cada servicio de una orden
      spCalculaTotal.Close;
      spCalculaTotal.Parameters.ParamByName('@pidOrden').Value := vlintOrden;
      spCalculaTotal.Open;
    except
      On E: Exception do
      begin
          MessageDlg('ERROR EN LA EXTRACCION DE DATOS:'+#13+'      RUTA: TfrmOrdenesV2.calculaTotalDB() ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
      end;
    end;

    if dsCalculaTotal.DataSet.FieldByName('Importe').Value <> Null then begin
        //Despliega la información en pantalla en los campos de calculo de total de la nota
        edImporteSinDesc.Text := FormatCurr('$##,##0.00',dsCalculaTotal.DataSet.FieldByName('Importe').Value);
        edDescuentoTotal.Text := FormatCurr('$##,##0.00',dsCalculaTotal.DataSet.FieldByName('Descuento').Value);
        edSubtotal.Text       :=  FormatCurr('$##,##0.00',(strtofloat(dsCalculaTotal.DataSet.FieldByName('Total').Value))/116*100);
        vldcmSubtotal := strtofloat(dsCalculaTotal.DataSet.FieldByName('Total').Value)/116*100;
        vldcmIVA := strtofloat(dsCalculaTotal.DataSet.FieldByName('Total').Value)/116*16;

        edTotal.Text        := FormatCurr('$##,##0.00',vldcmSubtotal + vldcmIVA);
        edIVA.Text          := FormatCurr('$##,##0.00',vldcmIVA);

        vldcmImporteSinDesc := StrToFloat(StringReplace(StringReplace(spCalculaTotal.FieldByName('Importe').Value,',','',[rfReplaceAll]),'$','',[rfReplaceAll]));
        vldcmDescuentoTotal := StrToFloat(StringReplace(StringReplace(spCalculaTotal.FieldByName('Descuento').value,',','',[rfReplaceAll]),'$','',[rfReplaceAll]));
        vldcmTotal          := vldcmSubtotal + vldcmIVA;
        vldcmAdelanto       := StrToFloat(StringReplace(StringReplace(edIngreso.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]));
    end
    else begin
        edImporteSinDesc.Text := '0.00';
        edDescuentoTotal.Text := '0.00';
        edSubtotal.Text       := '0.00';
        edTotal.Text          := '0.00';
        edIVA.Text            := '0.00';
        vldcmSubtotal         := 0;
        vldcmIVA              := 0;
        vldcmImporteSinDesc   := 0;
        vldcmDescuentoTotal   := 0;
        vldcmTotal            := 0;
        vldcmAdelanto         := 0;
    end;
end;

procedure TfrmOrdenesV2.chbxRetroClick(Sender: TObject);
begin
    if chbxRetro.Checked = true then begin
      	chbxRetro.Checked := true;
        edFolio.enabled 	:= true;
        dtpRetro.Enabled 	:= true;
    end
    else begin
        chbxRetro.Checked := false;
        edFolio.enabled 	:= false;
        dtpRetro.Enabled 	:= false;

    end;
end;

procedure TfrmOrdenesV2.limpiarPantalla();
// Revisado Alex (11/03/23)
begin
  //Limpia Campos de la pantalla
  edNombre2.Text              := '';
  edTelefono2.Text            := '';
  edCantidad.Text             := '1';
  edPrecio.Text               := '0.00';
  edImporte.Text              := '0.00';
  edDescuento.Text            := '0.00';
  lblPrecio.Caption           := '0.00';
  memNotas.Text               := '';
  dbcbxPrenda.KeyValue        := 0;
  dbcbxServicio.KeyValue      := 0;
  objCalendario.Date          := now();
  edFechaEntrega.Text         := '';
  edImporteSinDesc.Text       := '0.00';
  edDescuentoTotal.Text       := '0.00';
  edSubtotal.Text             := '0.00';
  edIVA.Text                  := '0.00';
  edTotal.Text                := '0.00';
  edIngreso.Text              := '0.00';
  lblTipoServ.Caption         := '';
  lblOrden.Caption            := '';
  btnAgregarPrenda.Enabled    := false;
  btnAgregarServicio.Enabled  := false;
  btnGuardaNota.Enabled       := false;
  btnLiquidar.Enabled         := false;
  btnImprimir.Enabled         := false;
  dblkcFormaPago.KeyValue     := 1;
  edPorCobrar.Text            := '0.00';
  edFolio.Text                := '';
  edFolio.Enabled             := true;
  edFechaEntrega.enabled      := true;
  dblkcFormaPago.Enabled      := true;
  edIngreso.Enabled           := true;
  edPrendas.Text              := '0';
  edFolio.Enabled         		:= false;
  dtpRetro.Date               := now();
  edFolio.Text                := '';
  dtpRetro.Enabled						:= false;
  chbxRetro.Checked       		:= false;

  //Resetea variables locales
  vlintCantidad       := 1;
  vlintPrendas        := 0;
  vldcmImporte        := 0.0;
  vldcmImporteSinDesc := 0.0;
  vldcmDescuento      := 0.0;
  vldcmsubtotal       := 0.0;
  vldcmIVA            := 0.0;
  vldcmIVAswap        := 0.0;
  vldcmTotal          := 0.0;
  vldcmAdelanto       := 0.0;
  vldcmPorCobrar      :=0.0;
  vltemCantidad       := 0;
  vlintOrden          := 0;
  vldcmDescuentoTotal := 0.0;
  vlbolIVA            := true;

  //Cierra los SP's
  try
    spGetPrendas.Close;
    spGetPrecioPorPrenda.Close;
    spInsertOrden.Close;
    spGetLineasPorOrden.Close;
    spUpdateOrden.Close;
    spInsertPagoWithOrden.Close;
    spOrdenPrenda.Close;
    spLineaServicio.Close;
    spGetPrendas.Close;
    spGetPrendas.Open;
    spGetClientesCat.Close;

  except
    On E: Exception do
    begin
        MessageDlg('ERROR EN EL CIERRE DE SP''s:'+#13+'      RUTA: TfrmOrdenesV2.limpiarPantalla() ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;
end;

procedure TfrmOrdenesV2.calculaImporte();
// Revisado Alex (11/03/23)
begin
  vlintCantidad     := strtoint(edCantidad.Text);
  edDescuento.Text  := FormatCurr('##,##0.00',vldcmDescuento);

  vldcmImporte      := strtofloat(StringReplace(edPrecio.Text,',','',[rfReplaceAll])) * vlintCantidad;

  edImporte.Text    := FormatCurr('##,##0.00',vldcmImporte);
  lblPrecio.Caption := FormatCurr('##,##0.00',vldcmImporte - vldcmDescuento);
end;

procedure TfrmOrdenesV2.eliminaLinea();
//Revisado Alex - 11/03/23
begin
  vldcmImporteSinDesc := vldcmImporteSinDesc - vldcmImporte;
  edImporteSinDesc.Text := FormatCurr('##,##0.00',vldcmImporteSinDesc);
  vldcmDescuentoTotal := vldcmDescuentoTotal - vldcmDescuento;
  edDescuentoTotal.Text := FormatCurr('##,##0.00',vldcmDescuentoTotal);
  vldcmSubtotal := vldcmSubtotal - vldcmImporte + vldcmDescuento;
  edSubtotal.Text := FormatCurr('##,##0.00',vldcmSubtotal);
  //AQUI
  if dbgCliente2.DataSource.DataSet.FieldByName('Factura').AsInteger = 1 then
      vldcmIVA := vldcmSubtotal * 0.16
  else
      vldcmIVA := 0;
  edIVA.Text := FormatCurr('##,##0.00',vldcmIVA);
  vldcmTotal := vldcmSubtotal + vldcmIVA;
  edTotal.Text := FormatCurr('##,##0.00',vldcmTotal);
  vldcmAdelanto := vldcmAdelanto + strtofloat(edIngreso.Text);

end;

procedure TfrmOrdenesV2.btnAgregarServicioClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  if ((dbcbxServicio.KeyValue = null) or (dbcbxServicio.KeyValue = 0)) then
      MessageDlg('SELECCIONE UN SERVICIO',mtWarning,[mbOK],0)
  else begin
          try
            spInsertLineaServicio.Close;
            spInsertLineaServicio.Parameters.ParamByName('@pidOrdenPrenda').Value := vlintOrdenPrenda;
            spInsertLineaServicio.Parameters.ParamByName('@pidServicio').Value    := dbcbxServicio.KeyValue;
            spInsertLineaServicio.Parameters.ParamByName('@pidPrecio').Value      := dsGetPrecioPorPrenda.DataSet.FieldByName('idPrecio').Value;
            spInsertLineaServicio.Parameters.ParamByName('@pintCantidad').Value   := vlintCantidad;
            spInsertLineaServicio.Parameters.ParamByName('@pdcmPrecio').Value     := dsGetPrecioPorPrenda.DataSet.FieldByName('dcmPrecio').Value;
            spInsertLineaServicio.Parameters.ParamByName('@pdcmImporte').Value    := vldcmImporte;
            spInsertLineaServicio.Parameters.ParamByName('@pdcmDescuento').Value  := vldcmDescuento;
            spInsertLineaServicio.Parameters.ParamByName('@pdcmTotal').Value      := vldcmImporte - vldcmDescuento;
            spInsertLineaServicio.Parameters.ParamByName('@pstrNota').Value       := memNotas.Text;
            spInsertLineaServicio.Open;
          except
            On E: Exception do
            begin
              MessageDlg('ERROR AL INSERTAR LINEA-SERVICIO:'+#13+'      RUTA: TfrmOrdenesV2.btnAgregarServicioClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
              exit;
            end;
          end;

          calculaTotalDB();

          edPrecio.Text := '0.0';
          edDescuento.Text := '0.0';
          edImporte.Text := '0.0';
          lblPrecio.Caption := '0.0';
          memNotas.Text := '';
          dbcbxServicio.KeyValue := 0;

          try
            spLineaServicio.Close;
            spLineaServicio.Parameters.ParamByName('@pidOrdenPrenda').Value := vlintOrdenPrenda;
            spLineaServicio.Open;
          except
            On E: Exception do
            begin
              MessageDlg('ERROR AL ACTUALIZAR EL SP LINEA-SERVICIO:'+#13+'      RUTA: TfrmOrdenesV2.btnAgregarServicioClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
              exit;
            end;
          end;

          edFechaEntrega.Text := DateToStr(dtpRetro.DateTime+3);
          btnGuardaNota.Enabled := true;
          btnLiquidar.Enabled := true;
  end;
end;

procedure TfrmOrdenesV2.btnGuardaNotaClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
    //obtiene el valor de adelanto capturado en pantalla
    vldcmAdelanto := strtofloat(StringReplace(edIngreso.Text,',','',[rfReplaceAll]));
    //Calcúla el monto por cobrar = Total - Adelanto
    vldcmPorCobrar := vldcmTotal - vldcmAdelanto;
    edPorCobrar.Text := FormatCurr('##,##0.00',vldcmPorCobrar);
    //manda error si es negativo, esta pagando de mas
    if vldcmPorCobrar < 0 then
        MessageDlg('El importe del pago no puede ser mayor al TOTAL, FAVOR DE VERIFICAR!',mtError,[mbOK],0)
    else begin
              //Si es positivo inserta el pago asociado a la orden
              if vldcmAdelanto > 0 then begin
                  try
                    spInsertPagoWithOrden.Close;
                    spInsertPagoWithOrden.Parameters.ParamByName('@pidOrden').Value     := vlintOrden;      //orden
                    spInsertPagoWithOrden.Parameters.ParamByName('@pdcmImporte').Value  := vldcmAdelanto;   //importe
                    //la vg(variable global) Retro se usa para registrar ordenes postfecha e ingresa
                    //la fecha de pantalla
                    //si esta apagada la fecha es la de hoy
                    if vgintRetro = 0 then
                        spInsertPagoWithOrden.Parameters.ParamByName('@pdteFechaPago').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now())
                    else begin
                      if DaysBetween(dtpRetro.Date,now()) = 0 then
                        spInsertPagoWithOrden.Parameters.ParamByName('@pdteFechaPago').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now())
                      else
                        spInsertPagoWithOrden.Parameters.ParamByName('@pdteFechaPago').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',dtpRetro.DateTime);
                    end;
                    //si el por cobrar es cero significa que es una venta cerrada y pone el tipo de pago en 2
                    if vldcmPorCobrar = 0 then
                      spInsertPagoWithOrden.Parameters.ParamByName('@pidTipoPago').Value := 2
                    else //sino lo deja como un adelanto
                      spInsertPagoWithOrden.Parameters.ParamByName('@pidTipoPago').Value := 1;

                    spInsertPagoWithOrden.Parameters.ParamByName('@pidFormaPago').Value := dblkcFormaPago.KeyValue;   //foma de pago
                    spInsertPagoWithOrden.Open;
                  except
                    On E: Exception do
                    begin
                      MessageDlg('ERROR AL INSERTAR EL PAGO'+#13+'      RUTA: TfrmOrdenesV2.btnGuardaNotaClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);                      exit;
                      exit;
                    end;
                  end;
              end;


              try
                  //actualiza la orden
                  spUpdateOrden.Close;
                  spUpdateOrden.Parameters.ParamByName('@pidOrden').Value       := vlintOrden;

                  if (edFolio.Text = NULL) or (edFolio.Text = '') then
                      spUpdateOrden.Parameters.ParamByName('@pintFolioAnt').Value   := 0
                  else
                      spUpdateOrden.Parameters.ParamByName('@pintFolioAnt').Value   := edFolio.Text;


                  if chbxRetro.Checked = true then begin
                      spUpdateOrden.Parameters.ParamByName('@pintRetro').Value := 1;
                      spUpdateOrden.Parameters.ParamByName('@pdteRecepcion').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',dtpRetro.DateTime);
                  end
                  else
                      spUpdateOrden.Parameters.ParamByName('@pdteRecepcion').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());

                  spUpdateOrden.Parameters.ParamByName('@pdteEntrega').Value    := FormatDateTime('yyyy/mm/dd',strtodate(edFechaEntrega.Text));
                  spUpdateOrden.Parameters.ParamByName('@pdcmImporte').Value    := vldcmImporteSinDesc;
                  spUpdateOrden.Parameters.ParamByName('@pdcmDescuento').Value  := vldcmDescuentoTotal;
                  spUpdateOrden.Parameters.ParamByName('@pdcmSubtotal').Value   := vldcmImporteSinDesc - vldcmDescuentoTotal - vldcmIVA;
                  spUpdateOrden.Parameters.ParamByName('@pdcmIVA').Value        := vldcmIVA;
                  spUpdateOrden.Parameters.ParamByName('@pdcmTotal').Value      := vldcmTotal;
                  spUpdateOrden.Parameters.ParamByName('@pdcmACuenta').Value    := vldcmAdelanto;
                  spUpdateOrden.Parameters.ParamByName('@pdcmPorPagar').Value   := vldcmPorCobrar;
                  spUpdateOrden.Parameters.ParamByName('@pintPrendas').Value    := edPrendas.Text;

                  //si el por cobrar es cero la orden la pone como pagada
                  if vldcmPorCobrar = 0 then begin
                    spUpdateOrden.Parameters.ParamByName('@pintestatus').Value    := 2;
                    btnLiquidar.Enabled := false;
                  end
                  else //sino la deja abierta
                    spUpdateOrden.Parameters.ParamByName('@pintestatus').Value    := 1;
                  spUpdateOrden.Open;
              except
                On E: Exception do
                begin
                      MessageDlg('ERROR AL ACTUALIZAR LA ORDEN'+#13+'      RUTA: TfrmOrdenesV2.btnGuardaNotaClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
                      exit;
                end;
              end;

              btnImprimir.Enabled     := true;
              btnGuardaNota.Enabled   := false;
              edFolio.Enabled         := false;
              edFechaEntrega.enabled  := false;
              dblkcFormaPago.Enabled  := false;
              edIngreso.Enabled       := false;
              edFolio.Enabled         := false;
              dtpRetro.Enabled				:= false;
              chbxRetro.Checked       := false;

    end
end;

procedure TfrmOrdenesV2.btnImprimirClick(Sender: TObject);
//Revisado Alex - 11/03/23
//Modificado Alex - 27/07/23
var
  i:Integer;
  x,y,y1,delta,hpag:Double;
  vlbCambioPrenda, vlidPrenda:Integer;
  vlbolDesc: boolean;
begin
    vlbCambioPrenda := 0;
    vlbolDesc:= false;
    y1 := 0;
    vlidPrenda := 0;

    try
      spGetLineasPorOrden.Close;
      spGetLineasPorOrden.Parameters.ParamByName('@pidOrden').Value := vlintOrden;
      spGetLineasPorOrden.Open;
    except
      On E: Exception do
      begin
          MessageDlg('ERROR AL OBTENER LAS LINEAS DE LA ORDEN PARA IMPRIMIR'+#13+'      RUTA: TfrmOrdenesV2.btnImprimirClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
      end;
    end;

    x:= 0;
    y:= 0;
    i := 0;
    hpag := 62 +(0.8*spGetLineasPorOrden.RecordCount);

    VPENota.OpenDoc;
    VPENota.PageFormat := VPAPER_USER_DEFINED;
    VPENota.PageWidth := 8;
    VPENota.PageHeight := hpag;
    VPENota.PenSize:=0;
    VPENota.SetOutRect(0,0,8,hpag);

    VPENota.SetFont('Attraction Personal Use',40);
    VPENota.Print(x+0.6,y,'Eugene s');

    VPENota.SetFont('Courier New',9);
    VPENota.TextBold := true;

    y := y + 0.4;
    if vgintSucursal = 1 then begin
    //VPENota.Print(x,y+3.0,'123456789_123456789_123456789_12345678');
      VPENota.Print(x,y+3.0,'   AV. 15 DE MAYO 2913 COL LAS HADAS  ');
      VPENota.Print(x,y+3.4,'         C.P. 72090 PUEBLA PUE        ');
      VPENota.Print(x,y+3.8,' TEL: 22-24-21-40-70 / 22-21-97-15-41 ');
      VPENota.Print(x,y+4.2,'   HORARIO:  L-V 10:00AM-07:00PM      ');
      VPENota.Print(x,y+4.6,'                                      ');
      //VPENota.Print(x,y+4.6,'             SAB 09:00AM-02:00PM      ');
      VPENota.Print(x,y+5.0,'      RFC :  BIGD991014FHA            ');
      VPENota.Print(x,y+5.4,'  REGIMEN SIMPLIFICADO DE CONFIANZA   ');
    end
    else if vgintSucursal = 2 then begin
      VPENota.Print(x,y+3.0,'ROSENDO MARQUEZ 1917 COL BELISARIO DGZ');
      VPENota.Print(x,y+3.4,'         C.P. 72180 PUEBLA PUE        ');
      VPENota.Print(x,y+3.8,' TEL: 22-21-97-15-41 / 22-24-21-40-70 ');
      VPENota.Print(x,y+4.2,'   HORARIO:  L-V 10:00AM-07:00PM      ');
      VPENota.Print(x,y+4.6,'             SAB 09:00AM-02:00PM      ');
      VPENota.Print(x,y+5.0,'       RFC:  BIGD991014FHA            ');
      VPENota.Print(x,y+5.4,'  REGIMEN SIMPLIFICADO DE CONFIANZA   ');
    end
    else if vgintSucursal = 3 then begin
      //VPENota.Print(x,y+3.0,'123456789_123456789_123456789_12345678');
      VPENota.Print(x,y+3.0,' AV. 15 DE MAYO 3916 COL VILA POSADAS ');
      VPENota.Print(x,y+3.4,'         C.P. 72060 PUEBLA PUE        ');
      VPENota.Print(x,y+3.8,' TEL: 22-25-89-32-63 / 22-21-97-15-41 ');
      VPENota.Print(x,y+4.2,'   HORARIO:  L-V 10:00AM-07:00PM      ');
      VPENota.Print(x,y+4.6,'             SAB 09:00AM-02:00PM      ');
      VPENota.Print(x,y+5.0,'       RFC:  BIGD991014FHA            ');
      VPENota.Print(x,y+5.4,'  REGIMEN SIMPLIFICADO DE CONFIANZA   ');
    end;

    y := y + 0.5;

    VPENota.Print(x,y+5.8,  '   NOMBRE: ' +dbeNombre.Text);
    VPENota.Print(x,y+6.2,  ' TELEFONO: ' +dbeTelefono.Text);
    VPENota.Print(x,y+6.6,  '   CORREO: ' +dbeCorreo.Text);
    VPENota.Print(x,y+7.0,  'RECEPCION: ' +FormatDateTime('dd/mm/yyyy hh:nn:ss',now()));
    VPENota.Print(x,y+7.4,  '  ENTREGA: ' +edFechaEntrega.Text);

    VPENota.SetFont('Courier New',8);
  //VPENota.Print(x,y+7.8, '123456789_123456789_123456789_123456789_12');
    VPENota.Print(x,y+8.2, 'CANT PRENDA/SERVICIO        P.U.   IMPORTE');
    VPENota.PenSize:=0.03;
    VPENota.Line(x,y+8.6,x+7.7, y+8.6);

    y := 2.2 + 0.5;

    while (i < spGetLineasPorOrden.RecordCount) do begin
         if vlbCambioPrenda = 0 then begin
            if vlidPrenda <> spGetLineasPorOrden.FieldByName('idOrdenPrenda').value then begin
                vlidPrenda := spGetLineasPorOrden.FieldByName('idOrdenPrenda').value;
                vlbCambioPrenda := 1
            end;
         end
         else begin
            if vlidPrenda = spGetLineasPorOrden.FieldByName('idOrdenPrenda').value then
                vlbCambioPrenda := 0
            else begin
                vlidPrenda := spGetLineasPorOrden.FieldByName('idOrdenPrenda').value;
                vlbCambioPrenda := 1;
            end;
         end;
        if vlbCambioPrenda = 1 then begin
            //VPENota.Print(x,y+8.2, '123456789_123456789_12_21_987654321_987654321');
            VPENota.Print(x+0.1,y+6.9,   spGetLineasPorOrden.FieldByName('intCantidad').Text);
            VPENota.Print(x+0.5,y+6.9,   spGetLineasPorOrden.FieldByName('strPrenda').Text);
            y := y + 0.4;
        end;
        //VPENota.Print(x,y+8.2, '123456789_123456789_12_21_987654321_987654321');
        VPENota.Print(x+0.0,y+6.9,  spGetLineasPorOrden.FieldByName('strServicio').Text.Substring(0,23));
        VPENota.Print(x+4.4,y+6.9,   '$'+format('%7f',[StrToFloat( StringReplace(StringReplace(spGetLineasPorOrden.FieldByName('dcmPrecio').AsString,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
        VPENota.Print(x+5.8,y+6.9,   '$'+format('%7f',[StrToFloat( StringReplace(StringReplace(spGetLineasPorOrden.FieldByName('dcmMonto').AsString ,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));

        if (spGetLineasPorOrden.FieldByName('idTipoCliente').Value = 2) then begin//Servicio alto consumo
              y := y + 0.4;
              vlbolDesc := true;
        end
        else if StrToFloat( StringReplace(StringReplace(spGetLineasPorOrden.FieldByName('dcmDescuento').AsString,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) > 0 then begin
             y := y + 0.4;
             vlbolDesc := true;
        end;

        if spGetLineasPorOrden.FieldByName('strNota').Text.Length > 0 then
            if spGetLineasPorOrden.FieldByName('strNota').Text.Length >= 41 then begin
                if vlbolDesc then begin
                    y := y - 0.4;
                end;

                VPENota.Print(x+0.5,y+7.2,'-'+spGetLineasPorOrden.FieldByName('strNota').Text.Substring(0,41));
                VPENota.Print(x+0.5,y+7.5,spGetLineasPorOrden.FieldByName('strNota').Text.Substring(41,80));
                y :=y +0.8;
            end
            else begin
                if vlbolDesc then begin
                    y := y - 0.4;
                end;

                VPENota.Print(x+0.5,y+7.2,'-'+spGetLineasPorOrden.FieldByName('strNota').Text);
                y :=y +0.4;
            end;

        spGetLineasPorOrden.Next;
        y := y + 0.4;
        y1:= y1 + 0.25;
        i := i + 1;
        vlbolDesc := false;
    end;

    y := y - 1;

    VPENota.PenSize:=0.03;
    VPENota.Line(x,y+8.1,x+7.7, y+8.1);
    VPENota.SetFont('Courier New',14);
    VPENota.Print(x+0.5,y+8.3,'ORDEN ' + vlintOrden.ToString);

    VPENota.Print(x+0.5,y+9.1,'PRENDAS: '+vlintPrendas.ToString);

    VPENota.SetFont('Courier New',8);

    VPENota.Print(x+4.2,y+8.3 , ' IMPORTE $');
    VPENota.Print(x+6.0,y+8.3,format('%7f',[vldcmImporteSinDesc]));
    VPENota.Print(x+4.2,y+8.75, '   DESC. $');
    VPENota.Print(x+6.0,y+8.75,format('%7f',[vldcmDescuentoTotal]));
       VPENota.Line(x+4,y+9.1,x+7.7, y+9.1);
    VPENota.Print(x+4.2,y+9.16 , '   TOTAL $');
    VPENota.Print(x+6.0,y+9.16 ,format('%7f',[vldcmTotal]));
       VPENota.Line(x+4,y+9.55,x+7.7, y+9.55);
    VPENota.Print(x+4.2,y+9.6 , 'SUBTOTAL $');
    VPENota.Print(x+6.0,y+9.6 ,format('%7f',[(vldcmImporteSinDesc-vldcmDescuentoTotal)/116*100 ]));
    VPENota.Print(x+4.2,y+10.05, '     IVA $');
    VPENota.Print(x+6.0,y+10.05,format('%7f',[vldcmIVA]));
       VPENota.Line(x+4,y+10.4,x+7.7, y+10.4);
    VPENota.Print(x+4.2,y+10.5,'ADELANTO $');
    VPENota.Print(x+6.0,y+10.5,format('%7f',[vldcmAdelanto]));
    VPENota.Print(x+4.2,y+10.95, '     CxC $');
    VPENota.Print(x+6.0,y+10.95,format('%7f',[vldcmPorCobrar]));

    y := y + 0.45;

    VPENota.SetFont('Courier New',8);
    VPENota.PenSize:=0.05;
    VPENota.Box(x+0.2,y+10.9,x+7.0, y+13.2);

    if vldcmPorCobrar = 0 then begin
        VPENota.SetFont('Courier New',50);
        VPENota.Print(x+0.6,y+10.9,'PAGADO');
    end;
    VPENota.SetFont('Courier New',8);
    VPENota.Print(x+0.5,y+13.3,' LA CALIDAD ES NUESTRA RECOMENDACION');

    VPENota.TextBold := false;
    VPENota.SetFont('Bar-Code 39',31);
    VPENota.Print(x+1.8,y+13.6,'*'+vlintOrden.ToString+'*');

    VPENota.SetFont('Courier New',8);
    VPENota.TextBold := true;
    VPENota.Print(x+0.5,y+14.9,'       VISITANOS EN EUGENES.MX');

    y := y + 15.5;
    delta := 0.3;
    VPENota.SetFont('Courier New',7);
    //VPENota.Print(x,y,'123456789_123456789_12345654321_987654321_9876543       21_123456789'); y := y + delta;
    VPENota.Print(x,y,'CONTRATO DE SERVICIOS QUE SE CELEBRA ENTRE EL PRE'); y := y + delta;
    VPENota.Print(x,y,'STADOR DE SERVICIOS Y EL CONSUMIDOR CUYOS NOMBRES'); y := y + delta;
    VPENota.Print(x,y,'Y DATOS CONSTAN AL  FRENTE DE ESTE  DOCUMENTO CO-'); y := y + delta;
    VPENota.Print(x,y,'MO PARTE INTEGRAL DEL MISMO SUJETANDOSE AL TENOR-'); y := y + delta;
    VPENota.Print(x,y,'DE LAS SIGUIENTES CLAUSULAS:                     '); y := y + delta;
    VPENota.Print(x,y,'                 - CLAUSULAS -                   '); y := y + delta;
    VPENota.Print(x,y,'1.-El número de prendas entregadas en el estable-'); y := y + delta;
    VPENota.Print(x,y,'cimiento estarán especificadas en el comprobante '); y := y + delta;
    VPENota.Print(x,y,'emitido, al igual que la fecha de entrega acepta-'); y := y + delta;
    VPENota.Print(x,y,'da por el cliente.                               '); y := y + delta;
    VPENota.Print(x,y,'2.-Si al momento de recoger la(s) prenda(s), el -'); y := y + delta;
    VPENota.Print(x,y,'cliente no presenta este comprobante, deberá pre-'); y := y + delta;
    VPENota.Print(x,y,'sentar alguna identificación oficial que lo acre-'); y := y + delta;
    VPENota.Print(x,y,'dite como propietario.                           '); y := y + delta;
    VPENota.Print(x,y,'3.-Dispondrá el cliente, de un lapso no mayor a -'); y := y + delta;
    VPENota.Print(x,y,'tres días hábiles para cualquier reclamo, con la '); y := y + delta;
    VPENota.Print(x,y,'presentación del comprobante del servicio (este -'); y := y + delta;
    VPENota.Print(x,y,'documento).                                      '); y := y + delta;
    VPENota.Print(x,y,'4.-El establecimiento no se hace responsable por '); y := y + delta;
    VPENota.Print(x,y,'posibles objetos y/o valores olvidados en las pre'); y := y + delta;
    VPENota.Print(x,y,'ndas.                                            '); y := y + delta;
    VPENota.Print(x,y,'5.-El establecimiento no se hace responsable por '); y := y + delta;
    VPENota.Print(x,y,'aquellas prendas que tengan mas de 30 (treinta) -'); y := y + delta;
    VPENota.Print(x,y,'días y que no hayan sido reclamadas por su propie'); y := y + delta;
    VPENota.Print(x,y,'tario, otorgandose de esta forma al establecimien'); y := y + delta;
    VPENota.Print(x,y,'to de manera inmediata la propiedad de la prendas'); y := y + delta;
    VPENota.Print(x,y,'en olvido.                                       '); y := y + delta;
    VPENota.Print(x,y,'6.-El establecimiento no se hace responsable del '); y := y + delta;
    VPENota.Print(x,y,'resultado de la compostura si al momento de la re'); y := y + delta;
    VPENota.Print(x,y,'cepción no se  realizó el proceso de probarse la '); y := y + delta;
    VPENota.Print(x,y,'prenda por el propietario.                       '); y := y + delta;
    VPENota.Print(x,y,'7.-En caso de pérdida total o parcial de la pren-'); y := y + delta;
    VPENota.Print(x,y,'da, el establecimiento reconocerá al propietario '); y := y + delta;
    VPENota.Print(x,y,'hasta un máximo de 3 veces el costo del servicio '); y := y + delta;
    VPENota.Print(x,y,'pactado por la compostura, o hasta el 50% del va-'); y := y + delta;
    VPENota.Print(x,y,'lor de la prenda que las partes de común acuerdo '); y := y + delta;
    VPENota.Print(x,y,'hayan declarado al inicio o en su defecto, el cli'); y := y + delta;
    VPENota.Print(x,y,'ente pueda demostrar con su factura.             '); y := y + delta;
    VPENota.Print(x,y,'8.-Para dirimir o aclarar cualquier controversia '); y := y + delta;
    VPENota.Print(x,y,'las partes se someten a la Ley Federal de Protec-'); y := y + delta;
    VPENota.Print(x,y,'ción al Consumidor.                              '); y := y + delta;
    VPENota.Print(x,y,'                   -------------                 '); y := y + delta;
    VPENota.Print(x,y,'El consumidor dará por aceptadas estas clausulas,'); y := y + delta;
    VPENota.Print(x,y,'en el momento en que se reciba el comprobante de '); y := y + delta;
    VPENota.Print(x,y,'acuse de recibo (este documento).');
    VPENota.Preview;
end;

procedure TfrmOrdenesV2.btnLimpiaTodoClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  limpiarPantalla();
  edTelefono2.SetFocus;
end;

procedure TfrmOrdenesV2.btnLiquidarClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin

  if vldcmAdelanto > 0 then begin
      try
        spDeletePagosXOrden.Close;
        spDeletePagosXOrden.Parameters.ParamByName('@pidOrden').Value := vlintOrden;
        spDeletePagosXOrden.Open;
      except
        On E: Exception do
        begin
          MessageDlg('ERROR AL TRATAR DE BORRAR LOS PAGOS DE LA ORDEN'+#13+'      RUTA: TfrmOrdenesV2.btnLiquidarClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
        end;
      end;
  end;

  vldcmAdelanto     := vldcmTotal;
  vldcmPorCobrar    := 0.0;
  edIngreso.Text    := FormatCurr('##,##0.00',vldcmAdelanto);
  edPorCobrar.Text  := '0.00';

  if vldcmAdelanto <> 0 then begin
    try
      spInsertPagoWithOrden.Close;
      spInsertPagoWithOrden.Parameters.ParamByName('@pidOrden').Value :=    vlintOrden;
      spInsertPagoWithOrden.Parameters.ParamByName('@pdcmImporte').Value := vldcmAdelanto;

      if vgintRetro = 0 then
          spInsertPagoWithOrden.Parameters.ParamByName('@pdteFechaPago').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now())
      else begin
          if DaysBetween(dtpRetro.Date,now()) = 0 then
            spInsertPagoWithOrden.Parameters.ParamByName('@pdteFechaPago').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now())
          else
            spInsertPagoWithOrden.Parameters.ParamByName('@pdteFechaPago').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',dtpRetro.DateTime);
      end;

      spInsertPagoWithOrden.Parameters.ParamByName('@pidTipoPago').Value := 2;
      spInsertPagoWithOrden.Parameters.ParamByName('@pidFormaPago').Value := dblkcFormaPago.KeyValue;
      spInsertPagoWithOrden.Open;
    except
      On E: Exception do
      begin
          MessageDlg('ERROR EN LA INSERCION DE PAGO AL LIQUIDAR:'+#13+'      RUTA: TfrmOrdenesV2.btnLiquidarClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
      end;
    end;
  end;

  try
    spUpdateOrden.Close;
    spUpdateOrden.Parameters.ParamByName('@pidOrden').Value       := vlintOrden;
    if (edFolio.Text = NULL) or (edFolio.Text = '') then
        spUpdateOrden.Parameters.ParamByName('@pintFolioAnt').Value   := 0
    else
        spUpdateOrden.Parameters.ParamByName('@pintFolioAnt').Value   := edFolio.Text;


    if chbxRetro.Checked = true then begin
        spUpdateOrden.Parameters.ParamByName('@pintRetro').Value := 1;
        spUpdateOrden.Parameters.ParamByName('@pdteRecepcion').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',dtpRetro.DateTime);
    end
    else
      spUpdateOrden.Parameters.ParamByName('@pdteRecepcion').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());

    spUpdateOrden.Parameters.ParamByName('@pdteEntrega').Value    := FormatDateTime('yyyy/mm/dd hh:nn:ss',strtodate(edFechaEntrega.Text));
    spUpdateOrden.Parameters.ParamByName('@pdcmImporte').Value  := vldcmImporteSinDesc;
    spUpdateOrden.Parameters.ParamByName('@pdcmDescuento').Value  := vldcmDescuentoTotal;
    spUpdateOrden.Parameters.ParamByName('@pdcmSubtotal').Value   := vldcmImporteSinDesc - vldcmDescuentoTotal - vldcmIVA;
    spUpdateOrden.Parameters.ParamByName('@pdcmIVA').Value        := vldcmIVA;
    spUpdateOrden.Parameters.ParamByName('@pdcmTotal').Value      := vldcmTotal;
    spUpdateOrden.Parameters.ParamByName('@pdcmACuenta').Value    := vldcmAdelanto;
    spUpdateOrden.Parameters.ParamByName('@pdcmPorPagar').Value   := vldcmPorCobrar;
    spUpdateOrden.Parameters.ParamByName('@pintPrendas').Value    := edPrendas.Text;
    spUpdateOrden.Parameters.ParamByName('@pintestatus').Value    := 2;
    spUpdateOrden.Open;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR EN LA ACTUALIZACION DE LA ORDEN AL LIQUIDAR:'+#13+'      RUTA: TfrmOrdenesV2.btnLiquidarClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;

  btnImprimir.Enabled     := true;
  btnLiquidar.Enabled     := false;
  btnGuardaNota.Enabled   := false;
  edFolio.Enabled         := false;
  edFechaEntrega.enabled  := false;
  dblkcFormaPago.Enabled  := false;
  edIngreso.Enabled       := false;
  edFolio.Enabled         := false;
  dtpRetro.Enabled				:= false;
  chbxRetro.Checked       := false;

end;

procedure TfrmOrdenesV2.btnSalirClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  vbNuevo := false;
  vbModificar := false;
  vlintCantidad := 1;
  vldcmImporte := 0.0;
  vldcmImporteSinDesc := 0.0;
  vldcmDescuento := 0.0;
  vldcmsubtotal := 0.0;
  vldcmIVA := 0.0;
  vldcmTotal := 0.0;
  vldcmAdelanto := 0.0;
  vldcmPorCobrar := 0.0;
  vltemCantidad := 0;
  vlintOrden := 0;
  vldcmDescuentoTotal := 0.0;

  try
    conn.Close;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR AL CERRAR LA CONEXION A LA BD'+#13+'      RUTA: TfrmOrdenesV2.btnSalirClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;

  frmOrdenesV2.Close;
end;

procedure TfrmOrdenesV2.btnAgendaClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  Application.CreateForm(TfrmAgenda, frmAgenda);
  frmAgenda.ShowModal;
  frmAgenda.Destroy;
end;

procedure TfrmOrdenesV2.btnMasClick(Sender: TObject);
//Alex Revisado 11/03/23
var
  i:integer;
begin
  i := strtoint(edCantidad.Text);
  i := i + 1;
  edCantidad.Text := inttostr(i);
  calculaImporte();
end;

procedure TfrmOrdenesV2.btnMenosClick(Sender: TObject);
//Revisado Alex 11/03/23
var
  i:integer;
begin
  i := strtoint(edCantidad.Text);
  if i > 1 then
     i := i - 1;
  edCantidad.Text := inttostr(i);
  calculaImporte();
end;

procedure TfrmOrdenesV2.btnBuscar2Click(Sender: TObject);
//Revisado Alex 11/03/23
var
  buttonSelected:Integer;
begin
    buttonSelected := 0;
    try
        spGetClientesCat.Close;
        if edTelefono2.Text <> '' then begin
          spGetClientesCat.Parameters.ParamByName('@pintCampo').Value := 1;
          spGetClientesCat.Parameters.ParamByName('@pstrDato').Value := edTelefono2.Text;
        end
        else if edNombre2.Text <> '' then begin
            spGetClientesCat.Parameters.ParamByName('@pintCampo').Value := 2;
            spGetClientesCat.Parameters.ParamByName('@pstrDato').Value := edNombre2.Text;
        end;
        spGetClientesCat.Open;
    except
      On E: Exception do
      begin
          MessageDlg('ERROR AL OBTENER EL CLIENTE' +#13  +'      RUTA: TfrmOrdenesV2.btnBuscar2Click ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
      end;
    end;

    if spGetClientesCat.RecordCount = 0 then
        buttonSelected := MessageDlg('NO SE ENCONTRO EL CLIENTE'+#13#13+'¿Desea darlo de Alta?',mtConfirmation ,[mbYes,mbNO],0);

    if buttonSelected = mrYes then begin
        DBNavigator1.BtnClick(nbInsert);
        dbeNombre.Text    := UpperCase(edNombre2.Text);
        dbeTelefono.Text  := edTelefono2.Text;
        dbeAlta.Text      := datetostr(now());
    end;

end;

procedure TfrmOrdenesV2.btnAgregarPrendaClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
      //si es la primera vez inserta la orden
      if vlintOrden = 0 then begin

        try
          spInsertOrden.Close;
          spInsertOrden.Parameters.ParamByName('@pidCliente').Value := dbgCliente2.DataSource.DataSet.FieldByName('idCliente').Value;
          spInsertOrden.Parameters.ParamByName('@pidUsuario').Value := vgidUsuario;
          spInsertOrden.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
          //inserta la orden con fecha de hoy si no esta prendida la bandera de Retro = 0
          if vgintRetro = 0 then
              spInsertOrden.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now())
          else begin
              if DaysBetween(dtpRetro.Date,now()) = 0 then
                spInsertOrden.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now())
              else
                spInsertOrden.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',dtpRetro.DateTime)
          end;
          spInsertOrden.Open;
        except
          On E: Exception do
          begin
            MessageDlg('ERROR EN LA INSERCION DE ORDEN :'+#13+'      RUTA: TfrmOrdenesV2.btnAgregarPrendaClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
            exit;
          end;
        end;
        //asigna el valor de la orden a la variable local orden
        vlintOrden := spInsertOrden.FieldByName('NuevaOrden').Value;
        vgUltimaOrden := vlintOrden;
        //despliega el valor en la pantalla
        lblOrden.Caption := inttostr(vlintOrden);
      end;


      try
        //inserta la relacion de orden y prenda
        spInsertOrdenPrenda.Close;
        spInsertOrdenPrenda.Parameters.ParamByName('@pidOrden').Value := vlintOrden;
        spInsertOrdenPrenda.Parameters.ParamByName('@pidPrenda').Value := dbcbxPrenda.KeyValue;
        spInsertOrdenPrenda.Parameters.ParamByName('@pintCantidad').Value := edCantidad.Text;
        spInsertOrdenPrenda.Open;
      except
        On E: Exception do
        begin
          MessageDlg('ERROR EN LA INSERCION DE LA RELACION ORDEN-PRENDA:'+#13+'      RUTA: TfrmOrdenesV2.btnAgregarPrendaClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
        end;
      end;

      //asigna el valor de la ordenprenda a la variable local ordenprenda
      vlintOrdenPrenda := spInsertOrdenPrenda.FieldByName('NuevaOrdenLinea').Value;

      try
        spOrdenPrenda.Close;
        spOrdenPrenda.Parameters.ParamByName('@pidOrden').Value := vlintOrden;
        spOrdenPrenda.Open;
      except
        On E: Exception do
        begin
          MessageDlg('ERROR ACTUALIZACION DEL SP ORDEN-PRENDA:'+#13+'      RUTA: TfrmOrdenesV2.btnAgregarPrendaClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
        end;
      end;

      btnAgregarServicio.Enabled := true;

      vlintPrendas 			:= vlintPrendas + vlintCantidad;
			edPrendas.Text    := inttostr(vlintPrendas);

end;

procedure TfrmOrdenesV2.dbcbxPrendaClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin

  try
    spGetPrecioPorPrenda.Close;
    spGetPrecioPorPrenda.Parameters.ParamByName('@pidPrenda').Value := dbcbxPrenda.KeyValue;
    spGetPrecioPorPrenda.Parameters.ParamByName('@pintActivo').Value := 1;
    spGetPrecioPorPrenda.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
    spGetPrecioPorPrenda.Open;
  except
    On E: Exception do
    begin
      MessageDlg('ERROR EN LA BUSQUEDA DE PRECIOS:'+#13+'      RUTA: TfrmOrdenesV2.dbcbxPrendaClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
      exit
    end;
  end;

end;

procedure TfrmOrdenesV2.dbcbxServicioClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  edPrecio.Text   := FormatCurr('##,##0.00',strtocurr(spGetPrecioPorPrenda.FieldByName('dcmPrecio').Text));
  vlintCantidad := strtoint(edCantidad.Text);
  vldcmImporte := strtofloat(edPrecio.Text) * vlintCantidad;
  edImporte.Text  := floattostr(vldcmImporte);
  lblTipoServ.Caption := spGetPrecioPorPrenda.FieldByName('strTipoServicio').Text;
  calculaImporte();
end;

procedure TfrmOrdenesV2.dbeNombreEnter(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  dbeNombre.Text := edNombre2.Text;
end;

procedure TfrmOrdenesV2.dbeNombreExit(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  dbeNombre.Text:=UpperCase(dbeNombre.Text);
end;

procedure TfrmOrdenesV2.dbgLineaServicioDblClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin

    try
      //Borra los registros de LineaServicio
      spDeleteLineaServicio.Close;
      spDeleteLineaServicio.Parameters.ParamByName('@pid').Value := dbgLineaServicio.DataSource.DataSet.FieldByName('idOrdenPrendaServicio').Value;
      spDeleteLineaServicio.Open;
      //Cierra y reabre el SP para refrescar la pantalla
      spLineaServicio.Close;
      spLineaServicio.Open;
    except
      On E: Exception do
      begin
          MessageDlg('ERROR ELIMINACION DE SERVICIOS DE LA PRENDA:'+#13+'      RUTA: TfrmOrdenesV2.dbgLineaServicioDblClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
          exit;
      end;
    end;
    //Recalcula los totales
    calculaTotalDB();
end;

procedure TfrmOrdenesV2.dbgOrdenPrendaCellClick(Column: TColumn);
//Revisado Alex - 11/03/23
begin

  try
    spGetPrecioPorPrenda.Close;
    spGetPrecioPorPrenda.Parameters.ParamByName('@pidPrenda').Value := dbgOrdenPrenda.DataSource.DataSet.FieldByName('idPrenda').Value;
    spGetPrecioPorPrenda.Parameters.ParamByName('@pintActivo').Value := 1;
    spGetPrecioPorPrenda.Parameters.ParamByName('@pidSucursal').Value := vgintSucursal;
    spGetPrecioPorPrenda.Open;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR AL SELECCIONAR LA PRENDA:'+#13+'      RUTA: TfrmOrdenesV2.dbgOrdenPrendaCellClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;



  if dbgOrdenPrenda.DataSource.DataSet.FieldByName('idOrdenPrenda').Value <> null then begin
      vlintOrdenPrenda      := dbgOrdenPrenda.DataSource.DataSet.FieldByName('idOrdenPrenda').Value;
      dbcbxPrenda.KeyValue  := dbgOrdenPrenda.DataSource.DataSet.FieldByName('idPrenda').Value;
      edCantidad.Text       := dbgOrdenPrenda.DataSource.DataSet.FieldByName('intCantidad').Value
  end
  else
      vlintOrdenPrenda := -1;

  try
    spLineaServicio.Close;
    spLineaServicio.Parameters.ParamByName('@pidOrdenPrenda').Value := vlintOrdenPrenda;
    spLineaServicio.Open;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR AL SELECCIONAR LOS SERVICIOS DE LA PRENDA:'+#13+'      RUTA: TfrmOrdenesV2.dbgOrdenPrendaCellClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;



end;

procedure TfrmOrdenesV2.dbgOrdenPrendaDblClick(Sender: TObject);
//Revisado Alex 11/03/23
begin

  try
    //Borra los registros de OrdenPrenda y de LineaServicio
    spDeleteOrdenPrenda.Close;
    spDeleteOrdenPrenda.Parameters.ParamByName('@pid').Value := dbgOrdenPrenda.DataSource.DataSet.FieldByName('idOrdenPrenda').Value;
    spDeleteOrdenPrenda.Open;
    //Cierra y vuelve a abrir los SP's para refrescar la pantalla
    spOrdenPrenda.Close;
    spOrdenPrenda.Open;
    dbgOrdenPrenda.SetFocus;
    spLineaServicio.Close;
    spLineaServicio.Open;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR ELIMINACION DE PRENDAS DE LA ORDEN:'+#13+'      RUTA: TfrmOrdenesV2.dbgOrdenPrendaDblClick ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;
  //Recalcula Totales
  calculaTotalDB();
end;

procedure TfrmOrdenesV2.dsGetClientesCatDataChange(Sender: TObject; Field: TField);
//Revisado Alex - 11/03/23
begin
  btnAgregarPrenda.Enabled := true;
end;

procedure TfrmOrdenesV2.dsGetPrendasDataChange(Sender: TObject; Field: TField);
begin
  edCantidad.Text := '1';
end;

procedure TfrmOrdenesV2.dsOrdenPrendaDataChange(Sender: TObject;
  Field: TField);
begin

    spLineaServicio.Close;
    spLineaServicio.Parameters.ParamByName('@pidOrdenPrenda').Value := dbgOrdenPrenda.DataSource.DataSet.FieldByName('idOrdenPrenda').Value;
    spLineaServicio.Open;




end;

procedure TfrmOrdenesV2.dtpRetroChange(Sender: TObject);
//Revisado Alex - 11/03/23
begin
    objCalendario.Date := dtpRetro.Date;
end;

procedure TfrmOrdenesV2.edCantidadChange(Sender: TObject);
begin
    //edPrendas.Text := edCantidad.Text;
end;

procedure TfrmOrdenesV2.edCantidadEnter(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  edCantidad.Text := '';
end;

procedure TfrmOrdenesV2.edCantidadExit(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  if edCantidad.Text = '' then
    edCantidad.Text := '1';
  calculaImporte();
end;

procedure TfrmOrdenesV2.edCantidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//Revisado Alex  - 11/03/23
begin
    if key =13 then
        memNotas.SetFocus;
end;

procedure TfrmOrdenesV2.edDescuentoEnter(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  edDescuento.Text := '';
end;

procedure TfrmOrdenesV2.edDescuentoExit(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  if edDescuento.Text = '' then
    edDescuento.Text := '0.00'
  else
    edDescuento.Text := edDescuento.Text + '.00';;

  vldcmDescuento    := strtofloat(StringReplace(edDescuento.Text,',','',[rfReplaceAll]));
  lblPrecio.Caption := FormatCurr('##,##0.00',vldcmImporte - vldcmDescuento);

  calculaImporte();
end;

procedure TfrmOrdenesV2.edDescuentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//Revisado Alex - 11/03/23
begin
    if key = 13 then begin
        memNotas.SetFocus;
      if edDescuento.Text = '' then
        edDescuento.Text := '0.00'
      else
        edDescuento.Text := FormatCurr('##,##0.00',strtofloat(StringReplace(edDescuento.Text,',','',[rfReplaceAll])));

      calculaImporte();
    end;
end;

procedure TfrmOrdenesV2.edIngresoEnter(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  edIngreso.Text := '';
end;

procedure TfrmOrdenesV2.edIngresoExit(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  if edIngreso.Text = '' then
    edIngreso.Text := '0.00'
  else


    edIngreso.Text := FormatCurr('##,##0.00',strtofloat(StringReplace(StringReplace(edIngreso.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])));

  //obtiene el valor de adelanto capturado en pantalla
  vldcmAdelanto := strtofloat(StringReplace(edIngreso.Text,',','',[rfReplaceAll]));
  //Calcúla el monto por cobrar = Total - Adelanto
  vldcmPorCobrar := vldcmTotal - vldcmAdelanto;

  edPorCobrar.Text := FormatCurr('##,##0.00',vldcmPorCobrar);
end;

procedure TfrmOrdenesV2.edIngresoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//Revisado Alex - 11/03/23
begin
    if key = 13 then begin
      if edIngreso.Text = '' then
        edIngreso.Text := '0.00'
      else
        edIngreso.Text := FormatCurr('##,##0.00',strtofloat(edIngreso.Text));

      //obtiene el valor de adelanto capturado en pantalla
      vldcmAdelanto := strtofloat(StringReplace(edIngreso.Text,',','',[rfReplaceAll]));
      //Calcúla el monto por cobrar = Total - Adelanto
      vldcmPorCobrar := vldcmTotal - vldcmAdelanto;

      edPorCobrar.Text := FormatCurr('##,##0.00',vldcmPorCobrar);
    end;

end;

procedure TfrmOrdenesV2.edNombre2Exit(Sender: TObject);
//Revisado Alex 11/03/23
begin
  edNombre2.Text:=UpperCase(edNombre2.Text);
end;

procedure TfrmOrdenesV2.edNombre2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//Revisado Alex - 11/03/23
begin
    if key = 13 then
      btnBuscar2.Click
    else
      edTelefono2.Text := '';
end;

procedure TfrmOrdenesV2.edPrecioEnter(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  edPrecio.Text := '';
end;

procedure TfrmOrdenesV2.edPrecioExit(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  if edPrecio.Text = '' then
    edPrecio.Text := '0.00'
  else

    edPrecio.Text := FormatCurr('##,##0.00',strtofloat(StringReplace(edPrecio.Text,',','',[rfReplaceAll])));

  calculaImporte();
end;

procedure TfrmOrdenesV2.edPrecioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//Revisado Alex - 11/03/23
begin
    if key = 13 then begin
      memNotas.SetFocus;

      if edPrecio.Text = '' then
        edPrecio.Text := '0.00'
      else
      //StringReplace(,',','',[rfReplaceAll]),'$','',[rfReplaceAll]
        edPrecio.Text := FormatCurr('##,##0.00',strtofloat(StringReplace(StringReplace(edPrecio.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])));

      calculaImporte();

    end;
end;

procedure TfrmOrdenesV2.edPrendasEnter(Sender: TObject);
begin
    edPrendas.SelectAll;
end;

procedure TfrmOrdenesV2.edPrendasExit(Sender: TObject);
begin
		vlintPrendas := strtoint(edPrendas.Text);
end;

procedure TfrmOrdenesV2.edTelefono2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//Revisado Alex - 11/03/23
begin
    if key = 13 then
      btnBuscar2.Click
    else
      edNombre2.Text := '';
end;

procedure TfrmOrdenesV2.FormClose(Sender: TObject; var Action: TCloseAction);
//Revisado Alex - 11/03/23
begin

  try
    limpiarPantalla();
  except
    On E: Exception do
    begin
        MessageDlg('ERROR AL CERRAR LA PANTALLA'+#13+'      RUTA: TfrmOrdenesV2.FormClose ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;

end;

procedure TfrmOrdenesV2.FormCreate(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  //Asigna la cadena de conexion de la configuración
  try
    //Conn.Close;
    if vgIesPROD = 1 then
      Conn.ConnectionString := vgCadenaConexion
    else
      Conn.ConnectionString := vgCadenaConexionDes;
    Conn.Open;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR EN LA CONEXION A LA BASE DE DATOS:'+#13+  '--- VERIFICA EL ACCESO A INTERNET ---' +#13  +'      RUTA: TfrmOrdenesV2.FormCreate ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;

  //abre los combos con datos
  try
    spGetPrendas.Close;
    spGetPrendas.Open;
    spFormaPago.Close;
    spFormaPago.Open;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR EN LA APERTURA DE SP''s PARA COMBOS DE DATOS' +#13  +'      RUTA: TfrmOrdenesV2.FormCreate ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        exit;
    end;
  end;

  //inicializa la forma de pago en "Efectivo"
  dblkcFormaPago.KeyValue := 1;

  objCalendario.Date := now();
  dtpRetro.Date := now();

//  //si Retro es 1 habilita el dtpRetro (datetimepicker)
//  if vgintRetro = 1 then begin
//    dtpRetro.Enabled := true;
//    dtpRetro.Date := now();
//  end
//  else
//    dtpRetro.Enabled := false;

  //si es DESA/STAGE setea los campos para consulta rapida
  if (vgIAmbiente = 0) or (vgIAmbiente = -1) or (GodMode = 1) then begin
    edTelefono2.Text := '5535744847';
    btnBuscar2.Click;
  end;


end;

procedure TfrmOrdenesV2.memNotasExit(Sender: TObject);
//Revisado Alex - 11/03/23
begin
  memNotas.Text:=UpperCase(memNotas.Text);
end;

procedure TfrmOrdenesV2.memNotasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//Revisado Alex - 11/03/23
begin
    if key = 13 then
        btnAgregarServicio.SetFocus;
end;

procedure TfrmOrdenesV2.objCalendarioClick(Sender: TObject);
//Revisado Alex - 11/03/23
begin
    edFechaEntrega.Text:=DateToStr(objCalendario.Date);
end;

end.
