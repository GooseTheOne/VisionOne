unit ReportesAdmin;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, DateUtils,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Mask, Globales;
type
  TfrmReportesAdmin = class(TForm)
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
    edIngresoVentasMes: TEdit;
    edIngresoVentasYear: TEdit;
    edCxCMes: TEdit;
    edCxCYear: TEdit;
    edUtilidadMes: TEdit;
    edUtilidadYear: TEdit;
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
    dbeVentasMes: TDBEdit;
    dbeDescMes: TDBEdit;
    dbeIVAMes: TDBEdit;
    dbeTotalMes: TDBEdit;
    dbeVntasCerrMes: TDBEdit;
    dbeAdelantosMes: TDBEdit;
    dbeLiquidacionesMes: TDBEdit;
    dbeOtrosPagosMes: TDBEdit;
    dbePagosMes: TDBEdit;
    dbeGastosMes: TDBEdit;
    dbeVentasYear: TDBEdit;
    dbeDescYear: TDBEdit;
    dbeIVAYear: TDBEdit;
    dbeTotalYear: TDBEdit;
    dbeVtasCerrYear: TDBEdit;
    dbeAdelantosYear: TDBEdit;
    dbeLiquidacionesYear: TDBEdit;
    dbeOtrosPagosYear: TDBEdit;
    dbePagosYear: TDBEdit;
    dbeGastosYear: TDBEdit;
    cbxMes: TCheckBox;
    cbxYear: TCheckBox;
    dbfOrdenesMes: TDBText;
    dbfOrdenesYear: TDBText;
    spVentasMes: TADOStoredProc;
    dsVentasMes: TDataSource;
    spVentasMesDet: TADOStoredProc;
    dsVentasMesDet: TDataSource;
    spVtasCerrMes: TADOStoredProc;
    spVtasCerrMesDet: TADOStoredProc;
    spAdelantosMes: TADOStoredProc;
    spAdelantosMesDet: TADOStoredProc;
    spLiquidacionesMes: TADOStoredProc;
    spLiquidacionesMesDet: TADOStoredProc;
    spPagosMes: TADOStoredProc;
    spPagosMesDet: TADOStoredProc;
    spOtrosPagosMesDet: TADOStoredProc;
    spGastosMes: TADOStoredProc;
    spGastosMesDet: TADOStoredProc;
    dsVtasCerrMes: TDataSource;
    dsVtasCerrMesDet: TDataSource;
    dsAdelantosMes: TDataSource;
    dsAdelantosMesDet: TDataSource;
    dsLiquidacionesMes: TDataSource;
    dsLiquidacionesMesDet: TDataSource;
    dsPagosMes: TDataSource;
    dsPagosMesDet: TDataSource;
    dsOtrosPagosMes: TDataSource;
    dsOtrosPagosMesDet: TDataSource;
    dsGastosMes: TDataSource;
    dsGastosMesDet: TDataSource;
    spVentasYear: TADOStoredProc;
    dsVentasYear: TDataSource;
    spVentasYearDet: TADOStoredProc;
    dsVentasYearDet: TDataSource;
    spVtasCerrYear: TADOStoredProc;
    spVtasCerrYearDet: TADOStoredProc;
    spAdelantosYear: TADOStoredProc;
    spAdelantosYearDet: TADOStoredProc;
    spLiquidacionesYear: TADOStoredProc;
    spLiquidacionesYearDet: TADOStoredProc;
    spPagosYear: TADOStoredProc;
    spPagosYearDet: TADOStoredProc;
    spOtrosPagosYear: TADOStoredProc;
    spOtrosPagosYearDet: TADOStoredProc;
    spGastosYear: TADOStoredProc;
    spGastosYearDet: TADOStoredProc;
    dsVtasCerrYear: TDataSource;
    dsVtasCerrYearDet: TDataSource;
    dsAdelantosYear: TDataSource;
    dsAdelantosYearDet: TDataSource;
    dsLiquidacionesYear: TDataSource;
    dsLiquidacionesYearDet: TDataSource;
    dsPagosYear: TDataSource;
    dsPagosYearDet: TDataSource;
    dsOtrosPagosYear: TDataSource;
    dsOtrosPagosYearDet: TDataSource;
    dsGastosYear: TDataSource;
    dsGastosYearDet: TDataSource;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
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
    dbePagosDiaLunes: TDBEdit;
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
    dbePagosDiaMartes: TDBEdit;
    dbeGastosDiaMartes: TDBEdit;
    edUtilidadDiaMartes: TEdit;
    Label41: TLabel;
    edUtilidadDiaMierc: TEdit;
    Label42: TLabel;
    dbeGastosDiaMierc: TDBEdit;
    dbePagosDiaMierc: TDBEdit;
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
    dbePagosDiaJueves: TDBEdit;
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
    dbePagosDiaViernes: TDBEdit;
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
    dbePagosDiaSabado: TDBEdit;
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
    dbePagosDiaWeek: TDBEdit;
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
    dbeTranDiaLunes: TDBEdit;
    dbeTranDiaMartes: TDBEdit;
    dbeTranDiaMierc: TDBEdit;
    dbeTranDiaJueves: TDBEdit;
    dbeTranDiaViernes: TDBEdit;
    dbeTranDiaSabado: TDBEdit;
    dbeTranDiaWeek: TDBEdit;
    dbeCxCYear: TDBEdit;
    Shape12: TShape;
    lblDescD: TLabel;
    lblPendienteD: TLabel;
    lblCerradasD: TLabel;
    lblAdelD: TLabel;
    lblLiquD: TLabel;
    lblOtrPagosD: TLabel;
    lblIngresoTotalD: TLabel;
    lblGastosD: TLabel;
    lblTransferD: TLabel;
    lblVentasS: TLabel;
    lblDescS: TLabel;
    lblIVAS: TLabel;
    lblPendienteS: TLabel;
    lblCerradasS: TLabel;
    lblAdelS: TLabel;
    lblIngresoVtasS: TLabel;
    lblLiquS: TLabel;
    lblOtrPagosS: TLabel;
    lblIngresoTotalS: TLabel;
    lblGastosS: TLabel;
    lblTransferS: TLabel;
    lblPorCobrarS: TLabel;
    lblVentasM: TLabel;
    lblDescM: TLabel;
    lblIVAM: TLabel;
    lblPendienteM: TLabel;
    lblCerradasM: TLabel;
    lblAdelM: TLabel;
    lblIngresoVtasM: TLabel;
    lblLiquM: TLabel;
    lblOtrPagosM: TLabel;
    lblIngresoTotalM: TLabel;
    lblGastosM: TLabel;
    lblTransM: TLabel;
    lblPorCobrarM: TLabel;
    lblDescY: TLabel;
    lblPorCobrarY: TLabel;
    lblGastosY: TLabel;
    lblIngresoTotalY: TLabel;
    lblOtrPagosY: TLabel;
    lblLiquY: TLabel;
    lblIngresoVtasY: TLabel;
    lblAdelY: TLabel;
    lblCerradasY: TLabel;
    lblPendienteY: TLabel;
    lblIVAY: TLabel;
    lblVentasY: TLabel;
    lblIngresoVtasD: TLabel;
    lblVentasD: TLabel;
    lblPorCobrarD: TLabel;
    spLiquidacionesSem: TADOStoredProc;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    dblkcSucursales: TDBLookupComboBox;
    Label47: TLabel;
    dbeTranXdia: TDBEdit;
    Label50: TLabel;
    lblEfectivoD: TLabel;
    lblEfectivoS: TLabel;
    lblEfectM: TLabel;
    lblTransY: TLabel;
    Label55: TLabel;
    dbeTransSem: TDBEdit;
    dbeTransMes: TDBEdit;
    dbeTransYear: TDBEdit;
    spTransXDia: TADOStoredProc;
    dsTransXDia: TDataSource;
    edEfectDia: TEdit;
    spTransSem: TADOStoredProc;
    dsTransSem: TDataSource;
    edEfectSem: TEdit;
    spTransMes: TADOStoredProc;
    dsTransMes: TDataSource;
    edEfectMes: TEdit;
    Shape13: TShape;
    edEfectYear: TEdit;
    lblEfectY: TLabel;
    spTransYear: TADOStoredProc;
    dsTransYear: TDataSource;
    dbeTintoDia: TDBEdit;
    dbeTintoYear: TDBEdit;
    dsTintoDia: TDataSource;
    dsTintoSem: TDataSource;
    dsTintoMes: TDataSource;
    dsTintoYear: TDataSource;
    spTintoDia: TADOStoredProc;
    spTintoSem: TADOStoredProc;
    spTintoMes: TADOStoredProc;
    spTintoYear: TADOStoredProc;
    dbeSubtotalDia: TDBEdit;
    Label59: TLabel;
    lblIVAD: TLabel;
    Shape15: TShape;
    edBordados: TEdit;
    edTintorerias: TEdit;
    edComposturas: TEdit;
    edVentas: TEdit;
    Label51: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    lblComposturas: TLabel;
    lblBordados: TLabel;
    lblTintorerias: TLabel;
    edConfeccion: TEdit;
    Label67: TLabel;
    lblVentas: TLabel;
    lblConfeccion: TLabel;
    edPlanchado: TEdit;
    Label70: TLabel;
    lblPlanchado: TLabel;
    spGetVentasDivisionXPeriodo: TADOStoredProc;
    dsGetVentasDivisionXPeriodo: TDataSource;
    Label49: TLabel;
    lblTicketPromedio: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    lblCPV: TLabel;
    lblCR: TLabel;
    dbeSubtotalSem: TDBEdit;
    dbeSubtotalMes: TDBEdit;
    dbeSubtotalYear: TDBEdit;
    dbeVtasMesYP: TDBEdit;
    dbeDescMesYP: TDBEdit;
    dbeTotalMesYP: TDBEdit;
    dbeSubtotalMesYP: TDBEdit;
    dbeIVAMesYP: TDBEdit;
    dbeVtaCerrMesYP: TDBEdit;
    dbeAdelantosMesYP: TDBEdit;
    edCxCMesYP: TEdit;
    edIngresoVtasMEsYP: TEdit;
    dbeLiquidacionesMesYP: TDBEdit;
    dbePagosMesYP: TDBEdit;
    dbeGastosMesYP: TDBEdit;
    edUtilidadMesYP: TEdit;
    dbeTransMesYP: TDBEdit;
    edEfecMesYP: TEdit;
    Label73: TLabel;
    lblDeltaVentasMes: TLabel;
    lblDeltaDescMes: TLabel;
    lblDeltaIVAMes: TLabel;
    lblDeltaVtasCerrMes: TLabel;
    lblDeltaAdelantosMes: TLabel;
    lblDeltaPendienteMes: TLabel;
    lblDeltaIngresoVentasMes: TLabel;
    lblDeltaLiquidacionesMes: TLabel;
    lblDeltaPagosMes: TLabel;
    lblDeltaOtrosPagosMes: TLabel;
    lblDeltaGastosMes: TLabel;
    lblDeltaTransMes: TLabel;
    lblDeltaEfectMes: TLabel;
    dbeVentasYP: TDBEdit;
    dbeDescYP: TDBEdit;
    dbeTotalYP: TDBEdit;
    dbeSubtotalYP: TDBEdit;
    dbeIVAYP: TDBEdit;
    dbeVtasCerrYP: TDBEdit;
    dbeAdelantosYP: TDBEdit;
    edCxCYP: TEdit;
    edIngresoVtasYP: TEdit;
    dbeLiquidacionesYP: TDBEdit;
    dbeOtrosPagosYP: TDBEdit;
    dbePagosYP: TDBEdit;
    dbeGastosYP: TDBEdit;
    edUtilidadYP: TEdit;
    dbeTransYP: TDBEdit;
    edEfectYP: TEdit;
    lblDeltaVentaY: TLabel;
    lblDeltaDescY: TLabel;
    lblDeltaIVAY: TLabel;
    lblDeltaVtasCerrY: TLabel;
    lblDeltaAdelantosY: TLabel;
    Label108: TLabel;
    lblDeltaIngresoVtasY: TLabel;
    lblDeltaLiquidacionesY: TLabel;
    lblDeltaOtrosPagosY: TLabel;
    lblDeltaPagosY: TLabel;
    lblDeltaGastosY: TLabel;
    lblDeltaTransY: TLabel;
    lblDelteEfectY: TLabel;
    Shape5: TShape;
    Shape14: TShape;
    Shape16: TShape;
    dbeSubtotalDiaLunes: TDBEdit;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    lblDomingo: TLabel;
    dbeVentasDiaDomingo: TDBEdit;
    dbeDescDiaDomingo: TDBEdit;
    dbeTotalDiaDomingo: TDBEdit;
    dbeSubtotalDiaDomingo: TDBEdit;
    dbeIvaDiaDomingo: TDBEdit;
    dbeVtasCerrDiaDomingo: TDBEdit;
    dbeAdelDiaDomingo: TDBEdit;
    edCxCDiaDomingo: TEdit;
    edIngresoVentasDiaDomingo: TEdit;
    dbeLiquDiaDomingo: TDBEdit;
    dbeOtrPagosDiaDomingo: TDBEdit;
    dbePagosDiaDomingo: TDBEdit;
    dbeGastosDiaDomingo: TDBEdit;
    edEfectDiaDomingo: TEdit;
    dbeTranDiaDomingo: TDBEdit;
    spVentasDiaDomingo: TADOStoredProc;
    dsVentasDiaDomingo: TDataSource;
    dsVtasCerrDiaDomingo: TDataSource;
    spVtasCerrDiaDomingo: TADOStoredProc;
    spAdelDiaDomingo: TADOStoredProc;
    dsAdelDiaDomingo: TDataSource;
    spLiquDiaDomingo: TADOStoredProc;
    dsLiquDiaDomingo: TDataSource;
    edUtilidadDiaDomingo: TEdit;
    spPagosDiaDomingo: TADOStoredProc;
    dsPagosDiaDomingo: TDataSource;
    spOtrPagosDiaDomingo: TADOStoredProc;
    dsOtrPagosDiaDomingo: TDataSource;
    spGastosDiaDomingo: TADOStoredProc;
    dsGastosDiaDomingo: TDataSource;
    spTransDiaDomingo: TADOStoredProc;
    dsTransDiaDomingo: TDataSource;
    spTransDiaLunes: TADOStoredProc;
    dsTransDiaLunes: TDataSource;
    edEfectDiaLunes: TEdit;
    edEfectDiaMartes: TEdit;
    dbeSubtotalDiaMartes: TDBEdit;
    dbeSubtotalDiaMiercoles: TDBEdit;
    dbeSubtotalDiaJueves: TDBEdit;
    dbeSubtotalDiaViernes: TDBEdit;
    dbeSubtotalDiaSabado: TDBEdit;
    edEfectDiaMiercoles: TEdit;
    edEfectDiaJueves: TEdit;
    edEfectDiaViernes: TEdit;
    edEfectDiaSabado: TEdit;
    edEfectDiaWeek: TEdit;
    spTransDiaMartes: TADOStoredProc;
    dsTransDiaMartes: TDataSource;
    spTransDiaMiercoles: TADOStoredProc;
    dsTransDiaMiercoles: TDataSource;
    dsTransDiaJueves: TDataSource;
    spTransDiaJueves: TADOStoredProc;
    dsTransDiaViernes: TDataSource;
    spTransDiaViernes: TADOStoredProc;
    dsTransDiaSabado: TDataSource;
    spTransDiaSabado: TADOStoredProc;
    dbeSubtotalDiaWeek: TDBEdit;
    spVentasMesAnt: TADOStoredProc;
    dsVentasMesAnt: TDataSource;
    spVentasMesYP: TADOStoredProc;
    dsVentasMesYP: TDataSource;
    chbxMMAP: TCheckBox;
    spVentasYearAnt: TADOStoredProc;
    dsVentasYearAnt: TDataSource;
    spVentasYearAntAlDia: TADOStoredProc;
    dsVentasYearAntAlDia: TDataSource;
    chbxAPAD: TCheckBox;
    spVtasCerrYearAnt: TADOStoredProc;
    dsVtasCerrYearAnt: TDataSource;
    spVtasCerrYearAntAlDia: TADOStoredProc;
    dsVtasCerrYearAntAlDia: TDataSource;
    spVtasCerrMesAnt: TADOStoredProc;
    dsVtasCerrMesAnt: TDataSource;
    dsVtasCerrMesYP: TDataSource;
    spVtasCerrMesYP: TADOStoredProc;
    spAdelantosMesAnt: TADOStoredProc;
    dsAdelantosMesAnt: TDataSource;
    dsAdelantosMesYP: TDataSource;
    spAdelantosMesYP: TADOStoredProc;
    dsLiquidacionesMesAnt: TDataSource;
    spLiquidacionesMesAnt: TADOStoredProc;
    spLiquidacionesMesYP: TADOStoredProc;
    dsLiquidacionesMesYP: TDataSource;
    spOtrosPagosMesAnt: TADOStoredProc;
    dsOtrosPagosMesAnt: TDataSource;
    spPagosMesAnt: TADOStoredProc;
    dsPagosMesAnt: TDataSource;
    spGastosMesAnt: TADOStoredProc;
    dsGastosMesAnt: TDataSource;
    dsTransMesAnt: TDataSource;
    spOtrosPagosMesYP: TADOStoredProc;
    dsOtrosPagosMesYP: TDataSource;
    spPagosMesYP: TADOStoredProc;
    dsPagosMesYP: TDataSource;
    spGastosMesYP: TADOStoredProc;
    dsGastosMesYP: TDataSource;
    spTransMesYP: TADOStoredProc;
    dsTransMesYP: TDataSource;
    spTransMesAnt: TADOStoredProc;
    spOtrosPagosMes: TADOStoredProc;
    dbeOtrosPagosMesYPv2: TDBEdit;
    spOtrosPagosMesv2: TADOStoredProc;
    dsOtrosPagosMesv2: TDataSource;
    spGetVentasDivisionXPeriodoSEM: TADOStoredProc;
    dsGetVentasDivisionXPeriodoSEM: TDataSource;
    spGetVentasDivisionXPeriodoMES: TADOStoredProc;
    dsGetVentasDivisionXPeriodoMES: TDataSource;
    spGetVentasDivisionXPeriodoYEAR: TADOStoredProc;
    dsGetVentasDivisionXPeriodoYEAR: TDataSource;
    edOtros: TEdit;
    Label56: TLabel;
    lblOtros: TLabel;
    spGetKPIsClientes: TADOStoredProc;
    dsGetKPIsClientes: TDataSource;
    spGetTicketPromedioXPeriodoD: TADOStoredProc;
    spGetTicketPromedioXPeriodoS: TADOStoredProc;
    spGetTicketPromedioXPeriodoM: TADOStoredProc;
    spGetTicketPromedioXPeriodoY: TADOStoredProc;
    spGetAdelantosXYearAnt: TADOStoredProc;
    spGetLiquidacionesXYearAnt: TADOStoredProc;
    spGetOtrosPagosXYearAnt: TADOStoredProc;
    spGetPagosXYearAnt: TADOStoredProc;
    spGetGastosXYearAnt: TADOStoredProc;
    spGetTransXYearAnt: TADOStoredProc;
    dsGetAdelantosXYearAnt: TDataSource;
    dsGetLiquidacionesXYearAnt: TDataSource;
    dsGetOtrosPagosXYearAnt: TDataSource;
    dsGetPagosXYearAnt: TDataSource;
    dsGetGastosXYearAnt: TDataSource;
    dsGetTransXYearAnt: TDataSource;
    spGetAdelantosXPeriodo: TADOStoredProc;
    spGetLiquidacionesXPeriodo: TADOStoredProc;
    spGetOtrosPagosXPeriodo: TADOStoredProc;
    spGetPagosXPeriodo: TADOStoredProc;
    spGetGastosXPeriodo: TADOStoredProc;
    spGetTransXPeriodo: TADOStoredProc;
    dsGetAdelantosXPeriodo: TDataSource;
    dsGetLiquidacionesXPeriodo: TDataSource;
    dsGetOtrosPagosXPeriodo: TDataSource;
    dsGetPagosXPeriodo: TDataSource;
    dsGetGastosXPeriodo: TDataSource;
    dsGetTransXPeriodo: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnAtrasClick(Sender: TObject);
    procedure btnAdelanteClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure cbxDiaClick(Sender: TObject);
    procedure cbxSemClick(Sender: TObject);
    procedure tcViewersChange(Sender: TObject);
    procedure cbxMesClick(Sender: TObject);
    procedure cbxYearClick(Sender: TObject);
    procedure dblkcSucursalesClick(Sender: TObject);
    procedure chbxMMAPClick(Sender: TObject);
    procedure chbxAPADClick(Sender: TObject);
    procedure plCeros();
    procedure plCalculoKPIs();
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmReportesAdmin: TfrmReportesAdmin;
  vldteFecha: TDate;
  vlintAlcance: integer;
