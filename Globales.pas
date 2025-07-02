
unit Globales;

interface

uses
  SysUtils;

var
    //Usuario
    vgstrUsuario:string;
    //ID del usuario
    vgidUsuario:integer;
    //Nombre del usuario
    vgstrNombreUsuario: string;
    //ID del tipo de usuario
    vgIdTipoUsuario: integer;
    //Desc del tipo de Usuario
    vgstrTipoUsuario: string;
    //Cadena de conexion PROD(obtenida del archivo de conexion.cfg
    vgCadenaConexion:string;
    //Cadena de conexion DESA(obtenida del archivo de conexion.cfg
    vgCadenaConexionDes:string;
    //Bandera para evitar el login 0=Pregunta usuario y contraseña, 1=entra sin pantalla de login
    vgIAmbiente:integer;
    //Bandera para indicar que es PROD
    vgIesPROD:integer;
    //Bandera de registro de folios manuales
    vgIFolioAnterior:integer;
    //ID de Sucursal (obtenida del segundo renglon del archivo de conexion.cfg
    vgintSucursal: integer;
    //Nombre de la sucursal
    vgstrSucursal: string;
    //Se activa si queremos registrar ordenes con fecha anterior
    vgintRetro: integer;
    //Se prende esta bandera si la caja actual (de la sucursal) esta abierta
    vgintCajaAbierta: integer;
    //Variable que se usa para identificar la fecha de la ultima apertura por sucursal
    vgFechaUltimaApertura: TDateTime;
    //Variable que se usa para identificar la fecha del ultimo cierre por sucursal
    vgFechaUltimoCierre: TDateTime;
    //Variable para identificar la ultima Orden Registrada
    vgUltimaOrden: Integer;
    //Variable para establecer el maximo de Y en gráfica de totales
    vgYTotales: Integer;
    //Variable que controla el modo Camuflaje
    vgintCamuflaje: Integer;
    //Variable para ser Dios
    GodMode: Integer;



    sLinea: String;
    dtFecha: String;

implementation

initialization
  dtFecha := DateToStr(Date);
  vgintCajaAbierta := 0;
  vgUltimaOrden := 0;
  vgintCamuflaje := 0;
  GodMode := 0;

end.

