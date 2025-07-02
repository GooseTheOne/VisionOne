//******************************************************************************//
//    Primera version dentro de GitHUB                                          //
//    Punto de Venta de Eugene's Composturas                                    //
//    Autor y Sensei: Alex Brito (goose)                                        //
//******************************************************************************//
unit wndPOS;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids, UITypes,
  Vcl.DBGrids,Ordenes, Vcl.StdCtrls,Globales, Vcl.Menus, Gastos, Cierre, ConsultaOrdenes, catPrecio, Agenda,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Grafics, ConsultaClientes, RegistroOrdenes, ReporteCorporativos,
  Parametros, Vcl.ComCtrls, EditorOrdenes, CambioSucursal, Clientes, AgendaV2, catEstatus,
  catEstatusContable, catTipoGasto, catSubtipoGasto, catPrenda, catServicio, catSucursal, catTipoUsuario,
  catUsuario, catTipoCliente, catTipoPago, catTipoServicio, CambioUsuario, catCuentasContables, AcercaDe,
  RegistroMovimientos, ConsultaMovimientos, AperturaCaja, CierreCaja,DateUtils ,ConsultaMovCaja,
  ReportesAdmin, ReportesUsuario, ConsultaOperaciones, Vcl.Imaging.GIFImg, ConsultaClientesV2, QReportes,
  RetirosEfectivo;
