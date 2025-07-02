// Aplicacion EugenesOne
// Punto de venta para el control de Ordenes de servicio
//
// Autor: Alejandro Brito
// Fecha de ultima modificación: 16-DIC-2022
// Versión codigo fuente: 5.1.0
// Version de BD: 3.0
//////////////////////////////////////////////////////////////////
// Fecha de ultima modificación: 10-SEP-2023
// Versión codigo fuente: 6.0.0
// Version de BD: 3.0
// - Se corrigieron errores en loc calculos de los reportes
// - Bug - Conexion a la base de desarrollo
/////////////////////////////////////////////////////////////////
// Fecha de ultima modificación: 01-ENE-2024
// Versión codigo fuente: 6.0.1
// Version de BD: 3.1
// - Se estableció máximo para Y en gráfica de totales
// - Se agrego modo Camuflaje
// - Se corrigio error en el registro de precio en la linea de la orden
// - Se corrigio error al borrar registros de prendas y servicios en el registro de ordenes
/////////////////////////////////////////////////////////////////
// Fecha de ultima modificacion: 02/02/2025
// Version de código fuente: 8.0.0
// Version de BD: 3.1.1
// - Se configura correctamente las directivas de compilacion para acceder a PROD y DESA en funcion a DEBUG/RELEASE
// - Se corrigen errores de captura en ordenes, registro de gastos
// - Se corrigen errores de consulta en graficas
// - Se corrigen errores en consutas de reportes
// - Se agrego la opcion de LowerCase en el usuario al momento de hacer Login
// - Se agrego número de prendas
/////////////////////////////////////////////////////////////////
// Fecha de ultima modificación: 21/06/2025
// Versión de código fuente: 9.0.0
// Version de BD: 4.0.0 Azure
// - Se ajustaron los parametros de la conexion para el manejo de fechas en formato dd-mm-yyy
// - Se ajustaron los SP's para el menejo de la moneda correctamente es-MX
// - Se homologo el codigo fuente con el branch 8.0.1 desplegado
// - Se corrigio el problema del insert de ordenes cuando se activa el modo GOD
// - encontre el error de inicio que no podia conertir el tipo de dato, se corrigio dando formato correcto a la fecha desde el SP
/////////////////////////////////////////////////////////////////


program EugenesOne;
uses
  Vcl.Dialogs,
  Vcl.Forms,
  SysUtils,
  System.UITypes,
  Windows,
  wndPOS in 'wndPOS.pas' {frmPOS},
  Login in 'Login.pas' {frmLogin},
  RegistroOrdenes in 'RegistroOrdenes.pas' {frmOrdenesV2},
  Gastos in 'Gastos.pas' {frmGastos},
  ConsultaOrdenes in 'ConsultaOrdenes.pas' {frmConsultaOrdenes},
  ConsultaClientes in 'ConsultaClientes.pas' {frmConsultaClientes},
  ReporteCorporativos in 'ReporteCorporativos.pas' {frmCorporativos},
  Grafics in 'Grafics.pas' {Graficas},
  Cierre in 'Cierre.pas' {frmCierre},
  AgendaV2 in 'AgendaV2.pas' {frmNeoAgenda},
  Agenda in 'Agenda.pas' {frmAgenda},
  AperturaCaja in 'AperturaCaja.pas' {frmAperturaCaja},
  CierreCaja in 'CierreCaja.pas' {frmCierreCaja},
  RegistroMovimientos in 'RegistroMovimientos.pas' {frmRegistroMovimientos},
  ConsultaMovimientos in 'ConsultaMovimientos.pas' {frmConsultaMov},
  Clientes in 'Clientes.pas' {frmClientes},
  catEstatusContable in 'catEstatusContable.pas' {frmEstatusContableCat},
  catEstatus in 'catEstatus.pas' {frmCatEstatus},
  catTipoGasto in 'catTipoGasto.pas' {frmTipoGastoCat},
  catSubtipoGasto in 'catSubtipoGasto.pas' {frmSubTipoGasto},
  catPrenda in 'catPrenda.pas' {frmPrenda},
  catServicio in 'catServicio.pas' {frmCatServicio},
  catPrecio in 'catPrecio.pas' {frmPrecios},
  catSucursal in 'catSucursal.pas' {frmSucursalCat},
  catTipoUsuario in 'catTipoUsuario.pas' {frmTipoUsuario},
  catTipoCliente in 'catTipoCliente.pas' {frmTipoCliente},
  catTipoPago in 'catTipoPago.pas' {frmTipoPago},
  catTipoServicio in 'catTipoServicio.pas' {frmTipoServicio},
  Parametros in 'Parametros.pas' {frmParametros},
  EditorOrdenes in 'EditorOrdenes.pas' {Form1},
  CambioUsuario in 'CambioUsuario.pas' {frmCambioUsuario},
  CambioSucursal in 'CambioSucursal.pas' {frmSucursal},
  catUsuario in 'catUsuario.pas' {frmUsuario},
  catCuentasContables in 'catCuentasContables.pas' {catCuentas},
  AcercaDe in 'AcercaDe.pas' {frmAcercaDe},
  Globales in 'Globales.pas',
  FuncionesOne in 'FuncionesOne.pas',
  ConsultaMovCaja in 'ConsultaMovCaja.pas' {frmConsultaMovCaja},
  ReportesUsuario in 'ReportesUsuario.pas' {frmReportesUsuario},
  ReportesAdmin in 'ReportesAdmin.pas' {frmReportesAdmin},
  ConsultaOperaciones in 'ConsultaOperaciones.pas' {frmConsultaOperaciones},
  ConsultaClientesV2 in 'ConsultaClientesV2.pas' {frmConsultaClienteV2},
  QReportes in 'QReportes.pas' {frmQReportes},
  DetalleOrden in 'DetalleOrden.pas' {frmDetalleOrden},
  RetirosEfectivo in 'RetirosEfectivo.pas' {frmRetirosEfectivo},
  DetalleCancelacion in 'DetalleCancelacion.pas' {frmDetalleCancelacion},
  DataModuleGlobal in 'DataModuleGlobal.pas' {DMGlobalConn: TDataModule};

