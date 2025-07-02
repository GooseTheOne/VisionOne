unit Parametros;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,
  Globales, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask;
type
  TfrmParametros = class(TForm)
    spGetSysParametro: TADOStoredProc;
    conn: TADOConnection;
    dsGetSysParametro: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmParametros: TfrmParametros;
  AdoConn: TADOConnection;
  conStr : string;
implementation
{$R *.dfm}


procedure TfrmParametros.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Parametros');
    end;
  end;

  spGetSysParametro.Close;
  spGetSysParametro.Open;

end;

end.