type
  TfrmPOS = class(TForm)
    btnOrdenes: TButton;
    btnConsOrdenes: TButton;
    btnGastos: TButton;
    btnReportes: TButton;
    btnAgenda: TButton;
    qParametros: TADOQuery;
    Conn: TADOConnection;
    btnConsClientes: TButton;
    Label1: TLabel;
    lbVersion: TLabel;
    MenuGlobal: TMainMenu;
    Operaciones: TMenuItem;
    RegistrodeOrdenes: TMenuItem;
    Contabilidad: TMenuItem;
    FacturasCorporativas: TMenuItem;
    btnFactCorp: TButton;
    lblRegGastos: TLabel;
    lblRegOrdenes: TLabel;
    lblConsOrdenes: TLabel;
    lblConsClientes: TLabel;
    lblReportes: TLabel;
    lblAgenda: TLabel;
    lblFact: TLabel;
    Configuracion: TMenuItem;
    Parametros: TMenuItem;
    Reportes: TMenuItem;
    ReporteGlobal: TMenuItem;
    StatusBar: TStatusBar;
    spSucursal: TADOStoredProc;
    btnCierre: TButton;
    lblCierre: TLabel;
    CierreContable: TMenuItem;
    EditaOrdenes: TMenuItem;
    CambiodeSucursal: TMenuItem;
    Catalogos: TMenuItem;
    Clientes: TMenuItem;
    Estatus: TMenuItem;
    EstatusContable: TMenuItem;
    TipodeGasto: TMenuItem;
    SubTipodeGasto: TMenuItem;
    Prendas: TMenuItem;
    Servicios: TMenuItem;
    Precios: TMenuItem;
    Sucursales: TMenuItem;
    TipodeUsuario: TMenuItem;
    AltadeUsuarios: TMenuItem;
    TipodeCliente: TMenuItem;
    TipodePagos: TMenuItem;
    TipodeServicios: TMenuItem;
    CambiodeUsuario: TMenuItem;
    Grficas: TMenuItem;
    CatalogodeCuentas: TMenuItem;
    Ayuda: TMenuItem;
    Acercade: TMenuItem;
    RegistrodeMovimientos: TMenuItem;
    ConsultadeMovimientos: TMenuItem;
    spGetEstatusCaja: TADOStoredProc;
    dsGetEstatusCaja: TDataSource;
    AperturadeCaja: TMenuItem;
    CierredeCaja: TMenuItem;
    lblEsDesa: TLabel;
    figSemaforo: TShape;
    ConsultaMovimientosdeCaja: TMenuItem;
    ReportedeOperaciones: TMenuItem;
    btnNeoAgenda: TButton;
    Image2: TImage;
    btnQReportes: TButton;
    ReportesAdmin1: TMenuItem;
    RetirosdeEfectivo1: TMenuItem;
    procedure btnOrdenesClick(Sender: TObject);
    procedure btnGastosClick(Sender: TObject);
    procedure btnReportesClick(Sender: TObject);
    procedure btnConsOrdenesClick(Sender: TObject);
    procedure PreciosClick(Sender: TObject);
    procedure btnAgendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGraficasClick(Sender: TObject);
    procedure btnConsClientesClick(Sender: TObject);
    procedure btnFactCorpClick(Sender: TObject);
    procedure RegistrodeOrdenesClick(Sender: TObject);
    procedure FacturasCorporativasClick(Sender: TObject);
    procedure ParametrosClick(Sender: TObject);
    procedure ReporteGlobalClick(Sender: TObject);
    procedure btnCierreClick(Sender: TObject);
    procedure CierreContableClick(Sender: TObject);
    procedure EditaOrdenesClick(Sender: TObject);
    procedure CambiodeSucursalClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure EstatusClick(Sender: TObject);
    procedure EstatusContableClick(Sender: TObject);
    procedure TipodeGastoClick(Sender: TObject);
    procedure SubTipodeGastoClick(Sender: TObject);
    procedure PrendasClick(Sender: TObject);
    procedure ServiciosClick(Sender: TObject);
    procedure SucursalesClick(Sender: TObject);
    procedure TipodeUsuarioClick(Sender: TObject);
    procedure AltadeUsuariosClick(Sender: TObject);
    procedure TipodeClienteClick(Sender: TObject);
    procedure TipodePagosClick(Sender: TObject);
    procedure TipodeServiciosClick(Sender: TObject);
    procedure CambiodeUsuarioClick(Sender: TObject);
    procedure GrficasClick(Sender: TObject);
    procedure CatalogodeCuentasClick(Sender: TObject);
    procedure AcercadeClick(Sender: TObject);
    procedure RegistrodeMovimientosClick(Sender: TObject);
    procedure ConsultadeMovimientosClick(Sender: TObject);
    procedure AperturadeCajaClick(Sender: TObject);
    procedure CierredeCajaClick(Sender: TObject);
    procedure ConsultaMovimientosdeCajaClick(Sender: TObject);
    procedure ReportedeOperacionesClick(Sender: TObject);
    procedure plEvaluaPermisos();
    procedure plEvaluaSucursal();
    procedure plRegistraOrdenes();
    procedure plFacturacionCorp();
    procedure plReportes();
    procedure plCierreContable();
    procedure btnNeoAgendaClick(Sender: TObject);
    procedure btnQReportesClick(Sender: TObject);
    procedure ReportesAdmin1Click(Sender: TObject);
    procedure RetirosdeEfectivo1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmPOS: TfrmPOS;
implementation
{$R *.dfm}



procedure TfrmPOS.btnOrdenesClick(Sender: TObject);
begin
  plRegistraOrdenes();
end;

procedure TfrmPOS.btnQReportesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmQReportes, frmQReportes);

    frmQReportes.Width := 1230;
    frmQReportes.Height := 770;

  frmQReportes.ShowModal;
  frmQReportes.Destroy;
end;

procedure TfrmPOS.btnConsOrdenesClick(Sender: TObject);
//Boton Consulta Ordenes
begin
  if vgIdTipoUsuario <> 3 then begin
    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
        MessageDlg('1.-La caja no ha cerrado desde el '+ datetostr(vgFechaUltimaApertura),mtWarning,[mbOK],0);

      if vgintCajaAbierta = 1 then begin
        Application.CreateForm(TfrmConsultaOrdenes, frmConsultaOrdenes);
        frmConsultaOrdenes.ShowModal;
        frmConsultaOrdenes.Destroy;
      end
      else
        MessageDlg('La caja se encuentra CERRADA, favor de ejecutar "Apertura de Caja".',mtError,[mbOK],0);
  end
  else begin
      Application.CreateForm(TfrmConsultaOrdenes, frmConsultaOrdenes);
      frmConsultaOrdenes.ShowModal;
      frmConsultaOrdenes.Destroy;
  end;
