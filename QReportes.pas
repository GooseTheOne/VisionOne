unit QReportes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Globales, DateUtils,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, detalleOrden;

type
  TfrmQReportes = class(TForm)
    tcViewers: TTabControl;
    pnlResumen: TPanel;
    pnlVentas: TPanel;
    pnlVentasCerradas: TPanel;
    pnlAdelantos: TPanel;
    pnlLiquidaciones: TPanel;
    pnlPagos: TPanel;
    pnlOtrosPagos: TPanel;
    pnlGastos: TPanel;
    btnAtras: TButton;
    btnAdelante: TButton;
    btnConsultar: TButton;
    Label1: TLabel;
    dbLkcSucursal: TDBLookupComboBox;
    dtpCalendario: TDateTimePicker;
    Conn: TADOConnection;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    spGetReportesAdminD: TADOStoredProc;
    dsGetReportesAdminD: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape1: TShape;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText37: TDBText;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText40: TDBText;
    DBText41: TDBText;
    DBText42: TDBText;
    DBText43: TDBText;
    DBText44: TDBText;
    DBText45: TDBText;
    DBText46: TDBText;
    DBText47: TDBText;
    DBText48: TDBText;
    DBText49: TDBText;
    DBText50: TDBText;
    DBText51: TDBText;
    DBText69: TDBText;
    DBText70: TDBText;
    DBText71: TDBText;
    DBText72: TDBText;
    DBText73: TDBText;
    DBText74: TDBText;
    DBText75: TDBText;
    DBText76: TDBText;
    DBText77: TDBText;
    DBText78: TDBText;
    DBText79: TDBText;
    DBText80: TDBText;
    DBText81: TDBText;
    DBText82: TDBText;
    DBText83: TDBText;
    DBText84: TDBText;
    DBText85: TDBText;
    spGetReportesAdminS: TADOStoredProc;
    dsGetReportesAdminS: TDataSource;
    spGetReportesAdminM: TADOStoredProc;
    dsGetReportesAdminM: TDataSource;
    spGetReportesAdminY: TADOStoredProc;
    dsGetReportesAdminY: TDataSource;
    DBText52: TDBText;
    DBText53: TDBText;
    DBText54: TDBText;
    DBText55: TDBText;
    DBText56: TDBText;
    DBText57: TDBText;
    DBText58: TDBText;
    DBText59: TDBText;
    DBText60: TDBText;
    DBText61: TDBText;
    DBText62: TDBText;
    DBText63: TDBText;
    DBText64: TDBText;
    DBText65: TDBText;
    DBText66: TDBText;
    DBText67: TDBText;
    DBText68: TDBText;
    DBText86: TDBText;
    DBText87: TDBText;
    DBText88: TDBText;
    DBText89: TDBText;
    DBText90: TDBText;
    DBText91: TDBText;
    DBText92: TDBText;
    DBText93: TDBText;
    DBText94: TDBText;
    DBText95: TDBText;
    DBText96: TDBText;
    DBText97: TDBText;
    DBText98: TDBText;
    DBText99: TDBText;
    DBText100: TDBText;
    DBText101: TDBText;
    DBText102: TDBText;
    spGetReportesAdminMP: TADOStoredProc;
    dsGetReportesAdminMP: TDataSource;
    spGetReportesAdminYP: TADOStoredProc;
    dsGetReportesAdminYP: TDataSource;
    Shape10: TShape;
    Shape11: TShape;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    spGetRepAdminVentasDet: TADOStoredProc;
    dsGetRepAdminVentasDet: TDataSource;
    DBGrid2: TDBGrid;
    spGetRepAdminVentasCerrDet: TADOStoredProc;
    dsGetRepAdminVentasCerrDet: TDataSource;
    spGetRepAdminLiquidacionesDet: TADOStoredProc;
    dsGetRepAdminAdelantosDet: TDataSource;
    dsGetRepAdminLiquidacionesDet: TDataSource;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    spGetRepAdminAdelantosDet: TADOStoredProc;
    pnlDetalleSemanal: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    DBText103: TDBText;
    DBText104: TDBText;
    DBText105: TDBText;
    DBText106: TDBText;
    DBText107: TDBText;
    DBText108: TDBText;
    DBText109: TDBText;
    DBText110: TDBText;
    DBText111: TDBText;
    DBText112: TDBText;
    DBText113: TDBText;
    DBText114: TDBText;
    DBText115: TDBText;
    DBText116: TDBText;
    DBText117: TDBText;
    DBText118: TDBText;
    DBText119: TDBText;
    DBText120: TDBText;
    DBText121: TDBText;
    DBText122: TDBText;
    DBText123: TDBText;
    DBText124: TDBText;
    DBText125: TDBText;
    DBText126: TDBText;
    DBText127: TDBText;
    DBText128: TDBText;
    DBText129: TDBText;
    DBText130: TDBText;
    DBText131: TDBText;
    DBText132: TDBText;
    DBText133: TDBText;
    DBText134: TDBText;
    DBText135: TDBText;
    DBText136: TDBText;
    DBText137: TDBText;
    DBText138: TDBText;
    DBText139: TDBText;
    DBText140: TDBText;
    DBText141: TDBText;
    DBText142: TDBText;
    DBText143: TDBText;
    DBText144: TDBText;
    DBText145: TDBText;
    DBText146: TDBText;
    DBText147: TDBText;
    DBText148: TDBText;
    DBText149: TDBText;
    DBText150: TDBText;
    DBText151: TDBText;
    DBText152: TDBText;
    DBText153: TDBText;
    DBText154: TDBText;
    DBText155: TDBText;
    DBText156: TDBText;
    DBText157: TDBText;
    DBText158: TDBText;
    DBText159: TDBText;
    DBText160: TDBText;
    DBText161: TDBText;
    DBText162: TDBText;
    DBText163: TDBText;
    DBText164: TDBText;
    DBText165: TDBText;
    DBText166: TDBText;
    DBText167: TDBText;
    DBText168: TDBText;
    DBText169: TDBText;
    DBText170: TDBText;
    DBText171: TDBText;
    DBText172: TDBText;
    DBText173: TDBText;
    DBText174: TDBText;
    DBText175: TDBText;
    DBText176: TDBText;
    DBText177: TDBText;
    DBText178: TDBText;
    DBText179: TDBText;
    DBText180: TDBText;
    DBText181: TDBText;
    DBText182: TDBText;
    DBText183: TDBText;
    DBText184: TDBText;
    DBText185: TDBText;
    DBText186: TDBText;
    DBText187: TDBText;
    DBText188: TDBText;
    DBText189: TDBText;
    DBText190: TDBText;
    DBText191: TDBText;
    DBText192: TDBText;
    DBText193: TDBText;
    DBText194: TDBText;
    DBText195: TDBText;
    DBText196: TDBText;
    DBText197: TDBText;
    DBText198: TDBText;
    DBText199: TDBText;
    DBText200: TDBText;
    DBText201: TDBText;
    DBText202: TDBText;
    DBText203: TDBText;
    DBText204: TDBText;
    DBText205: TDBText;
    DBText206: TDBText;
    DBText207: TDBText;
    DBText208: TDBText;
    DBText209: TDBText;
    DBText210: TDBText;
    DBText211: TDBText;
    DBText212: TDBText;
    DBText213: TDBText;
    DBText214: TDBText;
    DBText215: TDBText;
    DBText216: TDBText;
    DBText217: TDBText;
    DBText218: TDBText;
    DBText219: TDBText;
    DBText220: TDBText;
    DBText221: TDBText;
    Label36: TLabel;
    lblDom: TLabel;
    lblLun: TLabel;
    lblMar: TLabel;
    lblMie: TLabel;
    lblSab: TLabel;
    lblVie: TLabel;
    lblJue: TLabel;
    ADOStoredProc1: TADOStoredProc;
    DataSource1: TDataSource;
    ADOStoredProc2: TADOStoredProc;
    ADOStoredProc3: TADOStoredProc;
    ADOStoredProc4: TADOStoredProc;
    ADOStoredProc5: TADOStoredProc;
    ADOStoredProc6: TADOStoredProc;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    ADOStoredProc7: TADOStoredProc;
    DataSource7: TDataSource;
    Label37: TLabel;
    DBText222: TDBText;
    DBText223: TDBText;
    DBText224: TDBText;
    DBText225: TDBText;
    DBText226: TDBText;
    DBText227: TDBText;
    Label38: TLabel;
    Label39: TLabel;
    DBText228: TDBText;
    DBText229: TDBText;
    DBText230: TDBText;
    DBText231: TDBText;
    DBText232: TDBText;
    DBText233: TDBText;
    DBText234: TDBText;
    DBText235: TDBText;
    DBText236: TDBText;
    DBText237: TDBText;
    DBText238: TDBText;
    DBText239: TDBText;
    DBText240: TDBText;
    DBText241: TDBText;
    DBText242: TDBText;
    DBText243: TDBText;
    DBText244: TDBText;
    DBText245: TDBText;
    DBText246: TDBText;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBText247: TDBText;
    DBText248: TDBText;
    DBText249: TDBText;
    DBText250: TDBText;
    DBText251: TDBText;
    DBText252: TDBText;
    DBText253: TDBText;
    DBText254: TDBText;
    DBText255: TDBText;
    DBText256: TDBText;
    DBText257: TDBText;
    DBText258: TDBText;
    DBText259: TDBText;
    DBText260: TDBText;
    procedure tcViewersChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAtrasClick(Sender: TObject);
    procedure btnAdelanteClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dbLkcSucursalClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure plValidaPeriodo();
    procedure plDetalleSemanal();
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQReportes: TfrmQReportes;
  vldteFecha: TDate;
  vlintAlcance: Integer;
  vlintDia,vlintMes,vlintYear,vlintYearAnt:Integer;
  vldteSemIni,vldteSemFin,vldteIni,vldteFin: TDate;

