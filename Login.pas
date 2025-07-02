unit Login;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, DB, ADODB, ActiveX;

type
  TfrmLogin = class(TForm)
    edUsuario: TEdit;
    edPassword: TEdit;
    btnLogin: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Image2: TImage;
    Conn: TADOConnection;
    spGetLogin: TADOStoredProc;
    Label3: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
    class function Execute : boolean;
  end;
var
  frmLogin: TfrmLogin;
  vlintFallas: integer;
implementation
uses Globales;
{$R *.dfm}

procedure TfrmLogin.btnLoginClick(Sender: TObject);
begin

    try
      Conn.Open;
    except
      On E: Exception do
      begin
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Login');
      end;
    end;

    spGetLogin.Close;
    spGetLogin.Parameters.ParamByName('@pstrUsuario').Value := LowerCase(edUsuario.Text);
    spGetLogin.Parameters.ParamByName('@pstrPassword').Value := edPassword.Text;
    spGetLogin.Open;
    if spGetLogin.Recordset.RecordCount = 1 then
    begin
        vgstrNombreUsuario  := spGetLogin.FieldByName('Nombre').Value;
        vgidTipoUsuario     := spGetLogin.FieldByName('Tipo').Value;
        vgstrTipoUsuario    := spGetLogin.FieldByName('strTipo').Value;
        vgidUsuario         := spGetLogin.FieldByName('idUsuario').Value;
        vgstrUsuario        := edUsuario.Text;
        ModalResult         := mrOK;       //Aqui es donde regresa el mrOK
    end
    else
    begin
        Application.MessageBox('El usuario/password proporcionado no es correcto.', 'LOGIN FAILED');
        vlintFallas := vlintFallas + 1;
        edUsuario.SetFocus;
        if vlintFallas = 5 then
            ModalResult := mrAbort;
    end;
end;

// Esta funcion ejecuta el metodo create de la forma, si la ejecucion de la ventana de login regresa un mrOK
// esta funcion tambien regresa el mrOK como resultado de la funcion de lo contrario regresa mrAbort y cierra la ventana
procedure TfrmLogin.edPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    // Ejecuta el click del boton de login en caso de que presione Enter (13)
    if Key=13 then
        btnLogin.Click;
end;

class function TfrmLogin.Execute: boolean;
begin
  CoInitialize(nil);
  with TfrmLogin.Create(nil) do
  try
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;
procedure TfrmLogin.FormCreate(Sender: TObject);
var
  i:integer;
begin
  // Esta variable sirve para identificar la linea que se esta leyendo, arbitrariamente la primera linea
  // es la cadena de conexion y la segunda es la sucursal
  vlintFallas := 0;
  // reabre la conexion con la variable vgCadenaConexion recien leida del archivo conexion.cfg

  //Conn.Close;
  if vgIesPROD = 1 then
    Conn.ConnectionString := vgCadenaConexion
  else
    Conn.ConnectionString := vgCadenaConexionDes;

    Image2.Center   := true;
    Image2.Stretch  := true;

end;
end.
