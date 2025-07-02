unit ReportesUsuario;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, DateUtils,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Globales;
type
  TfrmReportesUsuario = class(TForm)
    dtpCalendario: TDateTimePicker;
    btnAtras: TButton;
    btnAdelante: TButton;
    btnConsultar: TButton;
    Conn: TADOConnection;
    spVentasXDia: TADOStoredProc;
    spVentasXDiaDet: TADOStoredProc;
    dsVentasXDiaDet: TDataSource;
    dsVentasXDia: TDataSource;
    spVentasXSem: TADOStoredProc;
    dsVentasXSem: TDataSource;
    tcViewers: TTabControl;
    spVentasXSemDet: TADOStoredProc;
    dsVentasXSemDet: TDataSource;
    pnlVentas: TPanel;
    dbgVentas: TDBGrid;
    dbfCxC: TDBText;
    Label17: TLabel;
    dbfAdelanto: TDBText;
    Label16: TLabel;
    dbfTotal: TDBText;
    Label15: TLabel;
    dbfIVA: TDBText;
    Label14: TLabel;
    dbfDesc: TDBText;
    Label13: TLabel;
    dbfImporte: TDBText;
    Label12: TLabel;
    pnlVtasCerr: TPanel;
    spVentasCerradasDia: TADOStoredProc;
    dsVentasCerradasDia: TDataSource;
    dbgVtasCerr: TDBGrid;
    spVentasCerradasDiaDet: TADOStoredProc;
    dsVentasCerradasDiaDet: TDataSource;
    pnlAdelantos: TPanel;
    spAdelantosDia: TADOStoredProc;
    spAdelantosDiaDet: TADOStoredProc;
    dsAdelantosDia: TDataSource;
    dsAdelantosDiaDet: TDataSource;
    dbgAdelantos: TDBGrid;
    Label18: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    spLiquidacionesDia: TADOStoredProc;
    spLiquidacionesDiaDet: TADOStoredProc;
    dsLiquidacionesDia: TDataSource;
    dsLiquidacionesDiaDet: TDataSource;
    spOtrosPagosDia: TADOStoredProc;
    spOtrosPagosDiaDet: TADOStoredProc;
    spPagosDia: TADOStoredProc;
    spPagosDiaDet: TADOStoredProc;
    dsOtrosPagosDia: TDataSource;
    dsOtrosPagosDiaDet: TDataSource;
    dsPagosDia: TDataSource;
    dsPagosDiaDet: TDataSource;
    spGastosDia: TADOStoredProc;
    spGastosDiaDet: TADOStoredProc;
    dsGastosDia: TDataSource;
    dsGastosDiaDet: TDataSource;
    pnlLiquidaciones: TPanel;
    dbgLiquidaciones: TDBGrid;
    Label23: TLabel;
    pnlPagos: TPanel;
    dbgPagos: TDBGrid;
    Label24: TLabel;
    pnlOtrosPagos: TPanel;
    dbgOtrosPagos: TDBGrid;
    Label25: TLabel;
    pnlGastos: TPanel;
    dbgGastos: TDBGrid;
    Label26: TLabel;
    spVtasCerrSem: TADOStoredProc;
    spVtasCerrSemDet: TADOStoredProc;
    spAdelantosSem: TADOStoredProc;
    spAdelantosSemDet: TADOStoredProc;
    spLiquidacionesSemDet: TADOStoredProc;
    spPagosSem: TADOStoredProc;
    spPagosSemDet: TADOStoredProc;
    spOtrosPagosSem: TADOStoredProc;
    spOtrosPagosSemDet: TADOStoredProc;
    spGastosSem: TADOStoredProc;
    spGastosSemDet: TADOStoredProc;
    dsVtasCerrSem: TDataSource;
    dsVtasCerrSemDet: TDataSource;
    dsAdelantosSem: TDataSource;
    dsAdelantosSemDet: TDataSource;
    dsLiquidacionesSem: TDataSource;
    dsLiquidacionesSemDet: TDataSource;
    dsPagosSem: TDataSource;
    dsPagosSemDet: TDataSource;
    dsOtrosPagosSem: TDataSource;
    dsOtrosPagosSemDet: TDataSource;
    dsGastosSem: TDataSource;
    dsGastosSemDet: TDataSource;
    pnlResumen: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    dbfOrdenesDia: TDBText;
    dbfOrdenesSem: TDBText;
    edCxCDia: TEdit;
    edIngresoVentasDia: TEdit;
    edUtilidadDia: TEdit;
    cbxDia: TCheckBox;
    edCxCSem: TEdit;
    edIngresoVentasSem: TEdit;
    edUtilidadSem: TEdit;
    cbxSem: TCheckBox;
    dbeVentasDia: TDBEdit;
    dbeDescDia: TDBEdit;
    dbeIVADia: TDBEdit;
    dbeVtasCerrDia: TDBEdit;
    dbeTotalDia: TDBEdit;
    dbeLiquidacionesDia: TDBEdit;
    dbeAdelantosDia: TDBEdit;
    dbePagosDia: TDBEdit;
    dbeOtrosPagosDia: TDBEdit;
    dbeGastosDia: TDBEdit;
    dbeVentasSem: TDBEdit;
    dbeDescSem: TDBEdit;
    dbeIVASem: TDBEdit;
    dbeTotalSem: TDBEdit;
    dbeVtaCerrSem: TDBEdit;
    dbeAdelantosSem: TDBEdit;
    dbeLiquidacionesSem: TDBEdit;
    dbeOtrosPagosSem: TDBEdit;
    dbePagosSem: TDBEdit;
    dbeGastosSem: TDBEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    pnlSemanaDetalle: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    dbeVentasDiaLunes: TDBEdit;
    dbeDescDiaLunes: TDBEdit;
    dbeIVADiaLunes: TDBEdit;
    dbeTotalDiaLunes: TDBEdit;
    edCxCDiaLunes: TEdit;
    dbeVtasCerrDiaLunes: TDBEdit;
    edIngresoVentasDiaLunes: TEdit;
    dbeLiquDiaLunes: TDBEdit;
    dbeOtrPagosDiaLunes: TDBEdit;
    dbeIngresoTotalDiaLunes: TDBEdit;
    dbeGastosDiaLunes: TDBEdit;
    edUtilidadDiaLunes: TEdit;
    Label40: TLabel;
    dbeVentasDiaMartes: TDBEdit;
    dbeDescDiaMartes: TDBEdit;
    dbeIVADiaMartes: TDBEdit;
    dbeTotalDiaMartes: TDBEdit;
    edCxCDiaMartes: TEdit;
    dbeVtasCerrDiaMartes: TDBEdit;
    edIngresoVentasDiaMartes: TEdit;
    dbeLiquDiaMartes: TDBEdit;
    dbeOtrPagosDiaMartes: TDBEdit;
    dbeIngresoTotalDiaMartes: TDBEdit;
    dbeGastosDiaMartes: TDBEdit;
    edUtilidadDiaMartes: TEdit;
    Label41: TLabel;
    edUtilidadDiaMierc: TEdit;
    Label42: TLabel;
    dbeGastosDiaMierc: TDBEdit;
    dbeIngresoTotalDiaMierc: TDBEdit;
    dbeOtrPagosDiaMierc: TDBEdit;
    dbeLiquDiaMierc: TDBEdit;
    edIngresoVentasDiaMierc: TEdit;
    dbeVtasCerrDiaMierc: TDBEdit;
    edCxCDiaMierc: TEdit;
    dbeTotalDiaMierc: TDBEdit;
    dbeIVADiaMierc: TDBEdit;
    dbeDescDiaMierc: TDBEdit;
    dbeVentasDiaMierc: TDBEdit;
    edUtilidadDiaJueves: TEdit;
    Label43: TLabel;
    dbeGastosDiaJueves: TDBEdit;
    dbeIngresoTotalDiaJueves: TDBEdit;
    dbeOtrPagosDiaJueves: TDBEdit;
    dbeLiquDiaJueves: TDBEdit;
    edIngresoVentasDiaJueves: TEdit;
    dbeVtasCerrDiaJueves: TDBEdit;
    edCxCDiaJueves: TEdit;
    dbeTotalDiaJueves: TDBEdit;
    dbeIVADiaJueves: TDBEdit;
    dbeDescDiaJueves: TDBEdit;
    dbeVentasDiaJueves: TDBEdit;
    edUtilidadDiaViernes: TEdit;
    Label44: TLabel;
    dbeGastosDiaViernes: TDBEdit;
    dbeIngresoTotalDiaViernes: TDBEdit;
    dbeOtrPagosDiaViernes: TDBEdit;
    dbeLiquDiaViernes: TDBEdit;
    edIngresoVentasDiaViernes: TEdit;
    dbeVtasCerrDiaViernes: TDBEdit;
    edCxCDiaViernes: TEdit;
    dbeTotalDiaViernes: TDBEdit;
    dbeIVADiaViernes: TDBEdit;
    dbeDescDiaViernes: TDBEdit;
    dbeVentasDiaViernes: TDBEdit;
    edUtilidadDiaSabado: TEdit;
    Label45: TLabel;
    dbeGastosDiaSabado: TDBEdit;
    dbeIngresoTotalDiaSabado: TDBEdit;
    dbeOtrPagosDiaSabado: TDBEdit;
    dbeLiquDiaSabado: TDBEdit;
    edIngresoVentasDiaSabado: TEdit;
    dbeVtasCerrDiaSabado: TDBEdit;
    edCxCDiaSabado: TEdit;
    dbeTotalDiaSabado: TDBEdit;
    dbeIVADiaSabado: TDBEdit;
    dbeDescDiaSabado: TDBEdit;
    dbeVentasDiaSabado: TDBEdit;
    dbeAdelDiaLunes: TDBEdit;
    dbeAdelDiaMartes: TDBEdit;
    dbeAdelDiaMierc: TDBEdit;
    dbeAdelDiaJueves: TDBEdit;
    dbeAdelDiaViernes: TDBEdit;
    dbeAdelDiaSabado: TDBEdit;
    edUtilidadDiaWeek: TEdit;
    Label46: TLabel;
    dbeGastosDiaWeek: TDBEdit;
    dbeIngresoTotalDiaWeek: TDBEdit;
    dbeOtrPagosDiaWeek: TDBEdit;
    dbeLiquDiaWeek: TDBEdit;
    edIngresoVentasDiaWeek: TEdit;
    dbeVtasCerrDiaWeek: TDBEdit;
    edCxCDiaWeek: TEdit;
    dbeTotalDiaWeek: TDBEdit;
    dbeIVADiaWeek: TDBEdit;
    dbeDescWeek: TDBEdit;
    dbeVentasWeek: TDBEdit;
    dbeAdelDiaWeek: TDBEdit;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    spVentasDiaLunes: TADOStoredProc;
    dsVentasDiaLunes: TDataSource;
    spVtasCerrDiaLunes: TADOStoredProc;
    dsVtasCerrDiaLunes: TDataSource;
    spAdelDiaLunes: TADOStoredProc;
    dsAdelDiaLunes: TDataSource;
    spLiquDialunes: TADOStoredProc;
    dsLiquDialunes: TDataSource;
    spPagosDiaLunes: TADOStoredProc;
    dsPagosDiaLunes: TDataSource;
    spOtrPagosDiaLunes: TADOStoredProc;
    dsOtrPagosDiaLunes: TDataSource;
    spGastosDiaLunes: TADOStoredProc;
    dsGastosDiaLunes: TDataSource;
    spVentasDiaMartes: TADOStoredProc;
    dsVentasDiaMartes: TDataSource;
    spVtasCerrDiaMartes: TADOStoredProc;
    dsVtasCerrDiaMartes: TDataSource;
    spAdelDiaMartes: TADOStoredProc;
    dsAdelDiaMartes: TDataSource;
    spLiquDiaMartes: TADOStoredProc;
    dsLiquDiaMartes: TDataSource;
    spPagosDiaMartes: TADOStoredProc;
    dsPagosDiaMartes: TDataSource;
    spOtrPagosDiaMartes: TADOStoredProc;
    dsOtrPagosDiaMartes: TDataSource;
    spGastosDiaMartes: TADOStoredProc;
    dsGastosDiaMartes: TDataSource;
    spVentasDiaMierc: TADOStoredProc;
    dsVentasDiaMierc: TDataSource;
    spVtasCerrDiaMierc: TADOStoredProc;
    dsVtasCerrDiaMierc: TDataSource;
    spAdelDiaMierc: TADOStoredProc;
    dsAdelDiaMierc: TDataSource;
    spLiquDiaMierc: TADOStoredProc;
    dsLiquDiaMierc: TDataSource;
    spPagosDiaMierc: TADOStoredProc;
    dsPagosDiaMierc: TDataSource;
    spOtrPagosDiaMierc: TADOStoredProc;
    dsOtrPagosDiaMierc: TDataSource;
    spGastosDiaMierc: TADOStoredProc;
    dsGastosDiaMierc: TDataSource;
    spVentasDiaJueves: TADOStoredProc;
    dsVentasDiaJueves: TDataSource;
    spVtasCerrDiaJueves: TADOStoredProc;
    dsVtasCerrDiaJueves: TDataSource;
    spAdelDiaJueves: TADOStoredProc;
    dsAdelDiaJueves: TDataSource;
    spLiquDiaJueves: TADOStoredProc;
    dsLiquDiaJueves: TDataSource;
    spPagosDiaJueves: TADOStoredProc;
    dsPagosDiaJueves: TDataSource;
    spOtrPagosDiaJueves: TADOStoredProc;
    dsOtrPagosDiaJueves: TDataSource;
    spGastosDiaJueves: TADOStoredProc;
    dsGastosDiaJueves: TDataSource;
    spVentasDiaViernes: TADOStoredProc;
    dsVentasDiaViernes: TDataSource;
    spVtasCerrDiaViernes: TADOStoredProc;
    dsVtasCerrDiaViernes: TDataSource;
    spAdelDiaViernes: TADOStoredProc;
    dsAdelDiaViernes: TDataSource;
    spLiquDiaViernes: TADOStoredProc;
    dsLiquDiaViernes: TDataSource;
    spPagosDiaViernes: TADOStoredProc;
    dsPagosDiaViernes: TDataSource;
    spOtrPagosDiaViernes: TADOStoredProc;
    dsOtrPagosDiaViernes: TDataSource;
    spGastosDiaViernes: TADOStoredProc;
    dsGastosDiaViernes: TDataSource;
    spVentasDiaSabado: TADOStoredProc;
    dsVentasDiaSabado: TDataSource;
    spVtasCerrDiaSabado: TADOStoredProc;
    dsVtasCerrDiaSabado: TDataSource;
    spAdelDiaSabado: TADOStoredProc;
    dsAdelDiaSabado: TDataSource;
    spLiquDiaSabado: TADOStoredProc;
    dsLiquDiaSabado: TDataSource;
    spPagosDiaSabado: TADOStoredProc;
    dsPagosDiaSabado: TDataSource;
    spOtrPagosDiaSabado: TADOStoredProc;
    dsOtrPagosDiaSabado: TDataSource;
    spGastosDiaSabado: TADOStoredProc;
    dsGastosDiaSabado: TDataSource;
    lblLunes: TLabel;
    lblMiercoles: TLabel;
    lblJueves: TLabel;
    lblViernes: TLabel;
    lblSabado: TLabel;
    lblMartes: TLabel;
    Shape11: TShape;
    Label48: TLabel;
    dbeCxcDiaLunes: TDBEdit;
    dbeCxcDiaMartes: TDBEdit;
    dbeCxcDiaMierc: TDBEdit;
    dbeCxcDiaJueves: TDBEdit;
    dbeCxcDiaViernes: TDBEdit;
    dbeCxcDiaSabado: TDBEdit;
    dbeCxcDiaWeek: TDBEdit;
    dbeCxCDia: TDBEdit;
    Label49: TLabel;
    dbeCxCSem: TDBEdit;
    Shape12: TShape;
    spLiquidacionesSem: TADOStoredProc;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    dblkcSucursales: TDBLookupComboBox;
    Label47: TLabel;
    dbeTranXdia: TDBEdit;
    Label50: TLabel;
    Label55: TLabel;
    dbeTransSem: TDBEdit;
    spTransXDia: TADOStoredProc;
    dsTransXDia: TDataSource;
    edEfectDia: TEdit;
    spTransSem: TADOStoredProc;
    dsTransSem: TDataSource;
    edEfectSem: TEdit;
    Shape13: TShape;
    Label57: TLabel;
    dbeTintoDia: TDBEdit;
    dbeTintoSem: TDBEdit;
    dsTintoDia: TDataSource;
    dsTintoSem: TDataSource;
    spTintoDia: TADOStoredProc;
    spTintoSem: TADOStoredProc;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnAtrasClick(Sender: TObject);
    procedure btnAdelanteClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure cbxDiaClick(Sender: TObject);
    procedure cbxSemClick(Sender: TObject);
    procedure tcViewersChange(Sender: TObject);

    procedure rgAlcanceClick(Sender: TObject);
    procedure dblkcSucursalesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmReportesUsuario: TfrmReportesUsuario;
  vldteFecha: TDate;
  vlintAlcance: integer;
