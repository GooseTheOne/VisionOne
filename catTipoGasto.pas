unit catTipoGasto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, globales,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmTipoGastoCat = class(TForm)
    Conn: TADOConnection;
    spTipoGastoCat: TADOStoredProc;
    dsTipoGastoCat: TDataSource;
    DBGrid1: TDBGrid;
    dbeID: TDBEdit;
    dbeTipoGasto: TDBEdit;
    dbckActivo: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbmDescripcion: TDBMemo;
    DBNavigator1: TDBNavigator;
    dbeCuentaDestino: TDBEdit;
    Label4: TLabel;
    spCuentaDestino: TADOStoredProc;
    dsCuentaDestino: TDataSource;
    dblkcCuentaDestino: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoGastoCat: TfrmTipoGastoCat;

implementation

{$R *.dfm}

procedure TfrmTipoGastoCat.FormCreate(Sender: TObject);
begin

    if vgIesPROD = 1 then
      Conn.ConnectionString := vgCadenaConexion
    else
      Conn.ConnectionString := vgCadenaConexionDes;

    spTipoGastoCat.close;
    spTipoGastoCat.Open;

    spCuentaDestino.Open;

end;

end.
