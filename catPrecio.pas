unit catPrecio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Globales, catPrenda,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPrecios = class(TForm)
    Conn: TADOConnection;
    spPrendas: TADOStoredProc;
    dsPrendas: TDataSource;
    dblkcPrendas: TDBLookupComboBox;
    Button1: TButton;
    Label1: TLabel;
    spPreciosCat: TADOStoredProc;
    dsPreciosCat: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    spPrendasCat: TADOStoredProc;
    dsPrendasCat: TDataSource;
    spServicioCat: TADOStoredProc;
    dsServicioCat: TDataSource;
    spTipoServicio: TADOStoredProc;
    dsTipoServicio: TDataSource;
    DBEdit6: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    Label7: TLabel;
    spGetSucursalesCambio: TADOStoredProc;
    dsGetSucursalesCambio: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dsPrendasDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrecios: TfrmPrecios;

implementation

{$R *.dfm}

procedure TfrmPrecios.Button1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPrenda, frmPrenda);
  frmPrenda.ShowModal;
  frmPrenda.Destroy;
    spPrendas.Close;
    spPrendas.Open;
end;

procedure TfrmPrecios.dsPrendasDataChange(Sender: TObject; Field: TField);
begin
    spPreciosCat.Close;
    spPreciosCat.Parameters.ParamByName('@pintPrenda').Value := dblkcPrendas.KeyValue;
    spPreciosCat.Open;

end;

procedure TfrmPrecios.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - catPrecio');
      end;
    end;

    spPrendas.Close;
    spPrendas.Open;

    spPrendasCat.Close;
    spPrendasCat.Open;

    spServicioCat.Close;
    spServicioCat.Open;

    spTipoServicio.Close;
    spTipoServicio.Open;

    spGetSucursalesCambio.Close;
    spGetSucursalesCambio.Open;


end;

end.