implementation

{$R *.dfm}

procedure TfrmQReportes.btnAdelanteClick(Sender: TObject);
begin
    vldteFecha := vldteFecha + 1;
    dtpCalendario.Date := vldteFecha;
    btnConsultar.Click;
end;

procedure TfrmQReportes.btnAtrasClick(Sender: TObject);
begin
    vldteFecha := vldteFecha - 1;
    dtpCalendario.Date := vldteFecha;
    btnConsultar.Click;
end;

procedure TfrmQReportes.btnConsultarClick(Sender: TObject);
begin


    if dbLkcSucursal.KeyValue = null then
        vlintAlcance := 0
    else
        vlintAlcance := dbLkcSucursal.KeyValue;

    vldteFecha 	:= dtpCalendario.Date;       		//Hoy
    vlintDia 		:= DayOfWeek(vldteFecha)-1;     //Dia de la semana
    vldteSemIni := vldteFecha    - vlintDia;  	//Inicio de semana
    vldteSemFin := vldteFecha + 6 - vlintDia;  	//Fin de semana

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
    vlintYearAnt :=YearOf(vldteFecha)-1;
    //Selección de periodo 01Ene al dia de hoy
    vldteIni := StrToDate('01/01/'+vlintYearAnt.ToString);
    //Validacion en caso de año Bisiesto
    if (dayof(vldteFecha) = 29) and (monthof(vldteFecha) = 2) then
      vldteFin := StrToDate('01/03/'+vlintYearAnt.ToString)
    else
      vldteFin := strToDate(dayof(vldteFecha).ToString+'/' + monthof(vldteFecha).ToString + '/'+vlintYearAnt.ToString);

    //Abre y Cierra SP's
    //@pdteIni = '11/01/2023',
    //@pdteFin = '11/30/2023',
    //@pintAlcance = 3,
    //@pintperiodo = 1
    //@pintMes = 11,
    //@pintYear = 2023

    //showmessage('vldteFecha='+datetostr(vldteFecha)+' vldteSemIni='+datetostr(vldteSemIni)+' vldteSemFin='+datetostr(vldteSemFin)+' vlintAlcance='+inttostr(vlintAlcance)+' vlintMes='+inttostr(vlintMes)+' vlintYear='+inttostr(vlintYear));

    spGetReportesAdminD.Close;
    spGetReportesAdminD.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGetReportesAdminD.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
    spGetReportesAdminD.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetReportesAdminD.Parameters.ParamByName('@pintperiodo').Value := 1;
    spGetReportesAdminD.Open;

    spGetReportesAdminS.Close;
    spGetReportesAdminS.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteSemIni);
    spGetReportesAdminS.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteSemFin);
    spGetReportesAdminS.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetReportesAdminS.Parameters.ParamByName('@pintperiodo').Value := 1;
    spGetReportesAdminS.Open;

    spGetReportesAdminM.Close;
    spGetReportesAdminM.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetReportesAdminM.Parameters.ParamByName('@pintperiodo').Value := 2;
    spGetReportesAdminM.Parameters.ParamByName('@pintMes').Value := MonthOf(vldteFecha);
    spGetReportesAdminM.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spGetReportesAdminM.Open;

    spGetReportesAdminY.Close;
    spGetReportesAdminY.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetReportesAdminY.Parameters.ParamByName('@pintperiodo').Value := 3;
    spGetReportesAdminY.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
    spGetReportesAdminY.Open;

    spGetReportesAdminMP.Close;
    spGetReportesAdminMP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetReportesAdminMP.Parameters.ParamByName('@pintperiodo').Value := 2;
    spGetReportesAdminMP.Parameters.ParamByName('@pintMes').Value := vlintMes;
    spGetReportesAdminMP.Parameters.ParamByName('@pintYear').Value := vlintYear;
    spGetReportesAdminMP.Open;

    spGetReportesAdminYP.Close;
    spGetReportesAdminYP.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
    spGetReportesAdminYP.Parameters.ParamByName('@pintperiodo').Value := 3;
    spGetReportesAdminYP.Parameters.ParamByName('@pintYear').Value := vlintYearAnt;
    spGetReportesAdminYP.Open;

    plValidaPeriodo();
    plDetalleSemanal();

