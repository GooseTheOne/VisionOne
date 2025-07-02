unit catSubtipoGasto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,catTipoGasto, Data.DB,
  Data.Win.ADODB, Vcl.DBCtrls, Globales, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TfrmSubTipoGasto = class(TForm)
    Button1: TButton;
    Conn: TADOConnection;
    spTipoGasto: TADOStoredProc;
    dsTipoGasto: TDataSource;
    dblkcTipoGasto: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    spSubtipoGasto: TADOStoredProc;
    dsSubtipoGasto: TDataSource;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    dbeID: TDBEdit;
    dbeTipoGasto: TDBEdit;
    dbeSubtipo: TDBEdit;
    dbeDescripcion: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dblkcTipoGastoCat: TDBLookupComboBox;
    spTipoGastoCat: TADOStoredProc;
    dsTipoGastoCat: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsTipoGastoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubTipoGasto: TfrmSubTipoGasto;

implementation

{$R *.dfm}

procedure TfrmSubTipoGasto.Button1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmTipoGastoCat, frmTipoGastoCat);
    frmTipoGastoCat.ShowModal;
    frmTipoGastoCat.Destroy;

    spTipoGasto.close;
    spTipoGasto.Open;
    spTipoGastoCat.close;
    spTipoGastoCat.Open;
end;

procedure TfrmSubTipoGasto.dsTipoGastoDataChange(Sender: TObject;
  Field: TField);
begin
  spSubtipoGasto.Close;
  spSubtipoGasto.Parameters.ParamByName('@pintTipo').Value := dblkcTipoGasto.KeyValue;
  spSubtipoGasto.Open;
end;

procedure TfrmSubTipoGasto.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - catSubtipoGasto');
    end;
  end;

    spTipoGasto.close;
    spTipoGasto.Open;
    spTipoGastoCat.close;
    spTipoGastoCat.Open;
end;

end.
