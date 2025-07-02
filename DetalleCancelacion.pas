unit DetalleCancelacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Globales;

type
  TfrmDetalleCancelacion = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    dbcbxMotivo: TDBLookupComboBox;
    Label2: TLabel;
    memJustificacion: TMemo;
    Conn: TADOConnection;
    spGetMotivosCancelacion: TADOStoredProc;
    dsGetMotivosCancelacion: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    plstrMotivo: string;
    plidMotivo: integer;
  end;

var
  frmDetalleCancelacion: TfrmDetalleCancelacion;

implementation

{$R *.dfm}

procedure TfrmDetalleCancelacion.Button1Click(Sender: TObject);
begin
  if(dbcbxMotivo.KeyValue = 0) then
    ShowMessage('Seleccione un Motivo de Cancelación')
  else  begin
        if memJustificacion.Text = '' then
          ShowMessage('Ingrese una breve descripción del problema')
        else  begin
              plidMotivo  := dbcbxMotivo.KeyValue;
              plstrMotivo := memJustificacion.Text;
              frmDetalleCancelacion.Close;
        end;


  end;

end;

procedure TfrmDetalleCancelacion.FormCreate(Sender: TObject);
begin

    //Conn.Close;
  if vgIesPROD = 1 then
    Conn.ConnectionString := vgCadenaConexion
  else
    Conn.ConnectionString := vgCadenaConexionDes;

  try
    Conn.Open;
  except
    On E: Exception do
    begin
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ConsultaOrdenes');
    end;
  end;



    spGetMotivosCancelacion.Open;
    dbcbxMotivo.KeyValue := 0;
end;

end.
