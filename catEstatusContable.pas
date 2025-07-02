unit catEstatusContable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Globales,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TfrmEstatusContableCat = class(TForm)
    Conn: TADOConnection;
    spEstatusContableCat: TADOStoredProc;
    dsEstatusContableCat: TDataSource;
    DBGrid1: TDBGrid;
    dbeID: TDBEdit;
    dbeEstatus: TDBEdit;
    dbckActivo: TDBCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstatusContableCat: TfrmEstatusContableCat;

implementation

{$R *.dfm}

procedure TfrmEstatusContableCat.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - catEstatusContable');
      end;
    end;

    spEstatusContableCat.Close;
    spEstatusContableCat.Open;

end;

end.