end;

procedure TfrmPOS.btnGastosClick(Sender: TObject);
//Boton Registro de Gastos
begin
  if vgIdTipoUsuario <> 3 then begin
    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
        MessageDlg('2.-La caja no ha cerrado desde el '+ datetostr(vgFechaUltimaApertura),mtWarning,[mbOK],0);

    if vgintCajaAbierta = 1 then begin
      Application.CreateForm(TfrmGastos, frmGastos);
      frmGastos.ShowModal;
      frmGastos.Destroy;

    end
    else
      MessageDlg('La caja se encuentra CERRADA, favor de ejecutar "Apertura de Caja".',mtError,[mbOK],0);
  end
  else begin
      Application.CreateForm(TfrmGastos, frmGastos);
      frmGastos.ShowModal;
      frmGastos.Destroy;
  end;
end;

Procedure TfrmPOS.btnCierreClick(Sender: TObject);
//Boton cierrre contable
begin
  plCierreContable();
end;

procedure TfrmPOS.CierreContableClick(Sender: TObject);
//Menu Cierre contable
begin
  plCierreContable();
end;


procedure TfrmPOS.CambiodeSucursalClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSucursal, frmSucursal);
  frmSucursal.ShowModal;
  frmSucursal.Destroy;
  StatusBar.Panels.Items[4].Text := 'SUCURSAL: '+ vgstrSucursal;
  plEvaluaSucursal();

end;
procedure TfrmPOS.CambiodeUsuarioClick(Sender: TObject);
begin
    Application.CreateForm(TfrmCambioUsuario, frmCambioUsuario);
    frmCambioUsuario.ShowModal;
    frmCambioUsuario.Destroy;
      //Setea usuario y tipo
    StatusBar.Panels.Items[0].Text := 'USUARIO: '+vgstrNombreUsuario;
    StatusBar.Panels.Items[2].Text := 'TIPO DE USUARIO: '+vgstrTipoUsuario;

    plEvaluaPermisos();
end;

procedure TfrmPOS.CatalogodeCuentasClick(Sender: TObject);
begin
   Application.CreateForm(TcatCuentas, catCuentas);
   catCuentas.showModal;
   catCuentas.Destroy;
end;

procedure TfrmPOS.ClientesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmClientes, frmClientes);
  frmClientes.ShowModal;
  frmClientes.Destroy
end;

procedure TfrmPOS.ConsultadeMovimientosClick(Sender: TObject);
begin
    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
        MessageDlg('3.-La caja no ha cerrado desde el '+ datetostr(vgFechaUltimaApertura),mtWarning,[mbOK],0);

    Application.CreateForm(TfrmConsultaMov, frmConsultaMov);
    frmConsultaMov.ShowModal;
    frmConsultaMov.Destroy;
end;

procedure TfrmPOS.ConsultaMovimientosdeCajaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmConsultaMovCaja, frmConsultaMovCaja);
  frmConsultaMovCaja.ShowModal;
  frmConsultaMovCaja.Destroy;
end;

procedure TfrmPOS.EditaOrdenesClick(Sender: TObject);
begin
  Application.CreateForm(TForm1, Form1);
  Form1.ShowModal;
  Form1.Destroy;
end;
procedure TfrmPOS.EstatusClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCatEstatus, frmCatEstatus);
  frmCatEstatus.ShowModal;
  frmCatEstatus.Destroy;
end;

