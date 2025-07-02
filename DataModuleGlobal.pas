unit DataModuleGlobal;

interface

uses
  System.SysUtils,System.Classes,Data.DB,Data.Win.ADODB,Vcl.Dialogs,Globales;

type
  TDMGlobalConn = class(TDataModule)
    Conn: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGlobalConn: TDMGlobalConn;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMGlobalConn.DataModuleCreate(Sender: TObject);
begin

    if vgIesPROD = 1 then
      Conn.ConnectionString := vgCadenaConexion
    else
      Conn.ConnectionString := vgCadenaConexionDes;

    try
      Conn.Connected := True;
    except
      on E: Exception do
        ShowMessage('Error en el DataModule al conectar con la base de datos: ' + E.Message);
    end;
end;


function GetConnection: TADOConnection;
begin
    Result := DMGlobalConn.Conn;
end;


end.