{$R *.res}
var
  F: TextFile;


//Variable de preprocesamiento, solo sirve para agilizar la carga
resourcestring
   SAlreadyRunning =
      'Estas tratando de correr la aplicacion dos veces.'#13 +
      'Ya tienes otra ventana abierta.';

//Esta funcion valida si ya esta corriendo una instancia de la aplicacion
function AlreadyRunning(const AIdentifier: string): Boolean;
begin
  CreateMutex(nil, False, PChar(AIdentifier));
  AlreadyRunning := GetLastError = ERROR_ALREADY_EXISTS;
end;

begin

  // Esta variable sirve para identificar la linea que se esta leyendo, arbitrariamente:
  // la primera línea es la cadena de conexion de PROD
  // la segunda línea es la sucursal
  // la tercera linea indica si es instalación PRODuctiva
  // la cuarta línea contiene la cadena de conexión de DESArollo
  // la quinta línea Captura ordenes con fecha retroactiva (pasada)
  // La sexta línea es para indicar el maximo de Y en la gráfica de totales
  // La septima línea indica la cadena de conexion de STAGGING
  // La octava linea indica si entra en modo camuflaje

  i := 1;

  // Esta directiva de compilacion toma efecto si se cambia el modo de ejecución DEBUD/RELEASE
  {$IFDEF DEBUG}
		  AssignFile( F, 'C:\\Alx\\EugenesOne\\config_desa.cfg' );
  {$ELSE}
		  AssignFile( F, 'C:\\Alx\\EugenesOne\\config.cfg' );
	{$ENDIF}

  if AlreadyRunning('Empresa.Aplicación.Versión') then
  begin
     MessageBox(0, PChar(SAlreadyRunning), 'Error', MB_ICONSTOP or MB_OK);
     Halt(1);
  end;

  try
    Reset( F );
  except
    On E: Exception do
    begin
        MessageDlg('El archivo de configuración: CONFIG.CFG  no se encuentra en la ruta esperada: C:\Alx\EugenesOne\config.cfg - '+ExtractFilePath( Application.ExeName ), mtError,[mbOK],0);
        exit;
    end;
  end;

  while not Eof( F ) do begin
      ReadLn( F, sLinea );

      if sLinea.Substring(0,1) <> '#' then begin
        if i = 1 then //Cadena de conexion PROD
            vgCadenaConexion:=sLinea;
        if i = 2 then //Sucursal
            vgintSucursal := strtoint(sLinea);
        if i = 3 then //Es PROD?
          if sLinea = 'PROD=1' then begin
              vgIAmbiente := 1;
              vgIesPROD := 1;
          end
          else if sLinea = 'PROD=-1' then begin //Usa -1 para conectar Stagging
                    vgIAmbiente := -1;
               end
               else begin
                    vgIAmbiente := 0;
               end;

        if i = 4 then //Cadena de conexion DESA
            vgCadenaConexionDes:=sLinea;
        if i = 5 then //Captura ordenes con fecha retroactiva (pasada)
          if sLinea = 'RETRO=1' then
              vgintRetro := 1        //por default es 0, no registra ordenes de fecha pasada
          else
              vgintRetro := 0;
        if i = 6 then
              vgYTotales := strtoint(sLinea);
        if (i = 7) and (vgIAmbiente = -1) then //Cadena de conexion de Stagging
              vgCadenaConexionDes:=sLinea;
        if i = 8 then //Camuflaje?
          if sLinea = 'CAMUFLAJE=1' then
              vgintCamuflaje := 1;
        if i = 9 then //Camuflaje?
          if sLinea = 'GODMODE=1' then    //MODO DIOS
              GodMode := 1;
        i := i + 1;
      end;
  end;
  CloseFile( F );


  // La variable vgIeAmbiente declarada en Globales.pas se usa para evitar abrir la pantalla
  // de login cuando se esta desarrollando
  if (vgIAmbiente = 1) and (GodMode = 0) then begin
      // Este metodo es un metodo customizado para co-ejecutar la pantalla de login, regresa true
      // si el usuario se validado correctamente
      if TfrmLogin.Execute then
      begin
          Application.Initialize;
          Application.CreateForm(TfrmPOS, frmPOS);
          Application.CreateForm(TDMGlobalConn, DMGlobalConn);
          Application.Run;
      end;
  end
  else
      begin
          // Si se esta en modo de desarrollo se setean las variable de usuario, tipo y sucursal
          // y se ejecuta la aplicacion sin login

          case vgIAmbiente of
                0: vgstrNombreUsuario 	:= 'ALEJANDRO DESA';
                1: vgstrNombreUsuario 	:= 'PROD GOD MODE';
                else vgstrNombreUsuario := 'ALEJANDRO STAGE';
          end;

          vgidUsuario := 1;
          vgidTipoUsuario := 3;
          vgstrTipoUsuario := 'ADMIN';
          vgintSucursal := 2;
          Application.Initialize;
          Application.CreateForm(TfrmPOS, frmPOS);
          Application.CreateForm(TDMGlobalConn, DMGlobalConn);
          Application.MainFormOnTaskbar := true;
          Application.Run;
      end;


end.