procedure TfrmPOS.EstatusContableClick(Sender: TObject);
begin
  Application.CreateForm(TfrmEstatusContableCat, frmEstatusContableCat);
  frmEstatusContableCat.ShowModal;
  frmEstatusContableCat.Destroy;
end;

procedure TfrmPOS.btnConsClientesClick(Sender: TObject);
begin
  Application.CreateForm(TfrmConsultaClienteV2, frmConsultaClienteV2);
  frmConsultaClienteV2.ShowModal;
  frmConsultaClienteV2.Destroy
end;

procedure TfrmPOS.btnGraficasClick(Sender: TObject);
begin
  Application.CreateForm(TGraficas, Graficas);
  Graficas.ShowModal;
  Graficas.Destroy;
end;

procedure TfrmPOS.btnNeoAgendaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmNeoAgenda, frmNeoAgenda);
  frmNeoAgenda.ShowModal;
  frmNeoAgenda.Destroy;
end;

procedure TfrmPOS.btnFactCorpClick(Sender: TObject);
begin
  plFacturacionCorp();
end;

procedure TfrmPOS.FacturasCorporativasClick(Sender: TObject);
begin
  plFacturacionCorp();
end;

procedure TfrmPOS.plFacturacionCorp();
begin
  if vgIdTipoUsuario <> 3 then begin
      if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
          MessageDlg('4.-La caja no ha cerrado desde el '+ datetostr(vgFechaUltimaApertura),mtWarning,[mbOK],0);

      if vgintCajaAbierta = 1 then begin
        Application.CreateForm(TfrmCorporativos, frmCorporativos);
        frmCorporativos.ShowModal;
        frmCorporativos.Destroy;
      end
      else
        MessageDlg('La caja se encuentra CERRADA, favor de ejecutar "Apertura de Caja".',mtError,[mbOK],0);
  end
  else begin
      Application.CreateForm(TfrmCorporativos, frmCorporativos);
      frmCorporativos.ShowModal;
      frmCorporativos.Destroy;
  end;
end;