implementation
{$R *.dfm}

procedure TfrmReportesAdmin.btnAdelanteClick(Sender: TObject);
begin
    vldteFecha := vldteFecha + 1;
    dtpCalendario.Date := vldteFecha;
    btnConsultar.Click;
end;

procedure TfrmReportesAdmin.btnAtrasClick(Sender: TObject);
begin
    vldteFecha := vldteFecha - 1;
    dtpCalendario.Date := vldteFecha;
    btnConsultar.Click;
end;

procedure TfrmReportesAdmin.btnConsultarClick(Sender: TObject);
var
    vldcmVentasDia        , vldcmIVADia        , vldcmTotalDia        , vldcmAdelantosDia        , vldcmVtasCerrDia       , vldcmPagosDia        , vldcmGastosDia        : Double;
    vldcmVentasSem        , vldcmIVASem        , vldcmTotalSem        , vldcmAdelantosSem        , vldcmVtasCerrSem       , vldcmPagosSem        , vldcmGastosSem        : Double;
    vldcmVentasMes        , vldcmIVAMes        , vldcmTotalMes        , vldcmAdelantosMes        , vldcmVtasCerrMes       , vldcmPagosMes        , vldcmGastosMes        : Double;
    vldcmVentasYear       , vldcmIVAYear       , vldcmTotalYear       , vldcmAdelantosYear       , vldcmVtasCerrYear      , vldcmPagosYear       , vldcmGastosYear       : Double;

    vldcmTotalMesAnt,
    vldcmAdelantosMesAnt,
    vldcmVtasCerrMesAnt,
    vldcmPagosMesAnt,
    vldcmGastosMesAnt,
    vldcmTransMesAnt,
    vldcmUtilidadMesAnt,
    vldcmVentasMesAnt,
    vldcmSubtotalMesAnt: DOUBLE;

    vldcmTotalMesYP,
    vldcmAdelantosMesYP,
    vldcmVtasCerrMesYP,
    vldcmPagosMesYP,
    vldcmGastosMesYP,
    vldcmTransMesYP,
    vldcmUtilidadMesYP,
    vldcmVentasMesYP,
    vldcmSubtotalMesYP: DOUBLE;

    vldcmVentasDiaDom     , vldcmIVADiaDom     , vldcmTotalDiaDom     , vldcmAdelantosDiaDom     , vldcmVtasCerrDiaDom    , vldcmPagosDiaDom     , vldcmGastosDiaDom     , vldcmTranDiaDom    : Double;
    vldcmVentasDiaLunes   , vldcmIVADiaLunes   , vldcmTotalDiaLunes   , vldcmAdelantosDiaLunes   , vldcmVtasCerrDiaLunes  , vldcmPagosDiaLunes   , vldcmGastosDiaLunes   , vldcmTranDiaLunes  : Double;
    vldcmVentasDiaMartes  , vldcmIVADiaMartes  , vldcmTotalDiaMartes  , vldcmAdelantosDiaMartes  , vldcmVtasCerrDiaMartes , vldcmPagosDiaMartes  , vldcmGastosDiaMartes  , vldcmTranDiaMartes : Double;
    vldcmVentasDiaMierc   , vldcmIVADiaMierc   , vldcmTotalDiaMierc   , vldcmAdelantosDiaMierc   , vldcmVtasCerrDiaMierc  , vldcmPagosDiaMierc   , vldcmGastosDiaMierc   , vldcmTranDiaMierc  : Double;
    vldcmVentasDiaJueves  , vldcmIVADiaJueves  , vldcmTotalDiaJueves  , vldcmAdelantosDiaJueves  , vldcmVtasCerrDiaJueves , vldcmPagosDiaJueves  , vldcmGastosDiaJueves  , vldcmTranDiaJueves : Double;
    vldcmVentasDiaViernes , vldcmIVADiaViernes , vldcmTotalDiaViernes , vldcmAdelantosDiaViernes , vldcmVtasCerrDiaViernes, vldcmPagosDiaViernes , vldcmGastosDiaViernes , vldcmTranDiaViernes: Double;
    vldcmVentasDiaSabado  , vldcmIVADiaSabado  , vldcmTotalDiaSabado  , vldcmAdelantosDiaSabado  , vldcmVtasCerrDiaSabado , vldcmPagosDiaSabado  , vldcmGastosDiaSabado  , vldcmTranDiaSabado : Double;
    vldcmVentasDiaWeek    , vldcmIVADiaWeek    , vldcmTotalDiaWeek    , vldcmAdelantosDiaWeek    , vldcmVtasCerrDiaWeek   , vldcmPagosDiaWeek    , vldcmGastosDiaWeek    , vldcmTranDiaWeek   : Double;

    vlintDia,i: Integer;
    vlintDiaSemana: Integer;

    vldcmUtilidadDia, vldcmUtilidadSem, vldcmUtilidadMes, vldcmUtilidadYear :Double;
    vldcmTransDia   , vldcmTransSem   , vldcmTransMes   , vldcmTransYear    : Double;
    vldcmTintoDia   , vldcmTintoSem   , vldcmTintoMes   , vldcmTintoYear    : Double;
    vldcmSubtotalDia, vldcmSubtotalSem, vldcmSubtotalMes, vldcmSubtotalYear : Double;

    vldteSemIni, vldteSemFin: TDate;
    vlintMes: Integer;
    vlintYear: Integer;
    vlintPrendas: Integer;

    year:INTEGER;
    vldteIni:TDate;
    vldteFin:TDate;