end;

procedure TfrmQReportes.DBGrid1DblClick(Sender: TObject);
begin
    //ShowMessage(DBGrid1.DataSource.DataSet.FieldByName('Orden').Value);
    Application.CreateForm(TfrmDetalleOrden, frmDetalleOrden);
    frmDetalleOrden.setOrden(DBGrid1.DataSource.DataSet.FieldByName('Orden').Value);
    frmDetalleOrden.ShowModal;
    frmDetalleOrden.Destroy;
end;

procedure TfrmQReportes.DBGrid2DblClick(Sender: TObject);
begin
    Application.CreateForm(TfrmDetalleOrden, frmDetalleOrden);
    frmDetalleOrden.setOrden(DBGrid2.DataSource.DataSet.FieldByName('Orden').Value);
    frmDetalleOrden.ShowModal;
    frmDetalleOrden.Destroy;
end;

procedure TfrmQReportes.DBGrid3DblClick(Sender: TObject);
begin
    Application.CreateForm(TfrmDetalleOrden, frmDetalleOrden);
    frmDetalleOrden.setOrden(DBGrid3.DataSource.DataSet.FieldByName('Orden').Value);
    frmDetalleOrden.ShowModal;
    frmDetalleOrden.Destroy;
end;

procedure TfrmQReportes.DBGrid4DblClick(Sender: TObject);
begin
    Application.CreateForm(TfrmDetalleOrden, frmDetalleOrden);
    frmDetalleOrden.setOrden(DBGrid4.DataSource.DataSet.FieldByName('Orden').Value);
    frmDetalleOrden.ShowModal;
    frmDetalleOrden.Destroy;