procedure TfrmPOS.FormCreate(Sender: TObject);
//Alex revisado 01/03/23
// Se agrego sentencia Halt y se modifico el mensaje de error de la conexion a la BD
begin
  //Asigna cadena de Conexion del archivo de configuracion conexion.cfg (ver Login.pas)
  //Conn.Close;


  if vgIesPROD = 1 then begin
    Conn.ConnectionString := vgCadenaConexion;
      if vgintCamuflaje = 1 then begin
          Image2.Picture.LoadFromFile('C:\Alx\EugenesOne\azul.jpg');
          //Image2.Stretch := false;
          Image2.AutoSize := true;
          Image2.Left   := 0;
          Image2.Top    := 0;
          Image2.Width  := 1032;
          Image2.Height := 643;

          lblRegGastos.Caption :='RG';
          lblRegGastos.Left := 745;

          lblRegOrdenes.Caption :='RO';
          lblRegOrdenes.Left := 745;

          lblConsOrdenes.Caption :='CO';
          lblConsOrdenes.Left := 745;

          lblConsClientes.Caption :='CC';
          lblConsClientes.Left := 745;

          lblReportes.Caption :='R';
          lblReportes.Left := 745;

          lblAgenda.Caption :='A';
          lblAgenda.Left := 745;

          lblFact.Caption :='F';
          lblFact.Left := 745;

          lblCierre.Caption :='C';
          lblCierre.Left := 745;

      end
      else begin
        Image2.Stretch := true;
        Image2.AutoSize := true;
        Image2.Center := true;
        Image2.Proportional := true;
        Image2.Left   := 0;
        Image2.Top    := 0;
        Image2.Width  := 1212;
        Image2.Height := 643;

        Image2.Picture.LoadFromFile('C:\Alx\EugenesOne\FondoEugenesOne.jpg');
      end;
  end
  else if vgIAmbiente = 0 then begin
          //btnQReportes.Visible := true;
          lblEsDesa.Caption := 'DESARROLLO';
          //Image2.Left := -10;
          Conn.ConnectionString := vgCadenaConexionDes;
       end
       else if vgIAmbiente = -1 then begin
          lblEsDesa.Caption := 'STAGING';
          //Image2.Left := -10;
          Conn.ConnectionString := vgCadenaConexionDes;
          //Image2.Picture.LoadFromFile('C:\Alx\EugenesOne\Azul.jpg');
       end;


  //Abre la Connexion a la BD
  try
    Conn.Open;
  except
    On E: Exception do
    begin
        MessageDlg('ERROR DE CONEXION  - VERIFICA ACCESO A INTERNET '+#13+'RUTA: wndPOS.FormCreate ' + #13 + 'ERROR: '+ E.ToString,mtError,[mbOK],0);
        //exit;
        Halt;
    end;
  end;

  qParametros.Close;
  //Obtiene version de BD
  qParametros.Parameters.ParamByName('pParametro').Value:=2;
  qParametros.Open;
  lbVersion.Caption := 'DB '+qParametros.FieldByName('strDescripcion').Text +' '+ qParametros.FieldByName('strParametro').Text;
  qParametros.Close;

  //Setea usuario y tipo de usuario de las variables globales
  StatusBar.Panels.Items[0].Text := 'USUARIO: '+vgstrNombreUsuario;
  StatusBar.Panels.Items[2].Text := 'TIPO DE USUARIO: '+vgstrTipoUsuario;
  //Obtiene Sucursal para el registro de ordenes correcto

  spSucursal.Close;
  //Obtiene el detalle (nombre) de la sucursal que se establecio en la configuración
  spSucursal.Parameters.ParamByName('@pintsucursal').Value := vgintSucursal;
  spSucursal.Open;
  vgstrSucursal := spSucursal.FieldByName('Sucursal').Value;
  StatusBar.Panels.Items[4].Text := 'SUCURSAL: '+spSucursal.FieldByName('Sucursal').Value;

  plEvaluaPermisos(); //Habilita y deshabilita menus
  plEvaluaSucursal();

end;

procedure TfrmPOS.GrficasClick(Sender: TObject);
begin
  Application.CreateForm(TGraficas, Graficas);
  Graficas.ShowModal;
  Graficas.Destroy;
end;

procedure TfrmPOS.TipodeClienteClick(Sender: TObject);
begin
    Application.CreateForm(TfrmTipoCliente, frmTipoCliente);
    frmTipoCliente.ShowModal;
    frmTipoCliente.Destroy;
end;

procedure TfrmPOS.TipodeGastoClick(Sender: TObject);
begin
    Application.CreateForm(TfrmTipoGastoCat, frmTipoGastoCat);
    frmTipoGastoCat.ShowModal;
    frmTipoGastoCat.Destroy;
end;

procedure TfrmPOS.TipodePagosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmTipoPago, frmTipoPago);
    frmTipoPago.ShowModal;
    frmTipoPago.Destroy;
end;

procedure TfrmPOS.TipodeServiciosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmTipoServicio, frmTipoServicio);
    frmTipoServicio.ShowModal;
    frmTipoServicio.Destroy;
end;

procedure TfrmPOS.TipodeUsuarioClick(Sender: TObject);
begin
    Application.CreateForm(TfrmTipoUsuario, frmTipoUsuario);
    frmTipoUsuario.ShowModal;
    frmTipoUsuario.Destroy;
end;

procedure TfrmPOS.ParametrosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmParametros, frmParametros);
    frmParametros.ShowModal;
    frmParametros.Destroy;
end;
procedure TfrmPOS.PreciosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPrecios, frmPrecios);
  frmPrecios.ShowModal;
  frmPrecios.Destroy;