implementation
{$R *.dfm}
procedure TfrmReportesUsuario.btnAdelanteClick(Sender: TObject);
begin
    vldteFecha := vldteFecha + 1;
    dtpCalendario.Date := vldteFecha;
    btnConsultar.Click;
end;
procedure TfrmReportesUsuario.btnAtrasClick(Sender: TObject);
begin
    vldteFecha := vldteFecha - 1;
    dtpCalendario.Date := vldteFecha;
    btnConsultar.Click;
end;
procedure TfrmReportesUsuario.btnConsultarClick(Sender: TObject);
var
    vldcmVentasDia  , vldcmIVADia   , vldcmTotalDia , vldcmAdelantosDia , vldcmVtasCerrDia  , vldcmPagosDia , vldcmGastosDia  : Double;
    vldcmVentasSem  , vldcmIVASem   , vldcmTotalSem , vldcmAdelantosSem , vldcmVtasCerrSem  , vldcmPagosSem , vldcmGastosSem  : Double;
    vldcmVentasMes  , vldcmIVAMes   , vldcmTotalMes , vldcmAdelantosMes , vldcmVtasCerrMes  , vldcmPagosMes , vldcmGastosMes  : Double;
    vldcmVentasYear ,  vldcmIVAYear , vldcmTotalYear, vldcmAdelantosYear, vldcmVtasCerrYear , vldcmPagosYear, vldcmGastosYear : Double;
    vldcmVentasDiaLunes   , vldcmIVADiaLunes    , vldcmTotalDiaLunes    , vldcmAdelantosDiaLunes    , vldcmVtasCerrDiaLunes   , vldcmPagosDiaLunes    , vldcmGastosDiaLunes   : Double;
    vldcmVentasDiaMartes  , vldcmIVADiaMartes   , vldcmTotalDiaMartes   , vldcmAdelantosDiaMartes   , vldcmVtasCerrDiaMartes  , vldcmPagosDiaMartes   , vldcmGastosDiaMartes  : Double;
    vldcmVentasDiaMierc   , vldcmIVADiaMierc    , vldcmTotalDiaMierc    , vldcmAdelantosDiaMierc    , vldcmVtasCerrDiaMierc   , vldcmPagosDiaMierc    , vldcmGastosDiaMierc   : Double;
    vldcmVentasDiaJueves  , vldcmIVADiaJueves   , vldcmTotalDiaJueves   , vldcmAdelantosDiaJueves   , vldcmVtasCerrDiaJueves  , vldcmPagosDiaJueves   , vldcmGastosDiaJueves  : Double;
    vldcmVentasDiaViernes , vldcmIVADiaViernes  , vldcmTotalDiaViernes  , vldcmAdelantosDiaViernes  , vldcmVtasCerrDiaViernes , vldcmPagosDiaViernes  , vldcmGastosDiaViernes : Double;
    vldcmVentasDiaSabado  , vldcmIVADiaSabado   , vldcmTotalDiaSabado   , vldcmAdelantosDiaSabado   , vldcmVtasCerrDiaSabado  , vldcmPagosDiaSabado   , vldcmGastosDiaSabado  : Double;
    vldcmVentasDiaWeek    , vldcmIVADiaWeek     , vldcmTotalDiaWeek     , vldcmAdelantosDiaWeek     , vldcmVtasCerrDiaWeek    , vldcmPagosDiaWeek     , vldcmGastosDiaWeek    : Double;
    vlintDia,i: Integer;
    vlintDiaSemana: Integer;
    vldcmTransDia, vldcmTransSem, vldcmTransMes, vldcmTransYear: Double;
    vldcmTintoDia, vldcmTintoSem, vldcmTintoMes, vldcmTintoYear: Double;
