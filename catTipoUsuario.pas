unit catTipoUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Globales,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmTipoUsuario = class(TForm)
    Conn: TADOConnection;
    spTipoUsuario: TADOStoredProc;
    dsTipoUsuario: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoUsuario: TfrmTipoUsuario;

implementation

{$R *.dfm}

procedure TfrmTipoUsuario.FormCreate(Sender: TObject);
begin
    Conn.Close;
    Conn.ConnectionString := vgCadenaConexion;
    Conn.Open;

    spTipoUsuario.Close;
    spTipoUsuario.Open;
end;

end.