end;
procedure TfrmPOS.PrendasClick(Sender: TObject);
begin
  Application.CreateForm(TfrmPrenda, frmPrenda);
  frmPrenda.ShowModal;
  frmPrenda.Destroy;
end;

procedure TfrmPOS.RegistrodeMovimientosClick(Sender: TObject);
begin
    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
        MessageDlg('5.-La caja no ha cerrado desde el '+ datetostr(vgFechaUltimaApertura),mtWarning,[mbOK],0);

    Application.CreateForm(TfrmRegistroMovimientos, frmRegistroMovimientos);
    frmRegistroMovimientos.ShowModal;
    frmRegistroMovimientos.Destroy;
end;

procedure TfrmPOS.RegistrodeOrdenesClick(Sender: TObject);
begin

  plRegistraOrdenes();

end;

procedure TfrmPOS.ReportedeOperacionesClick(Sender: TObject);
begin
    Application.CreateForm(TfrmConsultaOperaciones, frmConsultaOperaciones);
    frmConsultaOperaciones.ShowModal;
    frmConsultaOperaciones.Destroy;
end;

procedure TfrmPOS.ReporteGlobalClick(Sender: TObject);
//Menu Reporte
begin
  plReportes();
end;

procedure TfrmPOS.ReportesAdmin1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmQReportes, frmQReportes);

    frmQReportes.Width := 1290;
    frmQReportes.Height := 850;

  frmQReportes.ShowModal;
  frmQReportes.Destroy;
end;

procedure TfrmPOS.RetirosdeEfectivo1Click(Sender: TObject);
begin
  if vgintCajaAbierta = 1 then begin
    Application.CreateForm(TfrmRetirosEfectivo, frmRetirosEfectivo);
    frmRetirosEfectivo.ShowModal;
    frmRetirosEfectivo.Destroy;

  end
  else
    MessageDlg('La caja se encuentra CERRADA.',mtInformation,[mbOK],0);
end;

procedure TfrmPOS.btnReportesClick(Sender: TObject);
//Boton Reportes
begin
   plReportes();
end;

procedure TfrmPOS.ServiciosClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCatServicio, frmCatServicio);
  frmCatServicio.ShowModal;
  frmCatServicio.Destroy;
end;

procedure TfrmPOS.SubTipodeGastoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSubTipoGasto, frmSubTipoGasto);
  frmSubTipoGasto.ShowModal;
  frmSubTipoGasto.Destroy;
end;

procedure TfrmPOS.SucursalesClick(Sender: TObject);
begin
    Application.CreateForm(TfrmSucursalCat, frmSucursalCat);
    frmSucursalCat.ShowModal;
    frmSucursalCat.Destroy;
end;

procedure TfrmPOS.AcercadeClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAcercaDe, frmAcercaDe);
  frmAcercaDe.ShowModal;
  frmAcercaDe.Destroy;
end;

procedure TfrmPOS.AltadeUsuariosClick(Sender: TObject);
begin
    Application.CreateForm(TfrmUsuario, frmUsuario);
    frmUsuario.ShowModal;
    frmUsuario.Destroy;
end;
//VERIFICA EL ESTATUS DE LA CAJA Y LA ABRE O LA CIERRA
procedure TfrmPOS.CierredeCajaClick(Sender: TObject);
begin
  if vgintCajaAbierta = 1 then begin
    Application.CreateForm(TfrmCierreCaja, frmCierreCaja);
    frmCierreCaja.ShowModal;
    frmCierreCaja.Destroy;

    if vgintCajaAbierta = 1 then
      figSemaforo.Brush.Color := clLime
    else
      figSemaforo.Brush.Color := clRed;


    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
      figSemaforo.Brush.Color := clYellow;

  end
  else
    MessageDlg('La caja se encuentra CERRADA.',mtInformation,[mbOK],0);