begin

    if dblkcSucursales.KeyValue = null then
        vlintAlcance := 0
    else
        vlintAlcance := dblkcSucursales.KeyValue;

    vldcmVentasDia  := 0.0;
    vldcmVentasSem  := 0.0;
    vldcmTransDia   := 0.0;
    vldcmTransSem   := 0.0;
    vldcmTransMes   := 0.0;
    vldcmTransYear  := 0.0;

    vldteFecha := dtpCalendario.Date;       //Hoy
    vlintDia := DayOfWeek(vldteFecha);      //Dia de la semana
    vldteSemIni := vldteFecha   -vlintDia;  //Inicio de semana
    vldteSemFin := vldteFecha+7 -vlintDia;  //Fin de semana

    //Validacion de mes anterior cuando es enero
    if MonthOfTheYear(vldteFecha) = 1 then begin
      vlintMes  := 12;
      vlintYear := YearOf(vldteFecha)-1;
    end
    else begin
      vlintMes  := MonthOfTheYear(vldteFecha)-1;
      vlintYear := YearOf(vldteFecha);
    end;

    //Selección de año anterior
    year :=YearOf(vldteFecha)-1;
    //Selección de periodo 01Ene al dia de hoy
    vldteIni := StrToDate('01/01/'+year.ToString);
    if (dayof(vldteFecha) = 29) and (monthof(vldteFecha) = 2) then
      vldteFin := StrToDate('28/02/'+year.ToString)
    else
      vldteFin := strToDate(dayof(vldteFecha).ToString+'/' + monthof(vldteFecha).ToString + '/'+year.ToString);

    //Abre y Cierra SP's
    //********************************** KPI's **********************************//
    spGetKPIsClientes.Close;
    spGetKPIsClientes.Parameters.ParamByName('@pdteFin').Value := vldteFecha;
    spGetKPIsClientes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetKPIsClientes.Open;
    //********************************** DIA **********************************//
    //Ventas (DIA)
    spVentasXDia.Close;
    spVentasXDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasXDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXDia.Open;
    //Detalle de ventas (DIA)
    spVentasXDiaDet.Close;
    spVentasXDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasXDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXDiaDet.Open;
    //Ventas cerradas (DIA)
    spVentasCerradasDia.Close;
    spVentasCerradasDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasCerradasDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasCerradasDia.Open;
    //Detalle de ventas cerradas (DIA)
    spVentasCerradasDiaDet.Close;
    spVentasCerradasDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spVentasCerradasDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasCerradasDiaDet.Open;
    //Adelantos (DIA)
    spAdelantosDia.Close;
    spAdelantosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spAdelantosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosDia.Open;
    //Detalle de adelantos (DIA)
    spAdelantosDiaDet.Close;
    spAdelantosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spAdelantosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosDiaDet.Open;
    //Liquidaciones (DIA)
    spLiquidacionesDia.Close;
    spLiquidacionesDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spLiquidacionesDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesDia.Open;
    //Detalle de liquidaciones (DIA)
    spLiquidacionesDiaDet.Close;
    spLiquidacionesDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spLiquidacionesDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesDiaDet.Open;
    //Pagos (DIA)
    spPagosDia.Close;
    spPagosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spPagosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDia.Open;
    //Detalle de pagos (DIA)
    spPagosDiaDet.Close;
    spPagosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spPagosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaDet.Open;
    //Otros pagos (DIA)
    spOtrosPagosDia.Close;
    spOtrosPagosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spOtrosPagosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosDia.Open;
    //Detalle de otros pagos (DIA)
    spOtrosPagosDiaDet.Close;
    spOtrosPagosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spOtrosPagosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosDiaDet.Open;
    //Gastos (DIA)
    spGastosDia.Close;
    spGastosDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGastosDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDia.Open;
    spGastosDiaDet.Close;
    //Detalle de gastos (DIA)
    spGastosDiaDet.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGastosDiaDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaDet.Open;
    //Transacciones (DIA)
    spTransXDia.Close;
    spTransXDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spTransXDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransXDia.Open;
    //Tintoreria (DIA)
    spTintoDia.Close;
    spTintoDia.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spTintoDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTintoDia.Open;
    //Ventas por división (DIA)
    spGetVentasDivisionXPeriodo.Close;
    spGetVentasDivisionXPeriodo.Parameters.ParamByName('@pintPeriodo').Value := 1;
    spGetVentasDivisionXPeriodo.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGetVentasDivisionXPeriodo.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGetVentasDivisionXPeriodo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetVentasDivisionXPeriodo.Open;
    //Ticket Promedio (DIA)
    spGetTicketPromedioXPeriodoD.Close;
    spGetTicketPromedioXPeriodoD.Parameters.ParamByName('@pintPeriodo').Value := 1;
    spGetTicketPromedioXPeriodoD.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGetTicketPromedioXPeriodoD.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGetTicketPromedioXPeriodoD.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetTicketPromedioXPeriodoD.Open;
    //********************************** SEMANA **********************************//
    //Ventas (SEMANA)
    spVentasXSem.Close;
    spVentasXSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVentasXSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVentasXSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXSem.Open;
    //Detalle de ventas (SEMANA)
    spVentasXSemDet.Close;
    spVentasXSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVentasXSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVentasXSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasXSemDet.Open;
    //Ventas cerradas (SEMANA)
    spVtasCerrSem.Close;
    spVtasCerrSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVtasCerrSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVtasCerrSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrSem.Open;
    //Detalle de ventas cerradas (SEMANA)
    spVtasCerrSemDet.Close;
    spVtasCerrSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spVtasCerrSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spVtasCerrSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrSemDet.Open;
    //Adelantos (SEMANA)
    spAdelantosSem.Close;
    spAdelantosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spAdelantosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spAdelantosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosSem.Open;
    //Detalle de adelantos (SEMANA)
    spAdelantosSemDet.Close;
    spAdelantosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spAdelantosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spAdelantosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosSemDet.Open;
    //Liquidaciones (SEMANA)
    spLiquidacionesSem.Close;
    spLiquidacionesSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spLiquidacionesSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spLiquidacionesSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesSem.Open;
    //Detalle de liquidaciones (SEMANA)
    spLiquidacionesSemDet.Close;
    spLiquidacionesSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spLiquidacionesSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spLiquidacionesSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesSemDet.Open;
    //Pagos (SEMANA)
    spPagosSem.Close;
    spPagosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spPagosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spPagosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosSem.Open;
    //Detalle de pagos (SEMANA)
    spPagosSemDet.Close;
    spPagosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spPagosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spPagosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosSemDet.Open;
    //Otros pagos (SEMANA)
    spOtrosPagosSem.Close;
    spOtrosPagosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spOtrosPagosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spOtrosPagosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosSem.Open;
    //Detalle de otros pagos (SEMANA)
    spOtrosPagosSemDet.Close;
    spOtrosPagosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spOtrosPagosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spOtrosPagosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosSemDet.Open;
    //Gastos (SEMANA)
    spGastosSem.Close;
    spGastosSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spGastosSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spGastosSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosSem.Open;
    //Detalle de gastos (SEMANA)
    spGastosSemDet.Close;
    spGastosSemDet.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spGastosSemDet.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spGastosSemDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosSemDet.Open;
    //Transacciones (SEMANA)
    spTransSem.Close;
    spTransSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spTransSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spTransSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransSem.Open;
    spTintoSem.Close;
    //Tintorerias (SEMANA)
    spTintoSem.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spTintoSem.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spTintoSem.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTintoSem.Open;
    //Ventas por división (SEMANA)
    spGetVentasDivisionXPeriodoSEM.Close;
    spGetVentasDivisionXPeriodoSEM.Parameters.ParamByName('@pintPeriodo').Value := 1;
    spGetVentasDivisionXPeriodoSEM.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spGetVentasDivisionXPeriodoSEM.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spGetVentasDivisionXPeriodoSEM.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetVentasDivisionXPeriodoSEM.Open;
    //Ticket Promedio (SEMANA)
    spGetTicketPromedioXPeriodoS.Close;
    spGetTicketPromedioXPeriodoS.Parameters.ParamByName('@pintPeriodo').Value := 1;
    spGetTicketPromedioXPeriodoS.Parameters.ParamByName('@pdteIni').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDia);
    spGetTicketPromedioXPeriodoS.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',vldteFecha+7-vlintDia);
    spGetTicketPromedioXPeriodoS.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetTicketPromedioXPeriodoS.Open;

     //********************************** MES **********************************//
    //Ventas (MES)
    spVentasMes.Close;
    spVentasMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spVentasMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVentasMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasMes.Open;
    //Detalle de ventas (MES)
    spVentasMesDet.Close;
    spVentasMesDet.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spVentasMesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVentasMesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasMesDet.Open;
    //Ventas mes anterior (MES)
    spVentasMesAnt.Close;
    spVentasMesAnt.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spVentasMesAnt.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spVentasMesAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasMesAnt.Open;
    //Ventas mismo mes año pasado (MES)
    spVentasMesYP.Close;
    spVentasMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spVentasMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spVentasMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasMesYP.Open;
    //Ventas cerradas (MES)
    spVtasCerrMes.Close;
    spVtasCerrMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spVtasCerrMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVtasCerrMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrMes.Open;
    //Detalle de ventas cerradas (MES)
    spVtasCerrMesDet.Close;
    spVtasCerrMesDet.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spVtasCerrMesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVtasCerrMesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrMesDet.Open;
    //Ventas cerradas mes anterior (MES)
    spVtasCerrMesAnt.Close;
    spVtasCerrMesAnt.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spVtasCerrMesAnt.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spVtasCerrMesAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrMesAnt.Open;
    //Ventas cerradas mismo mes año pasado (MES)
    spVtasCerrMesYP.Close;
    spVtasCerrMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spVtasCerrMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spVtasCerrMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrMesYP.Open;
    //Adelantos (MES)
    spAdelantosMes.Close;
    spAdelantosMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spAdelantosMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spAdelantosMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosMes.Open;
    //Detalle de Adelantos (MES)
    spAdelantosMesDet.Close;
    spAdelantosMesDet.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spAdelantosMesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spAdelantosMesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosMesDet.Open;
    //Adelantos mes anterior (MES)
    spAdelantosMesAnt.Close;
    spAdelantosMesAnt.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spAdelantosMesAnt.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spAdelantosMesAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosMesAnt.Open;
    //Adelantos mismo mes año pasado (MES)
    spAdelantosMesYP.Close;
    spAdelantosMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spAdelantosMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spAdelantosMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosMesYP.Open;
    //Liquidaciones (MES)
    spLiquidacionesMes.Close;
    spLiquidacionesMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spLiquidacionesMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spLiquidacionesMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesMes.Open;
    //Detalle de liquidaciones (MES)
    spLiquidacionesMesDet.Close;
    spLiquidacionesMesDet.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spLiquidacionesMesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spLiquidacionesMesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesMesDet.Open;
    //Liqidaciones mes anterior (MES)
    spLiquidacionesMesAnt.Close;
    spLiquidacionesMesAnt.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spLiquidacionesMesAnt.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spLiquidacionesMesAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesMesAnt.Open;
    //Liquidaciones mismo mes año pasado (MES)
    spLiquidacionesMesYP.Close;
    spLiquidacionesMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spLiquidacionesMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spLiquidacionesMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesMesYP.Open;
    //Otros pagos (MES)
    spOtrosPagosMes.Close;
    spOtrosPagosMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spOtrosPagosMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spOtrosPagosMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosMes.Open;
    //Detalle de otros pagos (MES)
    spOtrosPagosMesDet.Close;
    spOtrosPagosMesDet.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spOtrosPagosMesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spOtrosPagosMesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosMesDet.Open;
    //Otros pagos mes anterior (MES) ***
    spOtrosPagosMesv2.Close;
    spOtrosPagosMesv2.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spOtrosPagosMesv2.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spOtrosPagosMesv2.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosMesv2.Open;
    //Otros pagos mismo mes año pasado (MES)
    spOtrosPagosMesYP.Close;
    spOtrosPagosMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spOtrosPagosMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spOtrosPagosMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosMesYP.Open;
    //Pagos (MES)
    spPagosMes.Close;
    spPagosMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spPagosMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spPagosMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosMes.Open;
    //Detalle de pagos (MES)
    spPagosMesDet.Close;
    spPagosMesDet.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spPagosMesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spPagosMesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosMesDet.Open;
    //Pagos mes anterior (MES)
    spPagosMesAnt.Close;
    spPagosMesAnt.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spPagosMesAnt.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spPagosMesAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosMesAnt.Open;
    //Pagos mismo mes año pasado (MES)
    spPagosMesYP.Close;
    spPagosMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spPagosMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spPagosMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosMesYP.Open;
    //Gastos (MES)
    spGastosMes.Close;
    spGastosMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spGastosMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spGastosMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosMes.Open;
    //Detalle de gastos (MES)
    spGastosMesDet.Close;
    spGastosMesDet.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spGastosMesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spGastosMesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosMesDet.Open;
    //Gastos mes anterior (MES)
    spGastosMesAnt.Close;
    spGastosMesAnt.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spGastosMesAnt.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spGastosMesAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosMesAnt.Open;
    //Gastos mismo mes año pasado (MES)
    spGastosMesYP.Close;
    spGastosMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spGastosMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spGastosMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosMesYP.Open;
    //Transacciones (MES)
    spTransMes.Close;
    spTransMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spTransMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spTransMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransMes.Open;
    //Transacciones mes anterior (MES)
    spTransMesAnt.Close;
    spTransMesAnt.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spTransMesAnt.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spTransMesAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransMesAnt.Open;
    //Transacciones mismo mes año pasado (MES)
    spTransMesYP.Close;
    spTransMesYP.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spTransMesYP.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spTransMesYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransMesYP.Open;
    //Tintorerias (MES)
    spTintoMes.Close;
    spTintoMes.Parameters.ParamByName('@pintMes').Value := MonthOfTheYear(vldteFecha);
    spTintoMes.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spTintoMes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTintoMes.Open;
    //Ventas por división (MES)
    spGetVentasDivisionXPeriodoMES.Close;
    spGetVentasDivisionXPeriodoMES.Parameters.ParamByName('@pintPeriodo').Value := 2;
    spGetVentasDivisionXPeriodoMES.Parameters.ParamByName('@pintMes').Value := monthof(vldteFecha);
    spGetVentasDivisionXPeriodoMES.Parameters.ParamByName('@pintYear').Value := yearof(vldteFecha);
    spGetVentasDivisionXPeriodoMES.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetVentasDivisionXPeriodoMES.Open;
    //Ticket Promedio (MES)
    spGetTicketPromedioXPeriodoM.Close;
    spGetTicketPromedioXPeriodoM.Parameters.ParamByName('@pintPeriodo').Value := 2;
    spGetTicketPromedioXPeriodoM.Parameters.ParamByName('@pintMes').Value := monthof(vldteFecha);
    spGetTicketPromedioXPeriodoM.Parameters.ParamByName('@pintYear').Value := yearof(vldteFecha);
    spGetTicketPromedioXPeriodoM.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetTicketPromedioXPeriodoM.Open;
    //********************************** YEAR **********************************//
    //Ventas (YEAR)
    spVentasYear.Close;
    spVentasYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVentasYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasYear.Open;
    //Detalle de ventas (YEAR)
    spVentasYearDet.Close;
    spVentasYearDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVentasYearDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasYearDet.Open;
    //Ventas año pasado (YEAR)
    spVentasYearAnt.Close;
    spVentasYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spVentasYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasYearAnt.Open;
    //Ventas periodo 01ENE al día de hoy (YEAR)
    spVentasYearAntAlDia.Close;
    spVentasYearAntAlDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasYearAntAlDia.Parameters.ParamByName('@pdteDiaIni').Value := vldteIni;
    spVentasYearAntAlDia.Parameters.ParamByName('@pdteDiaFin').Value := vldteFin;
    spVentasYearAntAlDia.Open;
    //Ventas cerradas (YEAR)
    spVtasCerrYear.Close;
    spVtasCerrYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVtasCerrYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrYear.Open;
    //Detalle de ventas cerradas (YEAR)
    spVtasCerrYearDet.Close;
    spVtasCerrYearDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spVtasCerrYearDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrYearDet.Open;
    //Ventas cerradas año anterior (YEAR)
    spVtasCerrYearAnt.Close;
    spVtasCerrYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spVtasCerrYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrYearAnt.Open;
    //Ventas cerradas periodo 01ENE al día de hoy (YEAR)
    spVtasCerrYearAntAlDia.Close;
    spVtasCerrYearAntAlDia.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrYearAntAlDia.Parameters.ParamByName('@pdteIni').Value := vldteIni;
    spVtasCerrYearAntAlDia.Parameters.ParamByName('@pdteFin').Value := vldteFin;
    spVtasCerrYearAntAlDia.Open;
    //Adelantos año anterior (YEAR)
    spGetAdelantosXYearAnt.Close;
    spGetAdelantosXYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spGetAdelantosXYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetAdelantosXYearAnt.Open;
    spGetAdelantosXPeriodo.Close;
    spGetAdelantosXPeriodo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetAdelantosXPeriodo.Parameters.ParamByName('@pdteIni').Value := vldteIni;
    spGetAdelantosXPeriodo.Parameters.ParamByName('@pdteFin').Value := vldteFin;
    spGetAdelantosXPeriodo.Open;
    //Liquidaciones año anterior (YEAR)
    spGetLiquidacionesXYearAnt.Close;
    spGetLiquidacionesXYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spGetLiquidacionesXYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetLiquidacionesXYearAnt.Open;
    spGetLiquidacionesXPeriodo.Close;
    spGetLiquidacionesXPeriodo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetLiquidacionesXPeriodo.Parameters.ParamByName('@pdteIni').Value := vldteIni;
    spGetLiquidacionesXPeriodo.Parameters.ParamByName('@pdteFin').Value := vldteFin;
    spGetLiquidacionesXPeriodo.Open;
    //Otros Pagos año anterior (YEAR)
    spGetOtrosPagosXYearAnt.Close;
    spGetOtrosPagosXYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spGetOtrosPagosXYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetOtrosPagosXYearAnt.Open;
    spGetOtrosPagosXPeriodo.Close;
    spGetOtrosPagosXPeriodo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetOtrosPagosXPeriodo.Parameters.ParamByName('@pdteIni').Value := vldteIni;
    spGetOtrosPagosXPeriodo.Parameters.ParamByName('@pdteFin').Value := vldteFin;
    spGetOtrosPagosXPeriodo.Open;
    //Pagos año anterior (YEAR)
    spGetPagosXYearAnt.Close;
    spGetPagosXYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spGetPagosXYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetPagosXYearAnt.Open;
    spGetPagosXPeriodo.Close;
    spGetPagosXPeriodo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetPagosXPeriodo.Parameters.ParamByName('@pdteIni').Value := vldteIni;
    spGetPagosXPeriodo.Parameters.ParamByName('@pdteFin').Value := vldteFin;
    spGetPagosXPeriodo.Open;
    //Gastos año anterior (YEAR)
    spGetGastosXYearAnt.Close;
    spGetGastosXYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spGetGastosXYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetGastosXYearAnt.Open;
    spGetGastosXPeriodo.Close;
    spGetGastosXPeriodo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetGastosXPeriodo.Parameters.ParamByName('@pdteIni').Value := vldteIni;
    spGetGastosXPeriodo.Parameters.ParamByName('@pdteFin').Value := vldteFin;
    spGetGastosXPeriodo.Open;
    //Transferencias año anterior (YEAR)
    spGetTransXYearAnt.Close;
    spGetTransXYearAnt.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha)-1;
    spGetTransXYearAnt.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetTransXYearAnt.Open;
    spGetTransXPeriodo.Close;
    spGetTransXPeriodo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetTransXPeriodo.Parameters.ParamByName('@pdteIni').Value := vldteIni;
    spGetTransXPeriodo.Parameters.ParamByName('@pdteFin').Value := vldteFin;
    spGetTransXPeriodo.Open;
    //Adelantos (YEAR)
    spAdelantosYear.Close;
    spAdelantosYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spAdelantosYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosYear.Open;
    //Detalle de adelantos (YEAR)
    spAdelantosYearDet.Close;
    spAdelantosYearDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spAdelantosYearDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelantosYearDet.Open;
    //Liquidaciones (YEAR)
    spLiquidacionesYear.Close;
    spLiquidacionesYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spLiquidacionesYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesYear.Open;
    //Detalle de liquidaciones (YEAR)
    spLiquidacionesYearDet.Close;
    spLiquidacionesYearDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spLiquidacionesYearDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquidacionesYearDet.Open;
    //Pagos (YEAR)
    spPagosYear.Close;
    spPagosYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spPagosYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosYear.Open;
    //Detalle de pagos (YEAR)
    spPagosYearDet.Close;
    spPagosYearDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spPagosYearDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosYearDet.Open;
    //Otros pagos (YEAR)
    spOtrosPagosYear.Close;
    spOtrosPagosYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spOtrosPagosYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosYear.Open;
    //Detalle de otros pagos (YEAR)
    spOtrosPagosYearDet.Close;
    spOtrosPagosYearDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spOtrosPagosYearDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrosPagosYearDet.Open;
    //Gastos (YEAR)
    spGastosYear.Close;
    spGastosYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spGastosYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosYear.Open;
    //Detalle de gastos
    spGastosYearDet.Close;
    spGastosYearDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spGastosYearDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosYearDet.Open;
    //Transferencias
    spTransYear.Close;
    spTransYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spTransYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransYear.Open;
    //Tintoreria
    spTintoYear.Close;
    spTintoYear.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spTintoYear.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTintoYear.Open;
    //Ventas por división (YEAR)
    spGetVentasDivisionXPeriodoYEAR.Close;
    spGetVentasDivisionXPeriodoYEAR.Parameters.ParamByName('@pintPeriodo').Value := 3;
    spGetVentasDivisionXPeriodoYEAR.Parameters.ParamByName('@pintYear').Value := yearof(vldteFecha);
    spGetVentasDivisionXPeriodoYEAR.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetVentasDivisionXPeriodoYEAR.Open;
    //Ticket Promedio (YEAR)
    spGetTicketPromedioXPeriodoY.Close;
    spGetTicketPromedioXPeriodoY.Parameters.ParamByName('@pintPeriodo').Value := 3;
    spGetTicketPromedioXPeriodoY.Parameters.ParamByName('@pintYear').Value := yearof(vldteFecha);
    spGetTicketPromedioXPeriodoY.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetTicketPromedioXPeriodoY.Open;
    //------------------------- Inicializa campos nulos con 0.00 -----------------------------//
    plCeros();
    //----------------------------------- KPI's ----------------------------------------------//
    lblCPV.Caption  := floattostr(spGetKPIsClientes.FieldByName('CPV').Value) + '%';
    lblCR.Caption   := floattostr(spGetKPIsClientes.FieldByName('CR').Value) + '%';
    //----------------------------------- DIA ------------------------------------------------//
    //Asigna variables para calculos

    if dbeTotalDia.Text <> '' then
        vldcmTotalDia := strtofloat(StringReplace(StringReplace(dbeTotalDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTotalDia := 0;

    if dbeSubTotalDia.Text <> '' then
        vldcmSubTotalDia := strtofloat(StringReplace(StringReplace(dbeSubTotalDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmSubTotalDia := 0;

    if dbeAdelantosDia.Text <> '' then
        vldcmAdelantosDia := strtofloat(StringReplace(StringReplace(dbeAdelantosDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmAdelantosDia := 0;

    if dbeVtasCerrDia.Text <> '' then
        vldcmVtasCerrDia := strtofloat(StringReplace(StringReplace(dbeVtasCerrDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVtasCerrDia := 0;

    if dbeGastosDia.Text <> '' then
        vldcmGastosDia := strtofloat(StringReplace(StringReplace(dbeGastosDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmGastosDia := 0;

    if dbePagosDia.Text <> '' then
        vldcmPagosDia := strtofloat(StringReplace(StringReplace(dbePagosDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmPagosDia := 0;

    if dbeTranXdia.Text <> '' then
        vldcmTransDia := strtofloat(StringReplace(StringReplace(dbeTranXdia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTransDia := 0;

    if dbeVentasDia.Text <> '' then
        vldcmVentasDia := strtofloat(StringReplace(StringReplace(dbeVentasDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVentasDia := 0;

    edCxCDia.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDia - vldcmAdelantosDia - vldcmVtasCerrDia);
    edIngresoVentasDia.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDia + vldcmVtasCerrDia);
    edUtilidadDia.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDia - vldcmGastosDia);
    edEfectDia.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDia - vldcmTransDia );
    vldcmUtilidadDia := vldcmPagosDia - vldcmGastosDia;

    //Calcula los porcentajes de Ventas (Desc e IVA)
    if vldcmVentasDia <> 0 then begin
        lblVentasD.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVentasDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasDia    * 100)+'%';
        lblDescD.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(  dbeDescDia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasDia    * 100)+'%';
        lblIVAD.Caption    := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(   dbeIVADia.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmSubTotalDia  * 100)+'%';
    end;

    //Calcula los porcentajes de Ventas (Liquidaciones, Adelantos y CxC)
    if vldcmTotalDia <> 0 then begin
        lblPendienteD.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edCxCDia.Text        ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalDia * 100)+'%';
        lblCerradasD.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVtasCerrDia.Text  ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalDia * 100)+'%';
        lblAdelD.Caption       := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeAdelantosDia.Text ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalDia * 100)+'%';
    end;

    //Calcula los porcentajes del Ingreso (Ventas, Liq, Otros, Gastos, Transf y Efect)
    if vldcmPagosDia <> 0 then begin
        lblIngresoVtasD.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edIngresoVentasDia.Text,   ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosDia * 100)+'%';
        lblLiquD.Caption          := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeLiquidacionesDia.Text,  ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosDia * 100)+'%';
        lblOtrPagosD .Caption     := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeOtrosPagosDia.Text,     ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosDia * 100)+'%';
        lblIngresoTotalD.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbePagosDia.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosDia * 100)+'%';
        lblGastosD.Caption        := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeGastosDia.Text,         ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosDia * 100)+'%';

        if vldcmUtilidadDia = 0  then begin
            lblTransferD.Caption := '0.0%';
            lblEfectivoD.Caption := '0.0%';
        end
        else begin
            lblTransferD.Caption      := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeTranXdia.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadDia * 100)+'%';
            lblEfectivoD.Caption      := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edEfectDia.Text,           ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadDia * 100)+'%';
        end;
    end;

    //----------------------------------- SEM ------------------------------------------------//
    if dbeTotalSem.Text <> '' then
        vldcmTotalSem := strtofloat(StringReplace(StringReplace(dbeTotalSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTotalSem := 0;

    if dbeSubtotalSem.Text <> '' then
        vldcmSubtotalSem := strtofloat(StringReplace(StringReplace(dbeSubtotalSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTotalSem := 0;

    if dbeAdelantosSem.Text <> '' then
        vldcmAdelantosSem := strtofloat(StringReplace(StringReplace(dbeAdelantosSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmAdelantosSem := 0;

    if dbeVtaCerrSem.Text <> '' then
        vldcmVtasCerrSem := strtofloat(StringReplace(StringReplace(dbeVtaCerrSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVtasCerrSem := 0;

    if dbeGastosSem.Text <> '' then
        vldcmGastosSem := strtofloat(StringReplace(StringReplace(dbeGastosSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmGastosSem := 0;

    if dbePagosSem.Text <> '' then
        vldcmPagosSem := strtofloat(StringReplace(StringReplace(dbePagosSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmPagosSem := 0;

    if dbeTransSem.Text <> '' then
        vldcmTransSem := strtofloat(StringReplace(StringReplace(dbeTransSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTransSem := 0;

    if dbeVentasSem.Text <> '' then
        vldcmVentasSem := strtofloat(StringReplace(StringReplace(dbeVentasSem.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVentasSem := 0;

    edCxCSem.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalSem - vldcmAdelantosSem - vldcmVtasCerrSem);
    edIngresoVentasSem.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosSem + vldcmVtasCerrSem);
    edUtilidadSem.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosSem - vldcmGastosSem);
    edEfectSem.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosSem - vldcmGastosSem - vldcmTransSem );
    vldcmUtilidadSem        := vldcmPagosSem - vldcmGastosSem;

    if vldcmVentasSem <> 0 then begin
        lblVentasS.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVentasSem.Text   ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasSem * 100)+'%';
        lblDescS.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeDescSem.Text       ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasSem * 100)+'%';
        lblIVAS.Caption    := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeIVASem.Text        ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmSubtotalSem * 100)+'%';
    end;
    if vldcmTotalSem <> 0 then begin
        lblPendienteS.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edCxCSem.Text         ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalSem * 100)+'%';
        lblCerradasS.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVtaCerrSem.Text    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalSem * 100)+'%';
        lblAdelS.Caption       := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeAdelantosSem.Text  ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalSem * 100)+'%';
    end;
    if vldcmPagosSem <> 0 then begin
        lblIngresoVtasS.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edIngresoVentasSem.Text,   ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosSem * 100)+'%';
        lblLiquS.Caption          := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeLiquidacionesSem.Text,  ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosSem * 100)+'%';
        lblOtrPagosS .Caption     := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeOtrosPagosSem.Text,     ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosSem * 100)+'%';
        lblIngresoTotalS.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbePagosSem.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosSem * 100)+'%';
        lblGastosS.Caption        := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeGastosSem.Text,         ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosSem * 100)+'%';
        lblTransferS.Caption      := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeTransSem.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadSem * 100)+'%';
        lblEfectivoS.Caption      := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edEfectSem.Text,           ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadSem * 100)+'%';
    end;
    //----------------------------------- MES ------------------------------------------------//

    if dbeTotalMes.Text <> '' then
        vldcmTotalMes := strtofloat(StringReplace(StringReplace(dbeTotalMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTotalMes := 0;
    if dbeSubtotalMes.Text <> '' then
        vldcmSubtotalMes := strtofloat(StringReplace(StringReplace(dbeSubtotalMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmSubtotalMes := 0;
    if dbeAdelantosMes.Text <> '' then
        vldcmAdelantosMes := strtofloat(StringReplace(StringReplace(dbeAdelantosMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmAdelantosMes := 0;
    if dbeVntasCerrMes.Text <> '' then
        vldcmVtasCerrMes := strtofloat(StringReplace(StringReplace(dbeVntasCerrMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVtasCerrMes := 0;
    if dbeGastosMes.Text <> '' then
        vldcmGastosMes := strtofloat(StringReplace(StringReplace(dbeGastosMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmGastosMes := 0;
    if dbePagosMes.Text <> '' then
        vldcmPagosMes := strtofloat(StringReplace(StringReplace(dbePagosMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmPagosMes := 0;
    if dbeTransMes.Text <> '' then
        vldcmTransMes := strtofloat(StringReplace(StringReplace(dbeTransMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTransMes := 0;
    if dbeVentasMes.Text <> '' then
        vldcmVentasMes := strtofloat(StringReplace(StringReplace(dbeVentasMes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVentasMes := 0;

    edCxCMes.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalMes - vldcmAdelantosMes - vldcmVtasCerrMes);
    edIngresoVentasMes.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosMes + vldcmVtasCerrMes);
    edUtilidadMes.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosMes - vldcmGastosMes);
    edEfectMes.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosMes - vldcmGastosMes - vldcmTransMes );
    vldcmUtilidadMes        := vldcmPagosMes - vldcmGastosMes;





    if dbeTotalMesYP.Text <> '' then
        vldcmTotalMesAnt := strtofloat(StringReplace(StringReplace(dbeTotalMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTotalMesAnt := 0;

    if dbeSubtotalMesYP.Text <> '' then
        vldcmSubtotalMesAnt := strtofloat(StringReplace(StringReplace(dbeSubtotalMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmSubtotalMesAnt := 0;

    if dbeAdelantosMesYP.Text <> '' then
        vldcmAdelantosMesAnt := strtofloat(StringReplace(StringReplace(dbeAdelantosMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmAdelantosMesAnt := 0;

    if dbeVtaCerrMesYP.Text <> '' then
        vldcmVtasCerrMesAnt := strtofloat(StringReplace(StringReplace(dbeVtaCerrMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVtasCerrMesAnt := 0;

    if dbeGastosMesYP.Text <> '' then
        vldcmGastosMesAnt := strtofloat(StringReplace(StringReplace(dbeGastosMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmGastosMesAnt := 0;

    if dbePagosMesYP.Text <> '' then
        vldcmPagosMesAnt := strtofloat(StringReplace(StringReplace(dbePagosMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmPagosMesAnt := 0;

    if dbeTransMesYP.Text <> '' then
        vldcmTransMesAnt := strtofloat(StringReplace(StringReplace(dbeTransMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTransMesAnt := 0;

    if dbeVtasMesYP.Text <> '' then
        vldcmVentasMesAnt := strtofloat(StringReplace(StringReplace(dbeVtasMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVentasMesAnt := 0;

    edCxCMesYP.Text         := '$' + FormatCurr('##,##0.00', vldcmTotalMesAnt - vldcmAdelantosMesAnt - vldcmVtasCerrMesAnt);
    edIngresoVtasMEsYP.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosMesAnt + vldcmVtasCerrMesAnt);
    edUtilidadMesYP.Text    := '$' + FormatCurr('##,##0.00', vldcmPagosMesAnt - vldcmGastosMesAnt);
    edEfecMesYP.Text        := '$' + FormatCurr('##,##0.00', vldcmPagosMesAnt - vldcmGastosMesAnt - vldcmTransMesAnt );
    vldcmUtilidadMes        := vldcmPagosMesAnt - vldcmGastosMesAnt;








    if dbeTotalMesYP.Text <> '' then
        vldcmTotalMesYP := strtofloat(StringReplace(StringReplace(dbeTotalMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTotalMesYP := 0;

    if dbeSubtotalMesYP.Text <> '' then
        vldcmSubtotalMesYP := strtofloat(StringReplace(StringReplace(dbeSubtotalMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmSubtotalMesYP := 0;

    if dbeAdelantosMesYP.Text <> '' then
        vldcmAdelantosMesYP := strtofloat(StringReplace(StringReplace(dbeAdelantosMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmAdelantosMesYP := 0;

    if dbeVtaCerrMesYP.Text <> '' then
        vldcmVtasCerrMesYP := strtofloat(StringReplace(StringReplace(dbeVtaCerrMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVtasCerrMesYP := 0;

    if dbeGastosMesYP.Text <> '' then
        vldcmGastosMesYP := strtofloat(StringReplace(StringReplace(dbeGastosMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmGastosMesYP := 0;

    if dbePagosMesYP.Text <> '' then
        vldcmPagosMesYP := strtofloat(StringReplace(StringReplace(dbePagosMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmPagosMesYP := 0;

    if dbeTransMesYP.Text <> '' then
        vldcmTransMesYP := strtofloat(StringReplace(StringReplace(dbeTransMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTransMesYP := 0;

    if dbeVtasMesYP.Text <> '' then
        vldcmVentasMesYP := strtofloat(StringReplace(StringReplace(dbeVtasMesYP.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVentasMesYP := 0;

    edCxCMesYP.Text         := '$' + FormatCurr('##,##0.00', vldcmTotalMesYP - vldcmAdelantosMesYP - vldcmVtasCerrMesYP);
    edIngresoVtasMEsYP.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosMesYP + vldcmVtasCerrMesYP);
    edUtilidadMesYP.Text    := '$' + FormatCurr('##,##0.00', vldcmPagosMesYP - vldcmGastosMesYP);
    edEfecMesYP.Text        := '$' + FormatCurr('##,##0.00', vldcmPagosMesYP - vldcmGastosMesYP - vldcmTransMesYP );
    vldcmUtilidadMes        := vldcmPagosMesYP - vldcmGastosMesYP;

















    if vldcmVentasMes <> 0 then begin
        lblVentasM.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVentasMes.Text   ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasMes * 100)+'%';
        lblDescM.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeDescMes.Text       ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasMes * 100)+'%';
        lblIVAM.Caption    := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeIVAMes.Text        ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasMes * 100)+'%';
    end;
    if vldcmTotalMes <> 0 then begin
        lblPendienteM.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edCxCMes.Text         ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalMes * 100)+'%';
        lblCerradasM.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVntasCerrMes.Text  ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalMes * 100)+'%';
        lblAdelM.Caption       := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeAdelantosMes.Text  ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmSubtotalMes * 100)+'%';
    end;
    if vldcmPagosMes <> 0 then begin
        lblIngresoVtasM.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edIngresoVentasMes.Text,   ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosMes * 100)+'%';
        lblLiquM.Caption          := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeLiquidacionesMes.Text,  ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosMes * 100)+'%';
        lblOtrPagosM .Caption     := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeOtrosPagosMes.Text,     ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosMes * 100)+'%';
        lblIngresoTotalM.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbePagosMes.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosMes * 100)+'%';
        lblGastosM.Caption        := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeGastosMes.Text,         ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosMes * 100)+'%';
        lblTransM.Caption         := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeTransMes.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadMes * 100)+'%';
        lblEfectM.Caption         := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edEfectMes.Text,           ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadMes * 100)+'%';
    end;


    edComposturas.Text := '0';
    lblComposturas.Caption := '0%';
    edTintorerias.Text := '0';
    lblTintorerias.Caption := '0%';
    edBordados.Text := '0';
    lblBordados.Caption := '0%';
    edVentas.Text := '0';
    lblVentas.Caption := '0%';
    edConfeccion.Text := '0';
    lblConfeccion.Caption := '0%';
    edPlanchado.Text := '0';
    lblPlanchado.Caption := '0%';

    plCalculoKPIs();

    //----------------------------------- YEAR ------------------------------------------------//

    if dbeTotalYear.Text <> '' then
        vldcmTotalYear := strtofloat(StringReplace(StringReplace(dbeTotalYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTotalYear := 0;

    if dbeSubtotalYear.Text <> '' then
        vldcmSubtotalYear := strtofloat(StringReplace(StringReplace(dbeSubtotalYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmSubtotalYear := 0;

    if dbeAdelantosYear.Text <> '' then
        vldcmAdelantosYear := strtofloat(StringReplace(StringReplace(dbeAdelantosYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmAdelantosYear := 0;

    if dbeVtasCerrYear.Text <> '' then
        vldcmVtasCerrYear := strtofloat(StringReplace(StringReplace(dbeVtasCerrYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVtasCerrYear := 0;

    if dbeGastosYear.Text <> '' then
        vldcmGastosYear := strtofloat(StringReplace(StringReplace(dbeGastosYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmGastosYear := 0;

    if dbePagosYear.Text <> '' then
        vldcmPagosYear := strtofloat(StringReplace(StringReplace(dbePagosYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmPagosYear := 0;

    if dbeTransYear.Text <> '' then
        vldcmTransYear := strtofloat(StringReplace(StringReplace(dbeTransYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmTransYear := 0;

    if dbeVentasYear.Text <> '' then
        vldcmVentasYear := strtofloat(StringReplace(StringReplace(dbeVentasYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
        vldcmVentasYear := 0;

    edCxCYear.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalYear - vldcmAdelantosYear - vldcmVtasCerrYear);
    edIngresoVentasYear.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosYear + vldcmVtasCerrYear);
    edUtilidadYear.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosYear - vldcmGastosYear);
    edEfectYear.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosYear - vldcmGastosYear - vldcmTransYear);
    vldcmUtilidadYear        := vldcmPagosYear - vldcmGastosYear;

    vldcmVentasYear := strtofloat(StringReplace(StringReplace(dbeVentasYear.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]));
    if vldcmVentasYear <> 0 then begin
        lblVentasY.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVentasYear.Text  ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasYear * 100)+'%';
        lblDescY.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeDescYear.Text      ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasYear * 100)+'%';
        lblIVAY.Caption    := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeIVAYear.Text       ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmVentasYear * 100)+'%';
    end;
    if vldcmTotalYear <> 0 then begin
        lblPendienteY.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edCxCYear.Text          ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalYear * 100)+'%';
        lblCerradasY.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeVtasCerrYear .Text   ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalYear * 100)+'%';
        lblAdelY.Caption       := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeAdelantosYear.Text   ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmTotalYear * 100)+'%';
    end;
    if vldcmPagosYear <> 0 then begin
        lblIngresoVtasY.Caption   := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edIngresoVentasYear.Text,   ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosYear * 100)+'%';
        lblLiquY.Caption          := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeLiquidacionesYear.Text,  ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosYear * 100)+'%';
        lblOtrPagosY .Caption     := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeOtrosPagosYear.Text,     ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosYear * 100)+'%';
        lblIngresoTotalY.Caption  := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbePagosYear.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosYear * 100)+'%';
        lblGastosY.Caption        := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeGastosYear.Text,         ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmPagosYear * 100)+'%';
        lblTransY.Caption         := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(dbeTransYear.Text,          ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadYear * 100)+'%';
        lblEfectY.Caption         := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(edEfectYear.Text,           ',','',[rfReplaceAll]),'$','',[rfReplaceAll])) /  vldcmUtilidadYear * 100)+'%';
    end;

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //Inicio de calculos por dia de la semana
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    vlintDiaSemana := DayOfWeek(vldteFecha);

    i := 1;
    lblDomingo.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
    spVentasDiaDomingo.Close;
    spVentasDiaDomingo.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVentasDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVentasDiaDomingo.Open;
    spVtasCerrDiaDomingo.Close;
    spVtasCerrDiaDomingo.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spVtasCerrDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spVtasCerrDiaDomingo.Open;
    spAdelDiaDomingo.Close;
    spAdelDiaDomingo.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spAdelDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spAdelDiaDomingo.Open;
    spLiquDiaDomingo.Close;
    spLiquDiaDomingo.Parameters.ParamByName('@pdteDia').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spLiquDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spLiquDiaDomingo.Open;
    spPagosDiaDomingo.Close;
    spPagosDiaDomingo.Parameters.ParamByName('@pdteDia').Value    := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spPagosDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spPagosDiaDomingo.Open;
    spOtrPagosDiaDomingo.Close;
    spOtrPagosDiaDomingo.Parameters.ParamByName('@pdteDia').Value := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spOtrPagosDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spOtrPagosDiaDomingo.Open;
    spGastosDiaDomingo.Close;
    spGastosDiaDomingo.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spGastosDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGastosDiaDomingo.Open;
    spTransDiaDomingo.Close;
    spTransDiaDomingo.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spTransDiaDomingo.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransDiaDomingo.Open;
    i := i + 1;
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
    spTransDiaLunes.Close;
    spTransDiaLunes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spTransDiaLunes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransDiaLunes.Open;
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
    spTransDiaMartes.Close;
    spTransDiaMartes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spTransDiaMartes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransDiaMartes.Open;

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
    spTransDiaMiercoles.Close;
    spTransDiaMiercoles.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spTransDiaMiercoles.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransDiaMiercoles.Open;
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
    spTransDiaJueves.Close;
    spTransDiaJueves.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spTransDiaJueves.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransDiaJueves.Open;
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
    spTransDiaViernes.Close;
    spTransDiaViernes.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spTransDiaViernes.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransDiaViernes.Open;
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
    spTransDiaSabado.Close;
    spTransDiaSabado.Parameters.ParamByName('@pdteDia').Value   := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
    spTransDiaSabado.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spTransDiaSabado.Open;

    //------------------------- Inicializa campos nulos con 0.00 -----------------------------//
    //----------------------------------- DIA DOMINGO ------------------------------------------//

    if dbeSubTotalDiaDomingo.Text = '' then
        dbeSubTotalDiaDomingo.Text := '$0.00';

    if dbeTotalDiaDomingo.Text <> '' then
        vldcmTotalDiaDom := strtofloat(StringReplace(StringReplace(dbeTotalDiaDomingo.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaDom := 0;
        dbeTotalDiaDomingo.Text := '$0.00';
    end;
    if dbeAdelDiaDomingo.Text <> '' then
        vldcmAdelantosDiaDom := strtofloat(StringReplace(StringReplace(dbeAdelDiaDomingo.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmAdelantosDiaDom := 0;
        dbeAdelDiaDomingo.Text := '$0.00';
    end;
    if dbeVtasCerrDiaDomingo.Text <> '' then
        vldcmVtasCerrDiaDom := strtofloat(StringReplace(StringReplace(dbeVtasCerrDiaDomingo.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmVtasCerrDiaDom := 0;
        dbeVtasCerrDiaDomingo.Text := '$0.00';
    end;
    if dbeGastosDiaDomingo.Text <> '' then
        vldcmGastosDiaDom := strtofloat(StringReplace(StringReplace(dbeGastosDiaDomingo.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmGastosDiaDom := 0;
        dbeGastosDiaDomingo.Text := '$0.00';
    end;
    if dbePagosDiaDomingo.Text <> '' then
        vldcmPagosDiaDom := strtofloat(StringReplace(StringReplace(dbePagosDiaDomingo.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDiaDom := 0;
        dbePagosDiaDomingo.Text := '$0.00';
    end;
    if dbeTranDiaDomingo.Text <> '' then
        vldcmTranDiaDom := strtofloat(StringReplace(StringReplace(dbeTranDiaDomingo.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaDom := 0;
        dbeTranDiaDomingo.Text := '$0.00';
    end;



    edCxCDiaDomingo.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaDom - vldcmAdelantosDiaDom - vldcmVtasCerrDiaDom);
    edIngresoVentasDiaDomingo.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaDom + vldcmVtasCerrDiaDom);
    edUtilidadDiaDomingo.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaDom - vldcmGastosDiaDom);
    edEfectDiaDomingo.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaDom - vldcmGastosDiaDom - vldcmTranDiaDom );

    if dbeVentasDiaDomingo.Text = '' then
        dbeVentasDiaDomingo.Text := '$0.00';
    if dbeDescDiaDomingo.Text = '' then
        dbeDescDiaDomingo.Text := '$0.00';
    if dbeIVADiaDomingo.Text = '' then
        dbeIVADiaDomingo.Text := '$0.00';
    if dbeLiquDiaDomingo.Text = '' then
        dbeLiquDiaDomingo.Text := '$0.00';
    if dbeOtrPagosDiaDomingo.Text = '' then
        dbeOtrPagosDiaDomingo.Text := '$0.00';
    if dbeGastosDiaDomingo.Text = '' then
        dbeGastosDiaLunes.Text := '$0.00';

//----------------------------------- DIA Lunes ------------------------------------------//
    if dbeSubTotalDiaLunes.Text = '' then
        dbeSubTotalDiaLunes.Text := '$0.00';

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
    if dbePagosDiaLunes.Text <> '' then
        vldcmPagosDiaLunes := strtofloat(StringReplace(StringReplace(dbePagosDiaLunes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDiaLunes := 0;
        dbePagosDiaLunes.Text := '$0.00';
    end;
    if dbeTranDiaLunes.Text <> '' then
        vldcmTranDiaLunes := strtofloat(StringReplace(StringReplace(dbeTranDiaLunes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaLunes := 0;
        dbeTranDiaLunes.Text := '$0.00';
    end;

    edCxCDiaLunes.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaLunes - vldcmAdelantosDiaLunes - vldcmVtasCerrDiaLunes);
    edIngresoVentasDiaLunes.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaLunes + vldcmVtasCerrDiaLunes);
    edUtilidadDiaLunes.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaLunes - vldcmGastosDiaLunes);
    edEfectDiaLunes.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaLunes - vldcmGastosDiaLunes - vldcmTranDiaLunes );

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
    if dbeGastosDiaLunes.Text = '' then
        dbeGastosDiaLunes.Text := '$0.00';

//----------------------------------- DIA Martes ------------------------------------------//
    if dbeSubTotalDiaMartes.Text = '' then
        dbeSubTotalDiaMartes.Text := '$0.00';

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
    if dbePagosDiaMartes.Text <> '' then
        vldcmPagosDiaMartes := strtofloat(StringReplace(StringReplace(dbePagosDiaMartes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDiaMartes := 0;
        dbePagosDiaMartes.Text := '$0.00';
    end;
    if dbeTranDiaMartes.Text <> '' then
        vldcmTranDiaMartes := strtofloat(StringReplace(StringReplace(dbeTranDiaMartes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaMartes := 0;
        dbeTranDiaMartes.Text := '$0.00';
    end;

    edCxCDiaMartes.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaMartes - vldcmAdelantosDiaMartes - vldcmVtasCerrDiaMartes);
    edIngresoVentasDiaMartes.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaMartes + vldcmVtasCerrDiaMartes);
    edUtilidadDiaMartes.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaMartes - vldcmGastosDiaMartes);
    edEfectDiaMartes.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaMartes - vldcmGastosDiaMartes - vldcmTranDiaMartes );

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
    if dbeGastosDiaMartes.Text = '' then
        dbeGastosDiaMartes.Text := '$0.00';

//----------------------------------- DIA Miercoles ------------------------------------------//
    if dbeSubTotalDiaMiercoles.Text = '' then
        dbeSubTotalDiaMiercoles.Text := '$0.00';

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
    if dbePagosDiaMierc.Text <> '' then
        vldcmPagosDiaMierc := strtofloat(StringReplace(StringReplace(dbePagosDiaMierc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDiaMierc := 0;
        dbePagosDiaMierc.Text := '$0.00';
    end;
    if dbeTranDiaMierc.Text <> '' then
        vldcmTranDiaMierc := strtofloat(StringReplace(StringReplace(dbeTranDiaMierc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaMierc := 0;
        dbeTranDiaMierc.Text := '$0.00';
    end;

    edCxCDiaMierc.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaMierc - vldcmAdelantosDiaMierc - vldcmVtasCerrDiaMierc);
    edIngresoVentasDiaMierc.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaMierc + vldcmVtasCerrDiaMierc);
    edUtilidadDiaMierc.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaMierc - vldcmGastosDiaMierc);
    edEfectDiaMiercoles.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaMierc - vldcmGastosDiaMierc - vldcmTranDiaMierc );

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
    if dbeGastosDiaMierc.Text = '' then
        dbeGastosDiaMierc.Text := '$0.00';

//----------------------------------- DIA Jueves ------------------------------------------//
    if dbeSubTotalDiaJueves.Text = '' then
        dbeSubTotalDiaJueves.Text := '$0.00';

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
    if dbePagosDiaJueves.Text <> '' then
        vldcmPagosDiaJueves := strtofloat(StringReplace(StringReplace(dbePagosDiaJueves.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDiaJueves := 0;
        dbePagosDiaJueves.Text := '$0.00';
    end;
    if dbeTranDiaJueves.Text <> '' then
        vldcmTranDiaJueves := strtofloat(StringReplace(StringReplace(dbeTranDiaJueves.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaJueves := 0;
        dbeTranDiaJueves.Text := '$0.00';
    end;

    edCxCDiaJueves.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaJueves - vldcmAdelantosDiaJueves - vldcmVtasCerrDiaJueves);
    edIngresoVentasDiaJueves.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaJueves + vldcmVtasCerrDiaJueves);
    edUtilidadDiaJueves.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaJueves - vldcmGastosDiaJueves);
    edEfectDiaJueves.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaJueves - vldcmGastosDiaJueves - vldcmTranDiaJueves );

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
    if dbeGastosDiaJueves.Text = '' then
        dbeGastosDiaJueves.Text := '$0.00';

//----------------------------------- DIA Viernes ------------------------------------------//
    if dbeSubTotalDiaViernes.Text = '' then
        dbeSubTotalDiaViernes.Text := '$0.00';

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
    if dbePagosDiaViernes.Text <> '' then
        vldcmPagosDiaViernes := strtofloat(StringReplace(StringReplace(dbePagosDiaViernes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDiaViernes := 0;
        dbePagosDiaViernes.Text := '$0.00';
    end;
    if dbeTranDiaViernes.Text <> '' then
        vldcmTranDiaViernes := strtofloat(StringReplace(StringReplace(dbeTranDiaViernes.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaViernes := 0;
        dbeTranDiaViernes.Text := '$0.00';
    end;

    edCxCDiaViernes.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaViernes - vldcmAdelantosDiaViernes - vldcmVtasCerrDiaViernes);
    edIngresoVentasDiaViernes.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaViernes + vldcmVtasCerrDiaViernes);
    edUtilidadDiaViernes.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaViernes - vldcmGastosDiaViernes);
    edEfectDiaViernes.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaViernes - vldcmGastosDiaViernes - vldcmTranDiaViernes );

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
    if dbeGastosDiaViernes.Text = '' then
        dbeGastosDiaViernes.Text := '$0.00';

//----------------------------------- DIA Sabado ------------------------------------------//
    if dbeSubTotalDiaSabado.Text = '' then
        dbeSubTotalDiaSabado.Text := '$0.00';

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
    if dbePagosDiaSabado.Text <> '' then
        vldcmPagosDiaSabado := strtofloat(StringReplace(StringReplace(dbePagosDiaSabado.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmPagosDiaSabado := 0;
        dbePagosDiaSabado.Text := '$0.00';
    end;
    if dbeTranDiaSabado.Text <> '' then
        vldcmTranDiaSabado := strtofloat(StringReplace(StringReplace(dbeTranDiaSabado.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaSabado := 0;
        dbeTranDiaSabado.Text := '$0.00';
    end;

    edCxCDiaSabado.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaSabado - vldcmAdelantosDiaSabado - vldcmVtasCerrDiaSabado);
    edIngresoVentasDiaSabado.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaSabado + vldcmVtasCerrDiaSabado);
    edUtilidadDiaSabado.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaSabado - vldcmGastosDiaSabado);
    edEfectDiaSabado.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaSabado - vldcmGastosDiaSabado - vldcmTranDiaSabado );

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
    if dbeGastosDiaSabado.Text = '' then
        dbeGastosDiaSabado.Text := '$0.00';

//----------------------------------- DIA WEEK ------------------------------------------//
    if dbeSubTotalDiaWeek.Text = '' then
        dbeSubTotalDiaWeek.Text := '$0.00';

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
    if dbePagosDiaWeek.Text <> '' then
        vldcmPagosDiaWeek := strtofloat(StringReplace(StringReplace(dbePagosDiaWeek.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTotalDiaWeek := 0;
        dbeTotalDiaWeek.Text := '$0.00';
    end;
    if dbeTranDiaWeek.Text <> '' then
        vldcmTranDiaWeek := strtofloat(StringReplace(StringReplace(dbeTranDiaWeek.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else begin
        vldcmTranDiaWeek := 0;
        dbeTranDiaWeek.Text := '$0.00';
    end;

    edCxCDiaWeek.Text           := '$' + FormatCurr('##,##0.00', vldcmTotalDiaWeek - vldcmAdelantosDiaWeek - vldcmVtasCerrDiaWeek);
    edIngresoVentasDiaWeek.Text := '$' + FormatCurr('##,##0.00', vldcmAdelantosDiaWeek + vldcmVtasCerrDiaWeek);
    edUtilidadDiaWeek.Text      := '$' + FormatCurr('##,##0.00', vldcmPagosDiaWeek - vldcmGastosDiaWeek);
    edEfectDiaWeek.Text         := '$' + FormatCurr('##,##0.00', vldcmPagosDiaWeek - vldcmGastosDiaWeek - vldcmTranDiaWeek);



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
    if dbeGastosDiaWeek.Text = '' then
        dbeGastosDiaWeek.Text := '$0.00';
    if dbePagosDiaWeek.Text = '' then
        dbePagosDiaWeek.Text := '$0.00';



    plCeros;
end;

procedure TfrmReportesAdmin.cbxDiaClick(Sender: TObject);
var
  vlintPrendas,I: integer;
begin
  if cbxDia.Checked = true then
  begin
      cbxDia.Checked := true;
      cbxSem.Checked := false;
      cbxMes.Checked := false;
      cbxYear.Checked := false;

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

    plCalculoKPIs();

  end;
end;

procedure TfrmReportesAdmin.cbxSemClick(Sender: TObject);
var
  vlintPrendas,I: integer;
begin
  if cbxSem.Checked = true then
  begin
      cbxDia.Checked := false;
      cbxSem.Checked := true;
      cbxMes.Checked := false;
      cbxYear.Checked := false;

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

      plCalculoKPIs();
  end;
end;

procedure TfrmReportesAdmin.cbxMesClick(Sender: TObject);
begin
  if cbxMes.Checked = true then
  begin
      cbxDia.Checked := false;
      cbxSem.Checked := false;
      cbxMes.Checked := true;
      cbxYear.Checked := false;

      dbgVentas.DataSource        := dsVentasMesDet;
      dbgVtasCerr.DataSource      := dsVtasCerrMesDet;
      dbgAdelantos.DataSource     := dsAdelantosMesDet;
      dbgLiquidaciones.DataSource := dsLiquidacionesMesDet;
      dbgPagos.DataSource         := dsPagosMesDet;
      dbgOtrosPagos.DataSource    := dsOtrosPagosMesDet;
      dbgGastos.DataSource        := dsGastosMesDet;
      dbfImporte.DataSource       := dsVentasMes;
      dbfDesc.DataSource          := dsVentasMes;
      dbfIVA.DataSource           := dsVentasMes;
      dbfTotal.DataSource         := dsVentasMes;
      dbfAdelanto.DataSource      := dsVentasMes;
      dbfCxC.DataSource           := dsVentasMes;

      plCalculoKPIs();
  end;
end;

procedure TfrmReportesAdmin.cbxYearClick(Sender: TObject);
begin
  if cbxYear.Checked = true then
  begin
      cbxDia.Checked := false;
      cbxSem.Checked := false;
      cbxMes.Checked := false;
      cbxYear.Checked := true;

      dbgVentas.DataSource        := dsVentasYearDet;
      dbgVtasCerr.DataSource      := dsVtasCerrYearDet;
      dbgAdelantos.DataSource     := dsAdelantosYearDet;
      dbgLiquidaciones.DataSource := dsLiquidacionesYearDet;
      dbgPagos.DataSource         := dsPagosYearDet;
      dbgOtrosPagos.DataSource    := dsOtrosPagosYearDet;
      dbgGastos.DataSource        := dsGastosYearDet;
      dbfImporte.DataSource       := dsVentasYear;
      dbfDesc.DataSource          := dsVentasYear;
      dbfIVA.DataSource           := dsVentasYear;
      dbfTotal.DataSource         := dsVentasYear;
      dbfAdelanto.DataSource      := dsVentasYear;
      dbfCxC.DataSource           := dsVentasYear;

      plCalculoKPIs();
  end;
end;

procedure TfrmReportesAdmin.dblkcSucursalesClick(Sender: TObject);
begin
     btnConsultar.Click;
end;

procedure TfrmReportesAdmin.FormCreate(Sender: TObject);
begin
    //Conn.Close;

    if vgIesPROD = 1 then
      Conn.ConnectionString := vgCadenaConexion
    else
      Conn.ConnectionString := vgCadenaConexionDes;

    try
      Conn.Open;
    except
      On E: Exception do
      begin
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ReportesAdmin');
      end;
    end;

    dtpCalendario.Date := now();
    vldteFecha := now();

    spGetSucursales.Open;

    if vgIdTipoUsuario <> 3 then begin
        dblkcSucursales.KeyValue := vgintSucursal;
        dblkcSucursales.Enabled := false;
        vlintAlcance := vgintSucursal;
    end
    else begin
        dblkcSucursales.KeyValue := 0;
        dblkcSucursales.Enabled := true;
        vlintAlcance := 0;
    end;

    btnConsultar.Click;

end;

procedure TfrmReportesAdmin.chbxMMAPClick(Sender: TObject);
begin
  if chbxMMAP.Checked = true then
  begin
      chbxMMAP.Checked := true;
      dbeVtasMesYP.DataSource         := dsVentasMesYP;
      dbeDescMesYP.DataSource         := dsVentasMesYP;
      dbeTotalMesYP.DataSource        := dsVentasMesYP;
      dbeSubtotalMesYP.DataSource     := dsVentasMesYP;
      dbeIVAMesYP.DataSource          := dsVentasMesYP;
      dbeVtaCerrMesYP.DataSource      := dsVtasCerrMesYP;
      dbeLiquidacionesMesYP.DataSource:= dsLiquidacionesMesYP;
      dbeAdelantosMesYP.DataSource    := dsAdelantosMesYP;
      dbeOtrosPagosMesYPv2.DataSource := dsOtrosPagosMesYP;
      dbePagosMesYP.DataSource        := dsPagosMesYP;
      dbeGastosMesYP.DataSource       := dsGastosMesYP;
      dbeTransMesYP.DataSource        := dsTransMesYP;
  end
  else begin
      chbxMMAP.Checked := false;
      dbeVtasMesYP.DataSource         := dsVentasMesAnt;
      dbeDescMesYP.DataSource         := dsVentasMesAnt;
      dbeTotalMesYP.DataSource        := dsVentasMesAnt;
      dbeSubtotalMesYP.DataSource     := dsVentasMesAnt;
      dbeIVAMesYP.DataSource          := dsVentasMesAnt;
      dbeVtaCerrMesYP.DataSource      := dsVtasCerrMesAnt;
      dbeLiquidacionesMesYP.DataSource:= dsLiquidacionesMesAnt;
      dbeAdelantosMesYP.DataSource    := dsAdelantosMesAnt;
      dbeOtrosPagosMesYPv2.DataSource := dsOtrosPagosMesv2;
      dbePagosMesYP.DataSource        := dsPagosMesAnt;
      dbeGastosMesYP.DataSource       := dsGastosMesAnt;
      dbeTransMesYP.DataSource        := dsTransMesAnt;
  end;

  plCeros;

end;

procedure TfrmReportesAdmin.chbxAPADClick(Sender: TObject);
begin
  if chbxAPAD.Checked = true then
  begin
      chbxAPAD.Checked := true;
      dbeVentasYP.DataSource        := dsVentasYearAntAlDia;
      dbeDescYP.DataSource          := dsVentasYearAntAlDia;
      dbeTotalYP.DataSource         := dsVentasYearAntAlDia;
      dbeSubtotalYP.DataSource      := dsVentasYearAntAlDia;
      dbeIVAYP.DataSource           := dsVentasYearAntAlDia;
      dbeVtasCerrYP.DataSource      := dsVtasCerrYearAntAlDia;
      dbeAdelantosYP.DataSource     := dsGetAdelantosXPeriodo;
      dbeLiquidacionesYP.DataSource := dsGetLiquidacionesXPeriodo;
      dbeOtrosPagosYP.DataSource    := dsGetOtrosPagosXPeriodo;
      dbePagosYP.DataSource         := dsGetPagosXPeriodo;
      dbeGastosYP.DataSource        := dsGetGastosXPeriodo;
      dbeTransYP.DataSource         := dsGetTransXPeriodo;
  end
  else begin
      chbxAPAD.Checked := false;
      dbeVentasYP.DataSource   := dsVentasYearAnt;
      dbeDescYP.DataSource     := dsVentasYearAnt;
      dbeTotalYP.DataSource    := dsVentasYearAnt;
      dbeSubtotalYP.DataSource := dsVentasYearAnt;
      dbeIVAYP.DataSource      := dsVentasYearAnt;
      dbeVtasCerrYP.DataSource := dsVtasCerrYearAnt;
      dbeAdelantosYP.DataSource     := dsGetAdelantosXYearAnt;
      dbeLiquidacionesYP.DataSource := dsGetLiquidacionesXYearAnt;
      dbeOtrosPagosYP.DataSource    := dsGetOtrosPagosXYearAnt;
      dbePagosYP.DataSource         := dsGetPagosXYearAnt;
      dbeGastosYP.DataSource        := dsGetGastosXYearAnt;
      dbeTransYP.DataSource         := dsGetTransXYearAnt;
  end;
  plCeros;
end;

procedure TfrmReportesAdmin.tcViewersChange(Sender: TObject);
var
  vlintDiaSemana, i:integer;
begin
  case tcViewers.TabIndex of
    0: begin  //Resumen
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
    1: begin  //Ventas
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
    2: begin  //Ventas Cerradas
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
    3: begin   //Adelantos
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
    4: begin   //Liquidaciones
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
    5: begin   //Pagos
       pnlResumen.Visible := false;
       pnlVentas.Visible := false;
       pnlVtasCerr.Visible := false;
       pnlAdelantos.Visible := false;
       pnlLiquidaciones.Visible := false;
       pnlPagos.Visible := true;
       pnlOtrosPagos.Visible := false;
       pnlGastos.Visible := false;
       pnlSemanaDetalle.Visible :=false;
    end;
    6: begin   //Otros Pagos
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
    7: begin   //Gastos
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
    8: begin   //Detalle Semanal
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
procedure TfrmReportesAdmin.plCeros();
begin
    //DIA
    if dbeVentasDia.Text = '' then
        dbeVentasDia.Text := '$0.00';
    if  dbeDescDia.Text = '' then
        dbeDescDia.Text := '$0.00';
    if  dbeTotalDia.Text = '' then
        dbeTotalDia.Text := '$0.00';
    if  dbeSubtotalDia.Text = '' then
        dbeSubtotalDia.Text := '$0.00';
    if  dbeIvaDia.Text = '' then
        dbeIvaDia.Text := '$0.00';
    if  dbeVtasCerrDia.Text = '' then
        dbeVtasCerrDia.Text := '$0.00';
    if  dbeAdelantosDia.Text = '' then
        dbeAdelantosDia.Text := '$0.00';
    if  edCxCDia.Text = '' then
        edCxCDia.Text := '$0.00';
    if  edIngresoVentasDia.Text = '' then
        edIngresoVentasDia.Text := '$0.00';
    if  dbeLiquidacionesDia.Text = '' then
        dbeLiquidacionesDia.Text := '$0.00';
    if  dbeOtrosPagosDia.Text = '' then
        dbeOtrosPagosDia.Text := '$0.00';
    if  dbePagosDia.Text = '' then
        dbePagosDia.Text := '$0.00';
    if  dbeGastosDia.Text = '' then
        dbeGastosDia.Text := '$0.00';
    if  edUtilidadDia.Text = '' then
        edUtilidadDia.Text := '$0.00';
    if  dbeTranXDia.Text = '' then
        dbeTranXDia.Text := '$0.00';
    if  edEfectDia.Text = '' then
        edEfectDia.Text := '$0.00';
    //SEMANA
    if dbeVentasSem.Text = '' then
        dbeVentasSem.Text := '$0.00';
    if  dbeDescSem.Text = '' then
        dbeDescSem.Text := '$0.00';
    if  dbeTotalSem.Text = '' then
        dbeTotalSem.Text := '$0.00';
    if  dbeSubtotalSem.Text = '' then
        dbeSubtotalSem.Text := '$0.00';
    if  dbeIvaSem.Text = '' then
        dbeIvaSem.Text := '$0.00';
    if  dbeVtaCerrSem.Text = '' then
        dbeVtaCerrSem.Text := '$0.00';
    if  dbeAdelantosSem.Text = '' then
        dbeAdelantosSem.Text := '$0.00';
    if  edCxCSem.Text = '' then
        edCxCSem.Text := '$0.00';
    if  edIngresoVentasSem.Text = '' then
        edIngresoVentasSem.Text := '$0.00';
    if  dbeLiquidacionesSem.Text = '' then
        dbeLiquidacionesSem.Text := '$0.00';
    if  dbeOtrosPagosSem.Text = '' then
        dbeOtrosPagosSem.Text := '$0.00';
    if  dbePagosSem.Text = '' then
        dbePagosSem.Text := '$0.00';
    if  dbeGastosSem.Text = '' then
        dbeGastosSem.Text := '$0.00';
    if  edUtilidadSem.Text = '' then
        edUtilidadSem.Text := '$0.00';
    if  dbeTransSem.Text = '' then
        dbeTransSem.Text := '$0.00';
    if  edEfectSem.Text = '' then
        edEfectSem.Text := '$0.00';
    //MES
    if dbeVentasMes.Text = '' then
        dbeVentasMes.Text := '$0.00';
    if  dbeDescMes.Text = '' then
        dbeDescMes.Text := '$0.00';
    if  dbeTotalMes.Text = '' then
        dbeTotalMes.Text := '$0.00';
    if  dbeSubtotalMes.Text = '' then
        dbeSubtotalMes.Text := '$0.00';
    if  dbeIvaMes.Text = '' then
        dbeIvaMes.Text := '$0.00';
    if  dbeVntasCerrMes.Text = '' then
        dbeVntasCerrMes.Text := '$0.00';
    if  dbeAdelantosMes.Text = '' then
        dbeAdelantosMes.Text := '$0.00';
    if  edCxCMes.Text = '' then
        edCxCMes.Text := '$0.00';
    if  edIngresoVentasMes.Text = '' then
        edIngresoVentasMes.Text := '$0.00';
    if  dbeLiquidacionesMes.Text = '' then
        dbeLiquidacionesMes.Text := '$0.00';
    if  dbeOtrosPagosMes.Text = '' then
        dbeOtrosPagosMes.Text := '$0.00';
    if  dbePagosMes.Text = '' then
        dbePagosMes.Text := '$0.00';
    if  dbeGastosMes.Text = '' then
        dbeGastosMes.Text := '$0.00';
    if  edUtilidadMes.Text = '' then
        edUtilidadMes.Text := '$0.00';
    if  dbeTransMes.Text = '' then
        dbeTransMes.Text := '$0.00';
    if  edEfectMes.Text = '' then
        edEfectMes.Text := '$0.00';
    //MES YP
    if dbeVtasMesYP.Text = '' then
        dbeVtasMesYP.Text := '$0.00';
    if  dbeDescMesYP.Text = '' then
        dbeDescMesYP.Text := '$0.00';
    if  dbeTotalMesYP.Text = '' then
        dbeTotalMesYP.Text := '$0.00';
    if  dbeSubtotalMesYP.Text = '' then
        dbeSubtotalMesYP.Text := '$0.00';
    if  dbeIvaMesYP.Text = '' then
        dbeIvaMesYP.Text := '$0.00';
    if  dbeVtaCerrMesYP.Text = '' then
        dbeVtaCerrMesYP.Text := '$0.00';
    if  dbeAdelantosMesYP.Text = '' then
        dbeAdelantosMesYP.Text := '$0.00';
    if  edCxCMesYP.Text = '' then
        edCxCMesYP.Text := '$0.00';
    if  edIngresoVtasMesYP.Text = '' then
        edIngresoVtasMesYP.Text := '$0.00';
    if  dbeLiquidacionesMesYP.Text = '' then
        dbeLiquidacionesMesYP.Text := '$0.00';
    if  dbeOtrosPagosMesYPv2.Text = '' then
        dbeOtrosPagosMesYPv2.Text := '$0.00';
    if  dbePagosMesYP.Text = '' then
        dbePagosMesYP.Text := '$0.00';
    if  dbeGastosMesYP.Text = '' then
        dbeGastosMesYP.Text := '$0.00';
    if  edUtilidadMesYP.Text = '' then
        edUtilidadMesYP.Text := '$0.00';
    if  dbeTransMesYP.Text = '' then
        dbeTransMesYP.Text := '$0.00';
    if  edEfecMesYP.Text = '' then
        edEfecMesYP.Text := '$0.00';
    //AÑO
    if dbeVentasYear.Text = '' then
        dbeVentasYear.Text := '$0.00';
    if  dbeDescYear.Text = '' then
        dbeDescYear.Text := '$0.00';
    if  dbeTotalYear.Text = '' then
        dbeTotalYear.Text := '$0.00';
    if  dbeSubtotalYear.Text = '' then
        dbeSubtotalYear.Text := '$0.00';
    if  dbeIvaYear.Text = '' then
        dbeIvaYear.Text := '$0.00';
    if  dbeVtasCerrYear.Text = '' then
        dbeVtasCerrYear.Text := '$0.00';
    if  dbeAdelantosYear.Text = '' then
        dbeAdelantosYear.Text := '$0.00';
    if  edCxCYear.Text = '' then
        edCxCYear.Text := '$0.00';
    if  edIngresoVentasYear.Text = '' then
        edIngresoVentasYear.Text := '$0.00';
    if  dbeLiquidacionesYear.Text = '' then
        dbeLiquidacionesYear.Text := '$0.00';
    if  dbeOtrosPagosYear.Text = '' then
        dbeOtrosPagosYear.Text := '$0.00';
    if  dbePagosYear.Text = '' then
        dbePagosYear.Text := '$0.00';
    if  dbeGastosYear.Text = '' then
        dbeGastosYear.Text := '$0.00';
    if  edUtilidadYear.Text = '' then
        edUtilidadYear.Text := '$0.00';
    if  dbeTransYear.Text = '' then
        dbeTransYear.Text := '$0.00';
    if  edEfectYear.Text = '' then
        edEfectYear.Text := '$0.00';
    //AÑO PASADO
    if dbeVentasYP.Text = '' then
        dbeVentasYP.Text := '$0.00';
    if  dbeDescYP.Text = '' then
        dbeDescYP.Text := '$0.00';
    if  dbeTotalYP.Text = '' then
        dbeTotalYP.Text := '$0.00';
    if  dbeSubtotalYP.Text = '' then
        dbeSubtotalYP.Text := '$0.00';
    if  dbeIvaYP.Text = '' then
        dbeIvaYP.Text := '$0.00';
    if  dbeVtasCerrYP.Text = '' then
        dbeVtasCerrYP.Text := '$0.00';
    if  dbeAdelantosYP.Text = '' then
        dbeAdelantosYP.Text := '$0.00';
    if  edCxCYP.Text = '' then
        edCxCYP.Text := '$0.00';
    if  edIngresoVtasYP.Text = '' then
        edIngresoVtasYP.Text := '$0.00';
    if  dbeLiquidacionesYP.Text = '' then
        dbeLiquidacionesYP.Text := '$0.00';
    if  dbeOtrosPagosYP.Text = '' then
        dbeOtrosPagosYP.Text := '$0.00';
    if  dbePagosYP.Text = '' then
        dbePagosYP.Text := '$0.00';
    if  dbeGastosYP.Text = '' then
        dbeGastosYP.Text := '$0.00';
    if  edUtilidadYP.Text = '' then
        edUtilidadYP.Text := '$0.00';
    if  dbeTransYP.Text = '' then
        dbeTransYP.Text := '$0.00';
    if  edEfectYP.Text = '' then
        edEfectYP.Text := '$0.00';
end;

procedure TfrmReportesAdmin.plCalculoKPIs();
var
    vlintPrendas,I:Integer;
begin

    edComposturas.Text := '0';
    lblComposturas.Caption := '0%';
    edTintorerias.Text := '0';
    lblTintorerias.Caption := '0%';
    edBordados.Text := '0';
    lblBordados.Caption := '0%';
    edVentas.Text := '0';
    lblVentas.Caption := '0%';
    edConfeccion.Text := '0';
    lblConfeccion.Caption := '0%';
    edPlanchado.Text := '0';
    lblPlanchado.Caption := '0%';
    edOtros.Text := '0';
    lblOtros.Caption := '0%';


  if cbxDia.Checked then begin

      //----------------------------------- Ticket Promedio ------------------------------------//
      if spGetTicketPromedioXPeriodoD.FieldByName('Ticket').Value <> null then
          lblTicketPromedio.Caption := '$'+floattostr(spGetTicketPromedioXPeriodoD.FieldByName('Ticket').Value)
      else
          lblTicketPromedio.Caption := '$0.0';


      vlintPrendas := 0;
      spGetVentasDivisionXPeriodo.FindFirst;
      if spGetVentasDivisionXPeriodo.RecordCount > 0 then begin
          for I := 1 to spGetVentasDivisionXPeriodo.RecordCount do begin
              vlintPrendas:=vlintPrendas+spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
              spGetVentasDivisionXPeriodo.Next;
          end;
          spGetVentasDivisionXPeriodo.FindFirst;
          for I := 1 to spGetVentasDivisionXPeriodo.RecordCount do begin
            case spGetVentasDivisionXPeriodo.FieldByName('idDivision').Value of
              1:begin
                if spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> null then begin
                  edComposturas.Text := spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
                  lblComposturas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edComposturas.Text := '0';
                  lblComposturas.Caption := '0%'
                end;
              end;
              2:begin
                if spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> null then begin
                  edTintorerias.Text := spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
                  lblTintorerias.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edTintorerias.Text := '0';
                  lblTintorerias.Caption := '0%'
                end;
              end;
              3:begin
                if spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> null then begin
                  edBordados.Text := spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
                  lblBordados.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edBordados.Text := '0';
                  lblBordados.Caption := '0%'
                end;
              end;
              4:begin
                if spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> null then begin
                  edVentas.Text := spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
                  lblVentas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edVentas.Text := '0';
                  lblVentas.Caption := '0%'
                end;
              end;
              5:begin
                if spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> null then begin
                  edConfeccion.Text := spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
                  lblConfeccion.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edConfeccion.Text := '0';
                  lblConfeccion.Caption := '0%'
                end;
              end;
              6:begin
                if spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> null then begin
                  edPlanchado.Text := spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
                  lblPlanchado.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edPlanchado.Text := '0';
                  lblPlanchado.Caption := '0%'
                end;
              end;
              7:begin
                if spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value <> null then begin
                  edPlanchado.Text := spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value;
                  lblPlanchado.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodo.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edOtros.Text := '0';
                  lblOtros.Caption := '0%'
                end;
              end;
            end;
            spGetVentasDivisionXPeriodo.Next;
          end;
      end
  end
  else if cbxSem.Checked then begin

      //----------------------------------- Ticket Promedio ------------------------------------//
      if spGetTicketPromedioXPeriodoS.FieldByName('Ticket').Value <> null then
          lblTicketPromedio.Caption := '$'+floattostr(spGetTicketPromedioXPeriodoS.FieldByName('Ticket').Value)
      else
          lblTicketPromedio.Caption := '$0.0';



      vlintPrendas := 0;
      spGetVentasDivisionXPeriodoSEM.FindFirst;
      if spGetVentasDivisionXPeriodoSEM.RecordCount > 0 then begin
          for I := 1 to spGetVentasDivisionXPeriodoSEM.RecordCount do begin
              vlintPrendas:=vlintPrendas+spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
              spGetVentasDivisionXPeriodoSEM.Next;
          end;
          spGetVentasDivisionXPeriodoSEM.FindFirst;
          for I := 1 to spGetVentasDivisionXPeriodoSEM.RecordCount do begin
            case spGetVentasDivisionXPeriodoSEM.FieldByName('idDivision').Value of
              1:begin
                  if spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> null then begin
                  edComposturas.Text := spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
                  lblComposturas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edComposturas.Text := '0';
                  lblComposturas.Caption := '0%'
                end;
              end;
              2:begin
                if spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> null then begin
                  edTintorerias.Text := spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
                  lblTintorerias.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edTintorerias.Text := '0';
                  lblTintorerias.Caption := '0%'
                end;
              end;
              3:begin
                if spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> null then begin
                  edBordados.Text := spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
                  lblBordados.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edBordados.Text := '0';
                  lblBordados.Caption := '0%'
                end;
              end;
              4:begin
                if spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> null then begin
                  edVentas.Text := spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
                  lblVentas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edVentas.Text := '0';
                  lblVentas.Caption := '0%'
                end;
              end;
              5:begin
                if spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> null then begin
                  edConfeccion.Text := spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
                  lblConfeccion.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edConfeccion.Text := '0';
                  lblConfeccion.Caption := '0%'
                end;
              end;
              6:begin
                if spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> null then begin
                  edPlanchado.Text := spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
                  lblPlanchado.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edPlanchado.Text := '0';
                  lblPlanchado.Caption := '0%'
                end;
              end;
              7:begin
                if spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value <> null then begin
                  edOtros.Text := spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value;
                  lblOtros.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoSEM.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edOtros.Text := '0';
                  lblOtros.Caption := '0%'
                end;
              end;
            end;
            spGetVentasDivisionXPeriodoSEM.Next;
          end;
      end;
  end
  else if cbxMes.Checked then begin

      //----------------------------------- Ticket Promedio ------------------------------------//
      if spGetTicketPromedioXPeriodoM.FieldByName('Ticket').Value <> null then
          lblTicketPromedio.Caption := '$'+floattostr(spGetTicketPromedioXPeriodoM.FieldByName('Ticket').Value)
      else
          lblTicketPromedio.Caption := '$0.0';




      vlintPrendas := 0;
      spGetVentasDivisionXPeriodoMES.FindFirst;
      if spGetVentasDivisionXPeriodoMES.RecordCount > 0 then begin
          for I := 1 to spGetVentasDivisionXPeriodoMES.RecordCount do begin
              vlintPrendas:=vlintPrendas+spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
              spGetVentasDivisionXPeriodoMES.Next;
          end;
          spGetVentasDivisionXPeriodoMES.FindFirst;
          for I := 1 to spGetVentasDivisionXPeriodoMES.RecordCount do begin
            case spGetVentasDivisionXPeriodoMES.FieldByName('idDivision').Value of
              1:begin
                  if spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> null then begin
                  edComposturas.Text := spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
                  lblComposturas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edComposturas.Text := '0';
                  lblComposturas.Caption := '0%'
                end;
              end;
              2:begin
                if spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> null then begin
                  edTintorerias.Text := spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
                  lblTintorerias.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edTintorerias.Text := '0';
                  lblTintorerias.Caption := '0%'
                end;
              end;
              3:begin
                if spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> null then begin
                  edBordados.Text := spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
                  lblBordados.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edBordados.Text := '0';
                  lblBordados.Caption := '0%'
                end;
              end;
              4:begin
                if spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> null then begin
                  edVentas.Text := spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
                  lblVentas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edVentas.Text := '0';
                  lblVentas.Caption := '0%'
                end;
              end;
              5:begin
                if spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> null then begin
                  edConfeccion.Text := spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
                  lblConfeccion.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edConfeccion.Text := '0';
                  lblConfeccion.Caption := '0%'
                end;
              end;
              6:begin
                if spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> null then begin
                  edPlanchado.Text := spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
                  lblPlanchado.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edPlanchado.Text := '0';
                  lblPlanchado.Caption := '0%'
                end;
              end;
              7:begin
                if spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value <> null then begin
                  edOtros.Text := spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value;
                  lblOtros.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoMES.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edOtros.Text := '0';
                  lblOtros.Caption := '0%'
                end;
              end;
            end;
            spGetVentasDivisionXPeriodoMES.Next;
          end;
      end;
  end
  else if cbxYear.Checked then begin

      //----------------------------------- Ticket Promedio ------------------------------------//
      if spGetTicketPromedioXPeriodoY.FieldByName('Ticket').Value <> null then
          lblTicketPromedio.Caption := '$'+floattostr(spGetTicketPromedioXPeriodoY.FieldByName('Ticket').Value)
      else
          lblTicketPromedio.Caption := '$0.0';


      vlintPrendas := 0;
      spGetVentasDivisionXPeriodoYEAR.FindFirst;
      if spGetVentasDivisionXPeriodoYEAR.RecordCount > 0 then begin
          for I := 1 to spGetVentasDivisionXPeriodoYEAR.RecordCount do begin
              vlintPrendas:=vlintPrendas+spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
              spGetVentasDivisionXPeriodoYEAR.Next;
          end;
          spGetVentasDivisionXPeriodoYEAR.FindFirst;
          for I := 1 to spGetVentasDivisionXPeriodoYEAR.RecordCount do begin
            case spGetVentasDivisionXPeriodoYEAR.FieldByName('idDivision').Value of
              1:begin
                  if spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> null then begin
                  edComposturas.Text := spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
                  lblComposturas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edComposturas.Text := '0';
                  lblComposturas.Caption := '0%'
                end;
              end;
              2:begin
                if spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> null then begin
                  edTintorerias.Text := spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
                  lblTintorerias.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edTintorerias.Text := '0';
                  lblTintorerias.Caption := '0%'
                end;
              end;
              3:begin
                if spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> null then begin
                  edBordados.Text := spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
                  lblBordados.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edBordados.Text := '0';
                  lblBordados.Caption := '0%'
                end;
              end;
              4:begin
                if spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> null then begin
                  edVentas.Text := spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
                  lblVentas.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edVentas.Text := '0';
                  lblVentas.Caption := '0%'
                end;
              end;
              5:begin
                if spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> null then begin
                  edConfeccion.Text := spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
                  lblConfeccion.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edConfeccion.Text := '0';
                  lblConfeccion.Caption := '0%'
                end;
              end;
              6:begin
                if spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> null then begin
                  edPlanchado.Text := spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
                  lblPlanchado.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edPlanchado.Text := '0';
                  lblPlanchado.Caption := '0%'
                end;
              end;
              7:begin
                if spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> 0 or spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value <> null then begin
                  edOtros.Text := spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value;
                  lblOtros.Caption := formatCurr('#0.00',strtofloat(StringReplace(StringReplace(spGetVentasDivisionXPeriodoYEAR.FieldByName('Eventos').Value    ,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) / vlintPrendas * 100)+'%'
                end
                else begin
                  edOtros.Text := '0';
                  lblOtros.Caption := '0%'
                end;
              end
            end;
            spGetVentasDivisionXPeriodoYEAR.Next;
          end;
      end;





  end;
end;
end.
