unit ConsultaOperaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Data.Win.ADODB, Vcl.Mask, Vcl.DBCtrls, Globales;

type
  TfrmConsultaOperaciones = class(TForm)
    dtpInicio: TDateTimePicker;
    dtpFin: TDateTimePicker;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edEfectivoTotal: TEdit;
    Label5: TLabel;
    Shape1: TShape;
    Conn: TADOConnection;
    spGetOperacionesVentasPeriodo: TADOStoredProc;
    dsGetOperacionesVentasPeriodo: TDataSource;
    dbePagos: TDBEdit;
    spGetOperacionesGastosPeriodo: TADOStoredProc;
    dsGetOperacionesGastosPeriodo: TDataSource;
    dbeGastos: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    dblkcSucursales: TDBLookupComboBox;
    Label8: TLabel;
    dbeRetiros: TDBEdit;
    dbeDepositos: TDBEdit;
    dbeAjustes: TDBEdit;
    Label9: TLabel;
    spGetOperacionesRetirosPeriodo: TADOStoredProc;
    dsGetOperacionesRetirosPeriodo: TDataSource;
    dsGetOperacionesDepositosPeriodo: TDataSource;
    spGetOperacionesDepositosPeriodo: TADOStoredProc;
    spGetOperacionesErroresPeriodo: TADOStoredProc;
    dsGetOperacionesErroresPeriodo: TDataSource;
    Shape2: TShape;
    edEfectivoCalculado: TEdit;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dsGetSucursalesDataChange(Sender: TObject; Field: TField);
    procedure dsGetSucursalesStateChange(Sender: TObject);
    procedure plAbreQuerys();


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaOperaciones: TfrmConsultaOperaciones;
  vlintalcance: Integer;
  vldcmEfectivoCaja,
  vldcmPagos,
  vldcmGastos,
  vldcmRetiros,
  vldcmDepositos,
  vldcmAjustes: Double;

implementation

{$R *.dfm}

procedure TfrmConsultaOperaciones.Button1Click(Sender: TObject);
begin

    if dblkcSucursales.KeyValue = null then
        vlintAlcance := 0
    else
        vlintAlcance := dblkcSucursales.KeyValue;

    plAbreQuerys();

end;

procedure TfrmConsultaOperaciones.dsGetSucursalesDataChange(Sender: TObject;
  Field: TField);
begin


    Button1.Click;
end;

procedure TfrmConsultaOperaciones.dsGetSucursalesStateChange(Sender: TObject);
begin
    if dblkcSucursales.KeyValue = null then
        vlintAlcance := 0
    else
        vlintAlcance := dblkcSucursales.KeyValue;
end;



procedure TfrmConsultaOperaciones.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - CierreCaja');
      end;
    end;

    dtpInicio.Date := now();
    dtpFin.Date := now();

    spGetSucursales.Open;
    dblkcSucursales.KeyValue := 0;
    vlintAlcance := 0;

    plAbreQuerys();

end;


procedure TfrmConsultaOperaciones.plAbreQuerys();
begin

    if dblkcSucursales.KeyValue = null then
        vlintAlcance := 0
    else
        vlintAlcance := dblkcSucursales.KeyValue;

    spGetOperacionesVentasPeriodo.Close;
    spGetOperacionesVentasPeriodo.Parameters.ParamByName('@pidSucursal').Value := vlintAlcance;
    spGetOperacionesVentasPeriodo.Parameters.ParamByName('@pdteInicio').Value := FormatDateTime('yyyy/mm/dd',dtpInicio.Date);
    spGetOperacionesVentasPeriodo.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',dtpFin.Date);
    spGetOperacionesVentasPeriodo.Open;

    spGetOperacionesGastosPeriodo.Close;
    spGetOperacionesGastosPeriodo.Parameters.ParamByName('@pidSucursal').Value := vlintAlcance;
    spGetOperacionesGastosPeriodo.Parameters.ParamByName('@pdteInicio').Value := FormatDateTime('yyyy/mm/dd',dtpInicio.Date);
    spGetOperacionesGastosPeriodo.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',dtpFin.Date);
    spGetOperacionesGastosPeriodo.Open;

    spGetOperacionesRetirosPeriodo.Close;
    spGetOperacionesRetirosPeriodo.Parameters.ParamByName('@pidSucursal').Value := vlintAlcance;
    spGetOperacionesRetirosPeriodo.Parameters.ParamByName('@pdteInicio').Value := FormatDateTime('yyyy/mm/dd',dtpInicio.Date);
    spGetOperacionesRetirosPeriodo.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',dtpFin.Date);
    spGetOperacionesRetirosPeriodo.Open;

    spGetOperacionesDepositosPeriodo.Close;
    spGetOperacionesDepositosPeriodo.Parameters.ParamByName('@pidSucursal').Value := vlintAlcance;
    spGetOperacionesDepositosPeriodo.Parameters.ParamByName('@pdteInicio').Value := FormatDateTime('yyyy/mm/dd',dtpInicio.Date);
    spGetOperacionesDepositosPeriodo.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',dtpFin.Date);
    spGetOperacionesDepositosPeriodo.Open;

    spGetOperacionesErroresPeriodo.Close;
    spGetOperacionesErroresPeriodo.Parameters.ParamByName('@pidSucursal').Value := vlintAlcance;
    spGetOperacionesErroresPeriodo.Parameters.ParamByName('@pdteInicio').Value := FormatDateTime('yyyy/mm/dd',dtpInicio.Date);
    spGetOperacionesErroresPeriodo.Parameters.ParamByName('@pdteFin').Value := FormatDateTime('yyyy/mm/dd',dtpFin.Date);
    spGetOperacionesErroresPeriodo.Open;



    if dbePagos.Text <> '' then
      vldcmPagos      := strtofloat(StringReplace(StringReplace(dbePagos.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
      vldcmPagos      := 0;

    if dbeGastos.Text <> '' then
      vldcmGastos     := strtofloat(StringReplace(StringReplace(dbeGastos.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
      vldcmGastos      := 0;

    if dbeRetiros.Text <> '' then
      vldcmRetiros    := strtofloat(StringReplace(StringReplace(dbeRetiros.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
      vldcmRetiros      := 0;

    if dbeDepositos.Text <> '' then
      vldcmDepositos  := strtofloat(StringReplace(StringReplace(dbeDepositos.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
      vldcmDepositos      := 0;

    if dbeAjustes.Text <> '' then
      vldcmAjustes  := strtofloat(StringReplace(StringReplace(StringReplace(StringReplace(dbeAjustes.Text,'(','',[rfReplaceAll]),')','',[rfReplaceAll]),',','',[rfReplaceAll]),'$','',[rfReplaceAll]))
    else
      vldcmajustes      := 0;


    vldcmEfectivoCaja :=   vldcmPagos
                         - vldcmGastos
                         - vldcmRetiros
                         - vldcmDepositos;
    edEfectivoCalculado.Text      := '$' + FormatCurr('##,##0.00', vldcmEfectivoCaja);
    vldcmEfectivoCaja :=   vldcmPagos
                         - vldcmGastos
                         - vldcmRetiros
                         - vldcmDepositos
                         + vldcmAjustes;
    edEfectivoTotal.Text      := '$' + FormatCurr('##,##0.00', vldcmEfectivoCaja);
end;

end.