end;

procedure TfrmQReportes.dbLkcSucursalClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TfrmQReportes.FormCreate(Sender: TObject);
begin
    Conn.Connected := false;

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
        dblkcSucursal.KeyValue := vgintSucursal;
        dblkcSucursal.Enabled := false;
        vlintAlcance := vgintSucursal;
    end
    else begin
        dblkcSucursal.KeyValue := 0;
        dblkcSucursal.Enabled := true;
        vlintAlcance := 0;
    end;

    btnConsultar.Click;
end;

procedure TfrmQReportes.RadioGroup1Click(Sender: TObject);
begin
    //ShowMessage(RadioGroup1.ItemIndex.ToString);
    plValidaPeriodo();
end;

procedure TfrmQReportes.tcViewersChange(Sender: TObject);
var
  vlintDiaSemana, i: Integer;
begin
  case tcViewers.TabIndex of
    0: begin  //Resumen
       pnlResumen.Visible         := true;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := false;
    end;
    1: begin  //Ventas
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := true;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := false;
    end;
    2: begin  //Ventas Cerradas
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := true;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := false;
    end;
    3: begin   //Adelantos
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := true;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := false;
    end;
    4: begin   //Liquidaciones
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := true;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := false;
    end;
    5: begin   //Pagos
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := true;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := false;
    end;
    6: begin   //Otros Pagos
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := true;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := false;
    end;
    7: begin   //Gastos
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := true;
       pnlDetalleSemanal.Visible  := false;
    end;
    8: begin   //Detalle Semanal
       pnlResumen.Visible         := false;
       pnlVentas.Visible          := false;
       pnlVentasCerradas.Visible  := false;
       pnlAdelantos.Visible       := false;
       pnlLiquidaciones.Visible   := false;
       pnlPagos.Visible           := false;
       pnlOtrosPagos.Visible      := false;
       pnlGastos.Visible          := false;
       pnlDetalleSemanal.Visible  := true;
    end;
  end;
end;

procedure TfrmQReportes.plDetalleSemanal();
var
  vlintDiaSemana, i:Integer;