end;
procedure TfrmPOS.AperturadeCajaClick(Sender: TObject);
begin
  if vgintCajaAbierta = 0 then begin
    Application.CreateForm(TfrmAperturaCaja, frmAperturaCaja);
    frmAperturaCaja.ShowModal;
    frmAperturaCaja.Destroy;

    if vgintCajaAbierta = 1 then
      figSemaforo.Brush.Color := clLime
    else
      figSemaforo.Brush.Color := clRed;

    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
      figSemaforo.Brush.Color := clYellow;
  end
  else
    MessageDlg('La caja se encuentra ABIERTA.',mtInformation,[mbOK],0);
end;
//////////////////////////////////////////////////////
procedure TfrmPOS.btnAgendaClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAgenda, frmAgenda);
  frmAgenda.ShowModal;
  frmAgenda.Destroy;

end;

procedure TfrmPOS.plEvaluaPermisos();
//Alex revisado 01/03/23
// Se documento el procedimiento
begin
  if vgIdTipoUsuario = 3 then begin
      //Menú: Contabilidad
      //MenuGlobal.Items[1].Items[2].Enabled := true;  //Retiros de Efectivo
      MenuGlobal.Items[1].Items[3].Enabled := true;  //Consulta Movimientos de Caja
      MenuGlobal.Items[1].Items[4].Enabled := true;  //Facturas Corporativas
      MenuGlobal.Items[1].Items[6].Enabled := true;  //Registro de Movimientos
      MenuGlobal.Items[1].Items[7].Enabled := true;  //Consulta de Movimientos
      //Menú: Reportes
      MenuGlobal.Items[2].Items[1].Enabled := true;  //Gráficas
      MenuGlobal.Items[2].Items[2].Enabled := true;  //Reporte de Operaciones
      MenuGlobal.Items[2].Items[3].Enabled := true;  //Reporte Admin
      //Menú: Catálogos
      MenuGlobal.Items[3].Items[7].Enabled := true;  //Precios
      //Menú: Configuración
      MenuGlobal.Items[4].Items[0].Enabled := true;  //Parámetros
      MenuGlobal.Items[4].Items[3].Enabled := true;  //Cambio e Sucursal
      MenuGlobal.Items[4].Items[4].Enabled := true;  //Alta de usuarios
      MenuGlobal.Items[4].Items[5].Enabled := true;  //Catálogo de Cuentas
  end
  else begin
      //Menú: Contabilidad
      //MenuGlobal.Items[1].Items[2].Enabled := false;  //Retiros de Efectivo
      MenuGlobal.Items[1].Items[3].Enabled := false;  //Consulta Movimientos de Caja      MenuGlobal.Items[1].Items[3].Enabled := false;  //Facturas Corporativas
      MenuGlobal.Items[1].Items[4].Enabled := false;  //Facturas Corporativas
      MenuGlobal.Items[1].Items[6].Enabled := false;  //Registro de Movimientos
      MenuGlobal.Items[1].Items[7].Enabled := false;  //Consulta de Movimientos
      //Menú: Reportes
      MenuGlobal.Items[2].Items[1].Enabled := false;  //Gráficas
      MenuGlobal.Items[2].Items[2].Enabled := false;  //Reporte de Operaciones
      MenuGlobal.Items[2].Items[3].Enabled := false;  //Reporte Admin
      //Menú: Catálogos
      MenuGlobal.Items[3].Items[7].Enabled := false;  //Precios
      //Menú: Configuración
      MenuGlobal.Items[4].Items[0].Enabled := false;  //Parámetros
      MenuGlobal.Items[4].Items[3].Enabled := false;  //Cambio e Sucursal
      MenuGlobal.Items[4].Items[4].Enabled := false;  //Alta de usuarios
      MenuGlobal.Items[4].Items[5].Enabled := false;  //Catálogo de Cuentas
  end;
end;