begin
    vldteFecha := dtpCalendario.Date;
    vlintDia := DayOfWeek(vldteFecha);
    //vlintAlcance := rgAlcance.ItemIndex;
    if dblkcSucursales.KeyValue = null then
        vlintAlcance := 0
    else
        vlintAlcance := dblkcSucursales.KeyValue;
    //Inicializacion de Variables
    vldcmVentasDia := 0.0;
    vldcmVentasSem := 0.0;
    vldcmTransDia := 0.0;
    vldcmTransSem := 0.0;
    vldcmTransMes := 0.0;
    vldcmTransYear := 0.0;
    vldcmTintoDia := 0.0;
    vldcmTintoSem := 0.0;
    vldcmTintoMes := 0.0;
    vldcmTintoYear := 0.0;

    //Abre y Cierra SP's
    //********************************** DIA **********************************//
    spVentasXDia.Close;
    spVentasXDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasXDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXDia.Open;
    spVentasXDiaDet.Close;
    spVentasXDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasXDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXDiaDet.Open;
    spVentasCerradasDia.Close;
    spVentasCerradasDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasCerradasDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasCerradasDia.Open;
    spVentasCerradasDiaDet.Close;
    spVentasCerradasDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasCerradasDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasCerradasDiaDet.Open;
    spAdelantosDia.Close;
    spAdelantosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spAdelantosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosDia.Open;
    spAdelantosDiaDet.Close;
    spAdelantosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spAdelantosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosDiaDet.Open;
    spLiquidacionesDia.Close;
    spLiquidacionesDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spLiquidacionesDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesDia.Open;
    spLiquidacionesDiaDet.Close;
    spLiquidacionesDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spLiquidacionesDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesDiaDet.Open;
    spPagosDia.Close;
    spPagosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spPagosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDia.Open;
    spPagosDiaDet.Close;
    spPagosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spPagosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaDet.Open;
    spOtrosPagosDia.Close;
    spOtrosPagosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spOtrosPagosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosDia.Open;
    spOtrosPagosDiaDet.Close;
    spOtrosPagosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spOtrosPagosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosDiaDet.Open;
    spGastosDia.Close;
    spGastosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGastosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDia.Open;
    spGastosDiaDet.Close;
    spGastosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGastosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaDet.Open;

    spTransXDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spTransXDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransXDia.Open;

    spTintoDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spTintoDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTintoDia.Open;
    //********************************** SEMANA **********************************//
    spVentasXSem.Close;
    spVentasXSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVentasXSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVentasXSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXSem.Open;
    spVentasXSemDet.Close;
    spVentasXSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVentasXSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVentasXSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXSemDet.Open;
    spVtasCerrSem.Close;
    spVtasCerrSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVtasCerrSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVtasCerrSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrSem.Open;
    spVtasCerrSemDet.Close;
    spVtasCerrSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVtasCerrSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVtasCerrSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrSemDet.Open;
    spAdelantosSem.Close;
    spAdelantosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spAdelantosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spAdelantosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosSem.Open;
    spAdelantosSemDet.Close;
    spAdelantosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spAdelantosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spAdelantosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosSemDet.Open;
    spLiquidacionesSem.Close;
    spLiquidacionesSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spLiquidacionesSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spLiquidacionesSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesSem.Open;
    spLiquidacionesSemDet.Close;
    spLiquidacionesSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spLiquidacionesSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spLiquidacionesSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesSemDet.Open;
    spPagosSem.Close;
    spPagosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spPagosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spPagosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosSem.Open;
    spPagosSemDet.Close;
    spPagosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spPagosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spPagosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosSemDet.Open;
    spOtrosPagosSem.Close;
    spOtrosPagosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spOtrosPagosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spOtrosPagosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosSem.Open;
    spOtrosPagosSemDet.Close;
    spOtrosPagosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spOtrosPagosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spOtrosPagosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosSemDet.Open;
    spGastosSem.Close;
    spGastosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spGastosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spGastosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosSem.Open;
    spGastosSemDet.Close;
    spGastosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spGastosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spGastosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosSemDet.Open;

    spTransSem.Close;
    spTransSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spTransSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spTransSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransSem.Open;

    spTintoSem.Close;
    spTintoSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spTintoSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spTintoSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTintoSem.Open;



    //------------------------- Inicializa campos nulos con 0.00 -----------------------------//
    //----------------------------------- DIA ------------------------------------------------//
    if dbeTotalDia.Text <> '' then
        vldcmTotalDia := strtofloat(StringReplace(StringReplace(dbeTotalDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDia := 0;
        dbeTotalDia.Text := '$0.00';
    end;
    if dbeAdelantosDia.Text <> '' then
        vldcmAdelantosDia := strtofloat(StringReplace(StringReplace(dbeAdelantosDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDia := 0;
        dbeAdelantosDia.Text := '$0.00';
    end;
    if dbeVtasCerrDia.Text <> '' then
        vldcmVtasCerrDia := strtofloat(StringReplace(StringReplace(dbeVtasCerrDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDia := 0;
        dbeVtasCerrDia.Text := '$0.00';
    end;
    if dbeGastosDia.Text <> '' then
        vldcmGastosDia := strtofloat(StringReplace(StringReplace(dbeGastosDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDia := 0;
        dbeGastosDia.Text := '$0.00';
    end;
    if dbePagosDia.Text <> '' then
        vldcmPagosDia := strtofloat(StringReplace(StringReplace(dbePagosDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDia := 0;
        dbePagosDia.Text := '$0.00';
    end;

    if dbeTranXdia.Text <> '' then
        vldcmTransDia := strtofloat(StringReplace(StringReplace(dbeTranXdia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTransDia := 0;
        dbeTranXDia.Text := '$0.00';
    end;

    if dbeTintoDia.Text <> '' then
        vldcmTintoDia := strtofloat(StringReplace(StringReplace(dbeTintoDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTintoDia := 0;
        dbeTintoDia.Text := '$0.00';
    end;


    edCxCDia.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDia - vldcmAdelantosDia - vldcmVtasCerrDia);
    edIngresoVentasDia.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDia + vldcmVtasCerrDia);
    edUtilidadDia.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDia - vldcmGastosDia);
    edEfectDia.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDia - vldcmGastosDia - vldcmTransDia - vldcmTintoDia );

    if dbeVentasDia.Text = '' then
        dbeVentasDia.Text := '$0.00';
    if dbeDescDia.Text = '' then
        dbeDescDia.Text := '$0.00';
    if dbeIVADia.Text = '' then
        dbeIVADia.Text := '$0.00';
    if dbeLiquidacionesDia.Text = '' then
        dbeLiquidacionesDia.Text := '$0.00';
    if dbeOtrosPagosDia.Text = '' then
        dbeOtrosPagosDia.Text := '$0.00';
    if dbeCxCDia.Text = '' then
        dbeCxCDia.Text := '$0.00';

    vldcmVentasDia := strtofloat(StringReplace(StringReplace(dbeVentasDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]));

    //----------------------------------- SEM ------------------------------------------------//
    if dbeTotalSem.Text <> '' then
        vldcmTotalSem := strtofloat(StringReplace(StringReplace(dbeTotalSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalSem := 0;
        dbeTotalSem.Text := '$0.00';
    end;
    if dbeAdelantosSem.Text <> '' then
        vldcmAdelantosSem := strtofloat(StringReplace(StringReplace(dbeAdelantosSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosSem := 0;
        dbeAdelantosSem.Text := '$0.00';
    end;
    if dbeVtaCerrSem.Text <> '' then
        vldcmVtasCerrSem := strtofloat(StringReplace(StringReplace(dbeVtaCerrSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrSem := 0;
        dbeVtaCerrSem.Text := '$0.00';
    end;
    if dbeGastosSem.Text <> '' then
        vldcmGastosSem := strtofloat(StringReplace(StringReplace(dbeGastosSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosSem := 0;
        dbeGastosSem.Text := '$0.00';
    end;
    if dbePagosSem.Text <> '' then
        vldcmPagosSem := strtofloat(StringReplace(StringReplace(dbePagosSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosSem := 0;
        dbePagosSem.Text := '$0.00';
    end;

    if dbeTransSem.Text <> '' then
        vldcmTransSem := strtofloat(StringReplace(StringReplace(dbeTransSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTransSem := 0;
        dbeTransSem.Text := '$0.00';
    end;

    if dbeTintoSem.Text <> '' then
        vldcmTintoSem := strtofloat(StringReplace(StringReplace(dbeTintoSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTintoSem := 0;
        dbeTintoSem.Text := '$0.00';
    end;

    edCxCSem.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalSem - vldcmAdelantosSem - vldcmVtasCerrSem);
    edIngresoVentasSem.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosSem + vldcmVtasCerrSem);
    edUtilidadSem.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosSem - vldcmGastosSem);
    edEfectSem.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosSem - vldcmGastosSem - vldcmTransSem - vldcmTintoSem);

    if dbeVentasSem.Text = '' then
        dbeVentasSem.Text := '$0.00';
    if dbeDescSem.Text = '' then
        dbeDescSem.Text := '$0.00';
    if dbeIVASem.Text = '' then
        dbeIVASem.Text := '$0.00';
    if dbeLiquidacionesSem.Text = '' then
        dbeLiquidacionesSem.Text := '$0.00';
    if dbeOtrosPagosSem.Text = '' then
        dbeOtrosPagosSem.Text := '$0.00';
    if dbeCxCSem.Text = '' then
        dbeCxCSem.Text := '$0.00';
    vldcmVentasSem := strtofloat(StringReplace(StringReplace(dbeVentasSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]));



    vldteFecha := dtpCalendario.Date;
    vlintDiaSemana := DayOfWeek(vldteFecha);

    i := 2;
    lblLunes.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
    spVentasDiaLunes.Close;
    spVentasDiaLunes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVentasDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasDiaLunes.Open;
    spVtasCerrDiaLunes.Close;
    spVtasCerrDiaLunes.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVtasCerrDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrDiaLunes.Open;
    spAdelDiaLunes.Close;
    spAdelDiaLunes.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelDiaLunes.Open;
    spLiquDiaLunes.Close;
    spLiquDiaLunes.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spLiquDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquDiaLunes.Open;
    spPagosDiaLunes.Close;
    spPagosDiaLunes.Parameters.ParamByName('@pdteDia').Value    := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spPagosDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaLunes.Open;
    spOtrPagosDiaLunes.Close;
    spOtrPagosDiaLunes.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spOtrPagosDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrPagosDiaLunes.Open;
    spGastosDiaLunes.Close;
    spGastosDiaLunes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spGastosDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaLunes.Open;
    i := i + 1;
    lblMartes.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
    spVentasDiaMartes.Close;
    spVentasDiaMartes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVentasDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasDiaMartes.Open;
    spVtasCerrDiaMartes.Close;
    spVtasCerrDiaMartes.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVtasCerrDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrDiaMartes.Open;
    spAdelDiaMartes.Close;
    spAdelDiaMartes.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelDiaMartes.Open;
    spLiquDiaMartes.Close;
    spLiquDiaMartes.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquDiaMartes.Open;
    spPagosDiaMartes.Close;
    spPagosDiaMartes.Parameters.ParamByName('@pdteDia').Value    := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spPagosDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaMartes.Open;
    spOtrPagosDiaMartes.Close;
    spOtrPagosDiaMartes.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spOtrPagosDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrPagosDiaMartes.Open;
    spGastosDiaMartes.Close;
    spGastosDiaMartes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spGastosDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaMartes.Open;
    i := i + 1;
    lblMiercoles.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
    spVentasDiaMierc.Close;
    spVentasDiaMierc.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVentasDiaMierc.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasDiaMierc.Open;
    spVtasCerrDiaMierc.Close;
    spVtasCerrDiaMierc.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVtasCerrDiaMierc.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrDiaMierc.Open;
    spAdelDiaMierc.Close;
    spAdelDiaMierc.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaMierc.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelDiaMierc.Open;
    spLiquDiaMierc.Close;
    spLiquDiaMierc.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spLiquDiaMierc.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquDiaMierc.Open;
    spPagosDiaMierc.Close;
    spPagosDiaMierc.Parameters.ParamByName('@pdteDia').Value    := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spPagosDiaMierc.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaMierc.Open;
    spOtrPagosDiaMierc.Close;
    spOtrPagosDiaMierc.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spOtrPagosDiaMierc.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrPagosDiaMierc.Open;
    spGastosDiaMierc.Close;
    spGastosDiaMierc.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spGastosDiaMierc.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaMierc.Open;
    i := i + 1;
    lblJueves.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
    spVentasDiaJueves.Close;
    spVentasDiaJueves.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVentasDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasDiaJueves.Open;
    spVtasCerrDiaJueves.Close;
    spVtasCerrDiaJueves.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVtasCerrDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrDiaJueves.Open;
    spAdelDiaJueves.Close;
    spAdelDiaJueves.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelDiaJueves.Open;
    spLiquDiaJueves.Close;
    spLiquDiaJueves.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquDiaJueves.Open;
    spPagosDiaJueves.Close;
    spPagosDiaJueves.Parameters.ParamByName('@pdteDia').Value    := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spPagosDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaJueves.Open;
    spOtrPagosDiaJueves.Close;
    spOtrPagosDiaJueves.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spOtrPagosDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrPagosDiaJueves.Open;
    spGastosDiaJueves.Close;
    spGastosDiaJueves.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spGastosDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaJueves.Open;
    i := i + 1;
    lblViernes.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
    spVentasDiaViernes.Close;
    spVentasDiaViernes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVentasDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasDiaViernes.Open;
    spVtasCerrDiaViernes.Close;
    spVtasCerrDiaViernes.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVtasCerrDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrDiaViernes.Open;
    spAdelDiaViernes.Close;
    spAdelDiaViernes.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelDiaViernes.Open;
    spLiquDiaViernes.Close;
    spLiquDiaViernes.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spLiquDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquDiaViernes.Open;
    spPagosDiaViernes.Close;
    spPagosDiaViernes.Parameters.ParamByName('@pdteDia').Value    := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spPagosDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaViernes.Open;
    spOtrPagosDiaViernes.Close;
    spOtrPagosDiaViernes.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spOtrPagosDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrPagosDiaViernes.Open;
    spGastosDiaViernes.Close;
    spGastosDiaViernes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spGastosDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaViernes.Open;
    i := i + 1;
    lblSabado.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
    spVentasDiaSabado.Close;
    spVentasDiaSabado.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVentasDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasDiaSabado.Open;
    spVtasCerrDiaSabado.Close;
    spVtasCerrDiaSabado.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVtasCerrDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrDiaSabado.Open;
    spAdelDiaSabado.Close;
    spAdelDiaSabado.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelDiaSabado.Open;
    spLiquDiaSabado.Close;
    spLiquDiaSabado.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spLiquDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquDiaSabado.Open;
    spPagosDiaSabado.Close;
    spPagosDiaSabado.Parameters.ParamByName('@pdteDia').Value    := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spPagosDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaSabado.Open;
    spOtrPagosDiaSabado.Close;
    spOtrPagosDiaSabado.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spOtrPagosDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrPagosDiaSabado.Open;
    spGastosDiaSabado.Close;
    spGastosDiaSabado.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spGastosDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaSabado.Open;


    //------------------------- Inicializa campos nulos con 0.00 -----------------------------//
    //----------------------------------- DIA LUNES ------------------------------------------//
    if dbeTotalDiaLunes.Text <> '' then
        vldcmTotalDiaLunes := strtofloat(StringReplace(StringReplace(dbeTotalDiaLunes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaLunes := 0;
        dbeTotalDiaLunes.Text := '$0.00';
    end;
    if dbeAdelDiaLunes.Text <> '' then
        vldcmAdelantosDiaLunes := strtofloat(StringReplace(StringReplace(dbeAdelDiaLunes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaLunes := 0;
        dbeAdelDiaLunes.Text := '$0.00';
    end;
    if dbeVtasCerrDiaLunes.Text <> '' then
        vldcmVtasCerrDiaLunes := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaLunes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaLunes := 0;
        dbeVtasCerrDiaLunes.Text := '$0.00';
    end;
    if dbeGastosDiaLunes.Text <> '' then
        vldcmGastosDiaLunes := strtofloat(StringReplace(StringReplace(dbeGastosDiaLunes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaLunes := 0;
        dbeGastosDiaLunes.Text := '$0.00';
    end;
    if dbeIngresoTotalDiaLunes.Text <> '' then
        vldcmPagosDiaLunes := strtofloat(StringReplace(StringReplace(dbeIngresoTotalDiaLunes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaLunes := 0;
        dbeTotalDiaLunes.Text := '$0.00';
    end;

    edCxCDiaLunes.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaLunes - vldcmAdelantosDiaLunes - vldcmVtasCerrDiaLunes);
    edIngresoVentasDiaLunes.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaLunes + vldcmVtasCerrDiaLunes);
    edUtilidadDiaLunes.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaLunes - vldcmGastosDiaLunes);


    if dbePagosDia.Text <> '' then
        vldcmPagosDia := strtofloat(StringReplace(StringReplace(dbePagosDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDia := 0;
        dbePagosDia.Text := '$0.00';
    end;

    if dbeVentasDiaLunes.Text = '' then
        dbeVentasDiaLunes.Text := '$0.00';
    if dbeDescDiaLunes.Text = '' then
        dbeDescDiaLunes.Text := '$0.00';
    if dbeIVADiaLunes.Text = '' then
        dbeIVADiaLunes.Text := '$0.00';
    if dbeLiquDiaLunes.Text = '' then
        dbeLiquDiaLunes.Text := '$0.00';
    if dbeOtrPagosDiaLunes.Text = '' then
        dbeOtrPagosDiaLunes.Text := '$0.00';
    if dbeCxcDiaLunes.Text = '' then
        dbeCxcDiaLunes.Text := '$0.00';
    if dbeIngresoTotalDiaLunes.Text = '' then
        dbeIngresoTotalDiaLunes.Text := '$0.00';

    //----------------------------------- DIA MARTES ------------------------------------------//
    if dbeTotalDiaMartes.Text <> '' then
        vldcmTotalDiaMartes := strtofloat(StringReplace(StringReplace(dbeTotalDiaMartes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaMartes := 0;
        dbeTotalDiaMartes.Text := '$0.00';
    end;
    if dbeAdelDiaMartes.Text <> '' then
        vldcmAdelantosDiaMartes := strtofloat(StringReplace(StringReplace(dbeAdelDiaMartes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaMartes := 0;
        dbeAdelDiaMartes.Text := '$0.00';
    end;
    if dbeVtasCerrDiaMartes.Text <> '' then
        vldcmVtasCerrDiaMartes := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaMartes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaMartes := 0;
        dbeVtasCerrDiaMartes.Text := '$0.00';
    end;
    if dbeGastosDiaMartes.Text <> '' then
        vldcmGastosDiaMartes := strtofloat(StringReplace(StringReplace(dbeGastosDiaMartes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaMartes := 0;
        dbeGastosDiaMartes.Text := '$0.00';
    end;
    if dbeIngresoTotalDiaMartes.Text <> '' then
        vldcmPagosDiaMartes := strtofloat(StringReplace(StringReplace(dbeIngresoTotalDiaMartes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaMartes := 0;
        dbeTotalDiaMartes.Text := '$0.00';
    end;
    edCxCDiaMartes.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaMartes - vldcmAdelantosDiaMartes - vldcmVtasCerrDiaMartes);
    edIngresoVentasDiaMartes.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaMartes + vldcmVtasCerrDiaMartes);
    edUtilidadDiaMartes.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaMartes - vldcmGastosDiaMartes);
    if dbeVentasDiaMartes.Text = '' then
        dbeVentasDiaMartes.Text := '$0.00';
    if dbeDescDiaMartes.Text = '' then
        dbeDescDiaMartes.Text := '$0.00';
    if dbeIVADiaMartes.Text = '' then
        dbeIVADiaMartes.Text := '$0.00';
    if dbeLiquDiaMartes.Text = '' then
        dbeLiquDiaMartes.Text := '$0.00';
    if dbeOtrPagosDiaMartes.Text = '' then
        dbeOtrPagosDiaMartes.Text := '$0.00';
    if dbeCxcDiaMartes.Text = '' then
        dbeCxcDiaMartes.Text := '$0.00';
    if dbeIngresoTotalDiaMartes.Text = '' then
        dbeIngresoTotalDiaMartes.Text := '$0.00';
    //----------------------------------- DIA MIERCOLES ------------------------------------------//
    if dbeTotalDiaMierc.Text <> '' then
        vldcmTotalDiaMierc := strtofloat(StringReplace(StringReplace(dbeTotalDiaMierc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaMierc := 0;
        dbeTotalDiaMierc.Text := '$0.00';
    end;
    if dbeAdelDiaMierc.Text <> '' then
        vldcmAdelantosDiaMierc := strtofloat(StringReplace(StringReplace(dbeAdelDiaMierc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaMierc := 0;
        dbeAdelDiaMierc.Text := '$0.00';
    end;
    if dbeVtasCerrDiaMierc.Text <> '' then
        vldcmVtasCerrDiaMierc := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaMierc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaMierc := 0;
        dbeVtasCerrDiaMierc.Text := '$0.00';
    end;
    if dbeGastosDiaMierc.Text <> '' then
        vldcmGastosDiaMierc := strtofloat(StringReplace(StringReplace(dbeGastosDiaMierc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaMierc := 0;
        dbeGastosDiaMierc.Text := '$0.00';
    end;
    if dbeIngresoTotalDiaMierc.Text <> '' then
        vldcmPagosDiaMierc := strtofloat(StringReplace(StringReplace(dbeIngresoTotalDiaMierc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaMierc := 0;
        dbeTotalDiaMierc.Text := '$0.00';
    end;
    edCxCDiaMierc.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaMierc - vldcmAdelantosDiaMierc - vldcmVtasCerrDiaMierc);
    edIngresoVentasDiaMierc.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaMierc + vldcmVtasCerrDiaMierc);
    edUtilidadDiaMierc.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaMierc - vldcmGastosDiaMierc);
    if dbeVentasDiaMierc.Text = '' then
        dbeVentasDiaMierc.Text := '$0.00';
    if dbeDescDiaMierc.Text = '' then
        dbeDescDiaMierc.Text := '$0.00';
    if dbeIVADiaMierc.Text = '' then
        dbeIVADiaMierc.Text := '$0.00';
    if dbeLiquDiaMierc.Text = '' then
        dbeLiquDiaMierc.Text := '$0.00';
    if dbeOtrPagosDiaMierc.Text = '' then
        dbeOtrPagosDiaMierc.Text := '$0.00';
    if dbeCxcDiaMierc.Text = '' then
        dbeCxcDiaMierc.Text := '$0.00';
    if dbeIngresoTotalDiaMierc.Text = '' then
        dbeIngresoTotalDiaMierc.Text := '$0.00';
    //----------------------------------- DIA JUEVES ------------------------------------------//
    if dbeTotalDiaJueves.Text <> '' then
        vldcmTotalDiaJueves := strtofloat(StringReplace(StringReplace(dbeTotalDiaJueves.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaJueves := 0;
        dbeTotalDiaJueves.Text := '$0.00';
    end;
    if dbeAdelDiaJueves.Text <> '' then
        vldcmAdelantosDiaJueves := strtofloat(StringReplace(StringReplace(dbeAdelDiaJueves.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaJueves := 0;
        dbeAdelDiaJueves.Text := '$0.00';
    end;
    if dbeVtasCerrDiaJueves.Text <> '' then
        vldcmVtasCerrDiaJueves := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaJueves.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaJueves := 0;
        dbeVtasCerrDiaJueves.Text := '$0.00';
    end;
    if dbeGastosDiaJueves.Text <> '' then
        vldcmGastosDiaJueves := strtofloat(StringReplace(StringReplace(dbeGastosDiaJueves.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaJueves := 0;
        dbeGastosDiaJueves.Text := '$0.00';
    end;
    if dbeIngresoTotalDiaJueves.Text <> '' then
        vldcmPagosDiaJueves := strtofloat(StringReplace(StringReplace(dbeIngresoTotalDiaJueves.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaJueves := 0;
        dbeTotalDiaJueves.Text := '$0.00';
    end;
    edCxCDiaJueves.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaJueves - vldcmAdelantosDiaJueves - vldcmVtasCerrDiaJueves);
    edIngresoVentasDiaJueves.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaJueves + vldcmVtasCerrDiaJueves);
    edUtilidadDiaJueves.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaJueves - vldcmGastosDiaJueves);
    if dbeVentasDiaJueves.Text = '' then
        dbeVentasDiaJueves.Text := '$0.00';
    if dbeDescDiaJueves.Text = '' then
        dbeDescDiaJueves.Text := '$0.00';
    if dbeIVADiaJueves.Text = '' then
        dbeIVADiaJueves.Text := '$0.00';
    if dbeLiquDiaJueves.Text = '' then
        dbeLiquDiaJueves.Text := '$0.00';
    if dbeOtrPagosDiaJueves.Text = '' then
        dbeOtrPagosDiaJueves.Text := '$0.00';
    if dbeCxcDiaJueves.Text = '' then
        dbeCxcDiaJueves.Text := '$0.00';
    if dbeIngresoTotalDiaJueves.Text = '' then
        dbeIngresoTotalDiaJueves.Text := '$0.00';
    //----------------------------------- DIA VIERNES ------------------------------------------//
    if dbeTotalDiaViernes.Text <> '' then
        vldcmTotalDiaViernes := strtofloat(StringReplace(StringReplace(dbeTotalDiaViernes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaViernes := 0;
        dbeTotalDiaViernes.Text := '$0.00';
    end;
    if dbeAdelDiaViernes.Text <> '' then
        vldcmAdelantosDiaViernes := strtofloat(StringReplace(StringReplace(dbeAdelDiaViernes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaViernes := 0;
        dbeAdelDiaViernes.Text := '$0.00';
    end;
    if dbeVtasCerrDiaViernes.Text <> '' then
        vldcmVtasCerrDiaViernes := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaViernes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaViernes := 0;
        dbeVtasCerrDiaViernes.Text := '$0.00';
    end;
    if dbeGastosDiaViernes.Text <> '' then
        vldcmGastosDiaViernes := strtofloat(StringReplace(StringReplace(dbeGastosDiaViernes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaViernes := 0;
        dbeGastosDiaViernes.Text := '$0.00';
    end;
    if dbeIngresoTotalDiaViernes.Text <> '' then
        vldcmPagosDiaViernes := strtofloat(StringReplace(StringReplace(dbeIngresoTotalDiaViernes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaViernes := 0;
        dbeTotalDiaViernes.Text := '$0.00';
    end;
    edCxCDiaViernes.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaViernes - vldcmAdelantosDiaViernes - vldcmVtasCerrDiaViernes);
    edIngresoVentasDiaViernes.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaViernes + vldcmVtasCerrDiaViernes);
    edUtilidadDiaViernes.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaViernes - vldcmGastosDiaViernes);
    if dbeVentasDiaViernes.Text = '' then
        dbeVentasDiaViernes.Text := '$0.00';
    if dbeDescDiaViernes.Text = '' then
        dbeDescDiaViernes.Text := '$0.00';
    if dbeIVADiaViernes.Text = '' then
        dbeIVADiaViernes.Text := '$0.00';
    if dbeLiquDiaViernes.Text = '' then
        dbeLiquDiaViernes.Text := '$0.00';
    if dbeOtrPagosDiaViernes.Text = '' then
        dbeOtrPagosDiaViernes.Text := '$0.00';
    if dbeCxcDiaViernes.Text = '' then
        dbeCxcDiaViernes.Text := '$0.00';
    if dbeIngresoTotalDiaViernes.Text = '' then
        dbeIngresoTotalDiaViernes.Text := '$0.00';
    //----------------------------------- DIA SABADO ------------------------------------------//
    if dbeTotalDiaSabado.Text <> '' then
        vldcmTotalDiaSabado := strtofloat(StringReplace(StringReplace(dbeTotalDiaSabado.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaSabado := 0;
        dbeTotalDiaSabado.Text := '$0.00';
    end;
    if dbeAdelDiaSabado.Text <> '' then
        vldcmAdelantosDiaSabado := strtofloat(StringReplace(StringReplace(dbeAdelDiaSabado.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaSabado := 0;
        dbeAdelDiaSabado.Text := '$0.00';
    end;
    if dbeVtasCerrDiaSabado.Text <> '' then
        vldcmVtasCerrDiaSabado := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaSabado.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaSabado := 0;
        dbeVtasCerrDiaSabado.Text := '$0.00';
    end;
    if dbeGastosDiaSabado.Text <> '' then
        vldcmGastosDiaSabado := strtofloat(StringReplace(StringReplace(dbeGastosDiaSabado.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaSabado := 0;
        dbeGastosDiaSabado.Text := '$0.00';
    end;
    if dbeIngresoTotalDiaSabado.Text <> '' then
        vldcmPagosDiaSabado := strtofloat(StringReplace(StringReplace(dbeIngresoTotalDiaSabado.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaSabado := 0;
        dbeTotalDiaSabado.Text := '$0.00';
    end;
    edCxCDiaSabado.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaSabado - vldcmAdelantosDiaSabado - vldcmVtasCerrDiaSabado);
    edIngresoVentasDiaSabado.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaSabado + vldcmVtasCerrDiaSabado);
    edUtilidadDiaSabado.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaSabado - vldcmGastosDiaSabado);
    if dbeVentasDiaSabado.Text = '' then
        dbeVentasDiaSabado.Text := '$0.00';
    if dbeDescDiaSabado.Text = '' then
        dbeDescDiaSabado.Text := '$0.00';
    if dbeIVADiaSabado.Text = '' then
        dbeIVADiaSabado.Text := '$0.00';
    if dbeLiquDiaSabado.Text = '' then
        dbeLiquDiaSabado.Text := '$0.00';
    if dbeOtrPagosDiaSabado.Text = '' then
        dbeOtrPagosDiaSabado.Text := '$0.00';
    if dbeCxcDiaSabado.Text = '' then
        dbeCxcDiaSabado.Text := '$0.00';
    if dbeIngresoTotalDiaSabado.Text = '' then
        dbeIngresoTotalDiaSabado.Text := '$0.00';
    //----------------------------------- DIA WEEK ------------------------------------------//
    if dbeTotalDiaWeek.Text <> '' then
        vldcmTotalDiaWeek := strtofloat(StringReplace(StringReplace(dbeTotalDiaWeek.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaWeek := 0;
        dbeTotalDiaWeek.Text := '$0.00';
    end;
    if dbeAdelDiaWeek.Text <> '' then
        vldcmAdelantosDiaWeek := strtofloat(StringReplace(StringReplace(dbeAdelDiaWeek.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaWeek := 0;
        dbeAdelDiaWeek.Text := '$0.00';
    end;
    if dbeVtasCerrDiaWeek.Text <> '' then
        vldcmVtasCerrDiaWeek := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaWeek.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaWeek := 0;
        dbeVtasCerrDiaWeek.Text := '$0.00';
    end;
    if dbeGastosDiaWeek.Text <> '' then
        vldcmGastosDiaWeek := strtofloat(StringReplace(StringReplace(dbeGastosDiaWeek.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaWeek := 0;
        dbeGastosDiaWeek.Text := '$0.00';
    end;
    if dbeIngresoTotalDiaWeek.Text <> '' then
        vldcmPagosDiaWeek := strtofloat(StringReplace(StringReplace(dbeIngresoTotalDiaWeek.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaWeek := 0;
        dbeTotalDiaWeek.Text := '$0.00';
    end;
    edCxCDiaWeek.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaWeek - vldcmAdelantosDiaWeek - vldcmVtasCerrDiaWeek);
    edIngresoVentasDiaWeek.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaWeek + vldcmVtasCerrDiaWeek);
    edUtilidadDiaWeek.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaWeek - vldcmGastosDiaWeek);
    if dbeVentasWeek.Text = '' then
        dbeVentasWeek.Text := '$0.00';
    if dbeDescWeek.Text = '' then
        dbeDescWeek.Text := '$0.00';
    if dbeIVADiaWeek.Text = '' then
        dbeIVADiaWeek.Text := '$0.00';
    if dbeLiquDiaWeek.Text = '' then
        dbeLiquDiaWeek.Text := '$0.00';
    if dbeOtrPagosDiaWeek.Text = '' then
        dbeOtrPagosDiaWeek.Text := '$0.00';
    if dbeCxcDiaWeek.Text = '' then
        dbeCxcDiaWeek.Text := '$0.00';
    if dbeIngresoTotalDiaWeek.Text = '' then
        dbeIngresoTotalDiaWeek.Text := '$0.00';
end;

procedure TfrmReportesUsuario.cbxDiaClick(Sender: TObject);
begin
  if cbxDia.Checked = true then
  begin
      cbxDia.Checked := true;
      cbxSem.Checked := false;


      dbgVentas.DataSource        := dsVentasXDiaDet;
      dbgVtasCerr.DataSource      := dsVentasCerradasDiaDet;
      dbgAdelantos.DataSource     := dsAdelantosDiaDet;
      dbgLiquidaciones.DataSource := dsLiquidacionesDiaDet;
      dbgPagos.DataSource         := dsPagosDiaDet;
      dbgOtrosPagos.DataSource    := dsOtrosPagosDiaDet;
      dbgGastos.DataSource        := dsGastosDiaDet;
      dbfImporte.DataSource       := dsVentasXDia;
      dbfDesc.DataSource          := dsVentasXDia;
      dbfIVA.DataSource           := dsVentasXDia;
      dbfTotal.DataSource         := dsVentasXDia;
      dbfAdelanto.DataSource      := dsVentasXDia;
      dbfCxC.DataSource           := dsVentasXdia;
  end;
end;
procedure TfrmReportesUsuario.cbxSemClick(Sender: TObject);
begin
  if cbxSem.Checked = true then
  begin
      cbxDia.Checked := false;
      cbxSem.Checked := true;


      dbgVentas.DataSource        := dsVentasXSemDet;
      dbgVtasCerr.DataSource      := dsVtasCerrSemDet;
      dbgAdelantos.DataSource     := dsAdelantosSemDet;
      dbgLiquidaciones.DataSource := dsLiquidacionesSemDet;
      dbgPagos.DataSource         := dsPagosSemDet;
      dbgOtrosPagos.DataSource    := dsOtrosPagosSemDet;
      dbgGastos.DataSource        := dsGastosSemDet;
      dbfImporte.DataSource       := dsVentasXSem;
      dbfDesc.DataSource          := dsVentasXSem;
      dbfIVA.DataSource           := dsVentasXSem;
      dbfTotal.DataSource         := dsVentasXSem;
      dbfAdelanto.DataSource      := dsVentasXSem;
      dbfCxC.DataSource           := dsVentasXSem;
  end;
end;



procedure TfrmReportesUsuario.dblkcSucursalesClick(Sender: TObject);
begin
     btnConsultar.Click;
end;

procedure TfrmReportesUsuario.FormCreate(Sender: TObject);
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

    dtpCalendario.Date := now();
    vldteFecha := now();

    spGetSucursales.Open;
    dblkcSucursales.KeyValue := 0;
    vlintAlcance := 0;

    if vgIdTipoUsuario <> 3 then begin
        dblkcSucursales.KeyValue := vgintSucursal;
        dblkcSucursales.Enabled := false;
        vlintAlcance := vgintSucursal;
    end;

    btnConsultar.Click;

end;
procedure TfrmReportesUsuario.rgAlcanceClick(Sender: TObject);
begin
    //btnConsultar.Click;
end;
procedure TfrmReportesUsuario.tcViewersChange(Sender: TObject);
var
  vlintDiaSemana, i:integer;
begin
  case tcViewers.TabIndex of
    0: begin
       pnlResumen.Visible := true;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    1: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := true;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    2: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := true;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    3: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := true;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    4: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := true;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    5: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := true;
       pnlOtrosPagos.Visible := true;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    6: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := true;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    7: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := true;
       pnlSemanaDetalle.Visible :=false;
    end;
    8: begin
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := false;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=true;
    end;
  end;
end;
end.
