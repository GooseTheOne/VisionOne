unit catServicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Globales;

type
  TfrmCatServicio = class(TForm)
    Conn: TADOConnection;
    spServicio: TADOStoredProc;
    dsServicio: TDataSource;
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
  frmCatServicio: TfrmCatServicio;

implementation

{$R *.dfm}

procedure TfrmCatServicio.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - catServicio');
      end;
    end;

    spServicio.Close;
    spServicio.Open;
end;

end.