procedure TfrmPOS.plRegistraOrdenes();
begin
  //Si el usuario no es administrador entra para hacer todas las validaciones
  if vgIdTipoUsuario <> 3 then begin

    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
        MessageDlg('6.-La caja no ha cerrado desde el '+ datetostr(vgFechaUltimaApertura),mtWarning,[mbOK],0);

    if vgintCajaAbierta = 1 then begin
      Application.CreateForm(TfrmOrdenesV2, frmOrdenesV2);
      frmOrdenesV2.ShowModal;
      frmOrdenesV2.Destroy;
    end

    else
      MessageDlg('La caja se encuentra CERRADA, favor de ejecutar "Apertura de Caja".',mtError,[mbOK],0);
  end
  //Si el usuario es ADMIN entra a operar si abrir la caja
  else begin
      Application.CreateForm(TfrmOrdenesV2, frmOrdenesV2);
      frmOrdenesV2.ShowModal;
      frmOrdenesV2.Destroy;
  end;
end;

procedure TfrmPOS.plEvaluaSucursal();
//Alex revisado 01/03/23
// Se documento el procedimiento y se comento si la fecha de apertura en caso de caja cerrada, no es necesario
// ya que la ultima validación es solo si la caja esta abierta
begin
  //Obtiene el estatus ultimo de la Caja de esta sucursal
  spGetEstatusCaja.Parameters.ParamByName('@pintsucursal').Value := vgintSucursal;
  spGetEstatusCaja.Open;
  // idTipoOperacion = 1 : Abierta
  if spGetEstatusCaja.FieldByName('idTipoOperacion').Value = 1 then begin
      vgintCajaAbierta := 1;
      figSemaforo.Brush.Color := clLime;
      vgFechaUltimaApertura := strtodate(spGetEstatusCaja.FieldByName('dteFechaHora').value);
  end
  // idTipoOperacion = 0 : Cerrada
  else begin
      vgintCajaAbierta := 0;
      figSemaforo.Brush.Color := clRed;
//      //Solo es null cuando no se inicia el sistema ya que no existe registro
//      if (spGetEstatusCaja.FieldByName('dteFechaHora').Value <> null) then
//        vgFechaUltimaApertura := spGetEstatusCaja.FieldByName('dteFechaHora').Value
//      else
//        vgFechaUltimaApertura := strtoDate('01/01/2000');
  end;
  if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
    figSemaforo.Brush.Color := clYellow;

end;

procedure TfrmPOS.plReportes();
begin
  if vgIdTipoUsuario = 3 then begin
    Application.CreateForm(TfrmReportesAdmin, frmReportesAdmin);
    //frmReportesAdmin.Width := 1020;
    //frmReportesAdmin.Height := 700;
    frmReportesAdmin.Width := 1270;
    frmReportesAdmin.Height := 830;

    frmReportesAdmin.ShowModal;
    frmReportesAdmin.Destroy;
  end
  else begin
    Application.CreateForm(TfrmReportesUsuario, frmReportesUsuario);
    frmReportesUsuario.ShowModal;
    frmReportesUsuario.Destroy;
  end;
end;

procedure TfrmPOS.plCierreContable();
begin
  if vgIdTipoUsuario <> 3 then begin
    if (daysBetween(now , vgFechaUltimaApertura) > 0) and (vgintCajaAbierta = 1) then
        MessageDlg('7.-La caja no ha cerrado desde el '+ datetostr(vgFechaUltimaApertura),mtWarning,[mbOK],0);

    if vgintCajaAbierta = 1 then begin
      Application.CreateForm(TfrmCierre, frmCierre);
      frmCierre.ShowModal;
      frmCierre.Destroy;
    end
    else
      MessageDlg('La caja se encuentra CERRADA, favor de ejecutar "Apertura de Caja".',mtError,[mbOK],0);
  end
    else begin
      Application.CreateForm(TfrmCierre, frmCierre);
      frmCierre.ShowModal;
      frmCierre.Destroy;
    end;
end;

end.
