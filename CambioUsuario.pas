unit CambioUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Globales;

type
  TfrmCambioUsuario = class(TForm)
    edUsuario: TEdit;
    edPassword: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Conn: TADOConnection;
    spLogin: TADOStoredProc;
    lblNombre: TLabel;
    lblUsuario: TLabel;
    lblTipo: TLabel;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edPasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCambioUsuario: TfrmCambioUsuario;

implementation

{$R *.dfm}

procedure TfrmCambioUsuario.Button1Click(Sender: TObject);
begin
    spLogin.Close;
    spLogin.Parameters.ParamByName('@pstrUsuario').Value := LowerCase(edUsuario.Text);
    spLogin.Parameters.ParamByName('@pstrPassword').Value := edPassword.Text;
    spLogin.Open;
    if spLogin.Recordset.RecordCount = 1 then
      begin
          vgstrNombreUsuario  := spLogin.FieldByName('Nombre').Value;
          vgidTipoUsuario     := spLogin.FieldByName('Tipo').Value;
          vgstrTipoUsuario    := spLogin.FieldByName('strTipo').Value;
          vgidUsuario         := spLogin.FieldByName('idUsuario').Value;
          vgstrUsuario        := edUsuario.Text;

          lblNombre.Caption := 'Nombre: ' + vgstrNombreUsuario;
          lblUsuario.Caption := 'Usuario: ' + vgstrUsuario;
          lblTipo.Caption := 'Tipo: ' + vgstrTipoUsuario;

          frmCambioUsuario.close;

      end
    else
      begin
          //Application.MessageBox('El usuario/password proporcionado no es correcto.', 'LOGIN FAILED');
          MessageDlg('El usuario/password proporcionado no es correcto.',mtError ,[mbOK],0);
          edUsuario.SetFocus;
      end;
end;

procedure TfrmCambioUsuario.edPasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=13 then
        Button1.Click;
end;

procedure TfrmCambioUsuario.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - CambioUsuario');
    end;
  end;

    lblNombre.Caption := 'Nombre: ' + vgstrNombreUsuario;
    lblUsuario.Caption := 'Usuario: ' + vgstrUsuario;
    lblTipo.Caption := 'Tipo: ' + vgstrTipoUsuario;

end;

end.
