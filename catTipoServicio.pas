unit catTipoServicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,Globales;

type
  TfrmTipoServicio = class(TForm)
    Conn: TADOConnection;
    spTipoServicio: TADOStoredProc;
    dsTipoServicio: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoServicio: TfrmTipoServicio;

implementation

{$R *.dfm}

procedure TfrmTipoServicio.FormCreate(Sender: TObject);
begin
    Conn.Close;
    Conn.ConnectionString := vgCadenaConexion;
    Conn.Open;

    spTipoServicio.Close;
    spTipoServicio.Open;
end;

end.
