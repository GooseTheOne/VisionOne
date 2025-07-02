unit catTipoPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Globales,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmTipoPago = class(TForm)
    Conn: TADOConnection;
    spTipoPago: TADOStoredProc;
    dsTipoPago: TDataSource;
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
  frmTipoPago: TfrmTipoPago;

implementation

{$R *.dfm}

procedure TfrmTipoPago.FormCreate(Sender: TObject);
begin
    Conn.Close;
    Conn.ConnectionString := vgCadenaConexion;
    Conn.Open;

    spTipoPago.Close;
    spTipoPago.Open;


end;

end.