begin
       vlintDiaSemana := DayOfWeek(vldteFecha);

       i := 1;

      //DOMINGO
      lblDom.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
      ADOStoredProc1.Close;
      ADOStoredProc1.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc1.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc1.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      ADOStoredProc1.Parameters.ParamByName('@pintperiodo').Value := 1;
      ADOStoredProc1.Open;

      i := i + 1;
      lblLun.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
      ADOStoredProc2.Close;
      ADOStoredProc2.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc2.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc2.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      ADOStoredProc2.Parameters.ParamByName('@pintperiodo').Value := 1;
      ADOStoredProc2.Open;

      i := i + 1;
      lblMar.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
      ADOStoredProc3.Close;
      ADOStoredProc3.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc3.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc3.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      ADOStoredProc3.Parameters.ParamByName('@pintperiodo').Value := 1;
      ADOStoredProc3.Open;

      i := i + 1;
      lblMie.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
      ADOStoredProc4.Close;
      ADOStoredProc4.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc4.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc4.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      ADOStoredProc4.Parameters.ParamByName('@pintperiodo').Value := 1;
      ADOStoredProc4.Open;

      i := i + 1;
      lblJue.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
      ADOStoredProc5.Close;
      ADOStoredProc5.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc5.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc5.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      ADOStoredProc5.Parameters.ParamByName('@pintperiodo').Value := 1;
      ADOStoredProc5.Open;

      i := i + 1;
      lblVie.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
      ADOStoredProc6.Close;
      ADOStoredProc6.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc6.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc6.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      ADOStoredProc6.Parameters.ParamByName('@pintperiodo').Value := 1;
      ADOStoredProc6.Open;

      i := i + 1;
      lblSab.Caption := datetostr(vldteFecha-vlintDiaSemana+i);
      ADOStoredProc7.Close;
      ADOStoredProc7.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc7.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha-vlintDiaSemana+i);
      ADOStoredProc7.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      ADOStoredProc7.Parameters.ParamByName('@pintperiodo').Value := 1;
      ADOStoredProc7.Open;

end;


procedure TfrmQReportes.plValidaPeriodo();
begin
    case RadioGroup1.ItemIndex of
      0: begin
            spGetRepAdminVentasDet.Close;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminVentasDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminVentasDet.Open;

            spGetRepAdminVentasCerrDet.Close;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminVentasCerrDet.Open;

            spGetRepAdminAdelantosDet.Close;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminAdelantosDet.Open;

            spGetRepAdminLiquidacionesDet.Close;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteFecha);
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminLiquidacionesDet.Open;
      end;
      1: begin
            spGetRepAdminVentasDet.Close;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteSemIni);
            spGetRepAdminVentasDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteSemFin);
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminVentasDet.Open;

            spGetRepAdminVentasCerrDet.Close;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteSemIni);
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteSemFin);
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminVentasCerrDet.Open;

            spGetRepAdminAdelantosDet.Close;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteSemIni);
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteSemFin);
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminAdelantosDet.Open;

            spGetRepAdminLiquidacionesDet.Close;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pdteIni').Value     := FormatDateTime('yyyy/mm/dd',vldteSemIni);
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pdteFin').Value     := FormatDateTime('yyyy/mm/dd',vldteSemFin);
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintperiodo').Value := 1;
            spGetRepAdminLiquidacionesDet.Open;
      end;
      2: begin
            spGetRepAdminVentasDet.Close;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintperiodo').Value := 2;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintMes').Value := MonthOf(vldteFecha);
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminVentasDet.Open;

            spGetRepAdminVentasCerrDet.Close;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintperiodo').Value := 2;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintMes').Value := MonthOf(vldteFecha);
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminVentasCerrDet.Open;

            spGetRepAdminAdelantosDet.Close;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintperiodo').Value := 2;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintMes').Value := MonthOf(vldteFecha);
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminAdelantosDet.Open;

            spGetRepAdminLiquidacionesDet.Close;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintperiodo').Value := 2;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintMes').Value := MonthOf(vldteFecha);
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminLiquidacionesDet.Open;
      end;
      3: begin
            spGetRepAdminVentasDet.Close;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintperiodo').Value := 3;
            spGetRepAdminVentasDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminVentasDet.Open;

            spGetRepAdminVentasCerrDet.Close;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintperiodo').Value := 3;
            spGetRepAdminVentasCerrDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminVentasCerrDet.Open;

            spGetRepAdminAdelantosDet.Close;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintperiodo').Value := 3;
            spGetRepAdminAdelantosDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminAdelantosDet.Open;

            spGetRepAdminLiquidacionesDet.Close;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintperiodo').Value := 3;
            spGetRepAdminLiquidacionesDet.Parameters.ParamByName('@pintYear').Value := YearOf(vldteFecha);
            spGetRepAdminLiquidacionesDet.Open;
      end;

    end;
end;


end.
