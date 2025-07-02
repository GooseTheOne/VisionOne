unit Precios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Globales;

type
  TfrmMantPrecios = class(TForm)
    Conn: TADOConnection;
    tblPrendas: TADOTable;
    dsPrendas: TDataSource;
    DBNavigator1: TDBNavigator;
    tblAjustes: TADOTable;
    dsAjustes: TDataSource;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    qPrecios: TADOQuery;
    dsPrecios: TDataSource;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    dbgPrenda: TDBGrid;
    DBLookupListBox1: TDBLookupListBox;
    qAjustesPrenda: TADOQuery;
    dsAjustesPrenda: TDataSource;
    DBLookupListBox2: TDBLookupListBox;
    qAjustesPrendaOrigen: TADOQuery;
    dsAjustesPrendaOrigen: TDataSource;
    procedure dbgPrendaCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMantPrecios: TfrmMantPrecios;

implementation

{$R *.dfm}

procedure TfrmMantPrecios.dbgPrendaCellClick(Column: TColumn);
begin
    qAjustesPrenda.Close;
    qAjustesPrenda.Parameters.ParamByName('pPrenda').Value := dbgPrenda.DataSource.DataSet.FieldByName('intTipoPrenda').AsString;
    qAjustesPrenda.Open;

    qAjustesPrendaOrigen.Close;
    qAjustesPrendaOrigen.Parameters.ParamByName('pPrendaOrigen').Value := dbgPrenda.DataSource.DataSet.FieldByName('intTipoPrenda').AsString;
    qAjustesPrendaOrigen.Open;

end;

procedure TfrmMantPrecios.FormCreate(Sender: TObject);
begin
  Conn.Close;
  Conn.ConnectionString := vgCadenaConexion;
  Conn.Open;
end;

end.
