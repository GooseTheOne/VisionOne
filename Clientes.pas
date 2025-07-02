unit Clientes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, globales,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCGrids, Data.Bind.Controls, Data.Bind.DBScope, Vcl.Buttons,
  Vcl.Bind.Navigator, Data.Bind.ObjectScope, Data.Bind.Components,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Grid;
type
  TfrmClientes = class(TForm)
    Conn: TADOConnection;
    spClientes: TADOStoredProc;
    dsClientes: TDataSource;
    DBGrid1: TDBGrid;
    cbxCampo: TComboBox;
    cbxCondicion: TComboBox;
    edtDato: TEdit;
    Button1: TButton;
    dbeId: TDBEdit;
    Label1: TLabel;
    dbeNombre: TDBEdit;
    dbeCorreo: TDBEdit;
    dbeTelefono: TDBEdit;
    dbeAlta: TDBEdit;
    dbeTipoCliente: TDBEdit;
    dbeDescSAC: TDBEdit;
    dbeDescSE: TDBEdit;
    Label2: TLabel;
    Correo: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    spTipoCliente: TADOStoredProc;
    dsTipoCliente: TDataSource;
    dblkTipoCliente: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox1: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbxCampoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmClientes: TfrmClientes;
implementation
{$R *.dfm}
procedure TfrmClientes.Button1Click(Sender: TObject);
begin
    case cbxCampo.ItemIndex of
        0:  begin
              case cbxCondicion.ItemIndex of
                  0:  begin //=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 0;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 0;
                          spClientes.Parameters.ParamByName('@pintDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
                  1:  begin //>=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 0;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 1;
                          spClientes.Parameters.ParamByName('@pintDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
                  2:  begin //<=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 0;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 2;
                          spClientes.Parameters.ParamByName('@pintDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
              end;
            end;
        1:  begin
              case cbxCondicion.ItemIndex of
                  0:  begin //=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 1;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 0;
                          spClientes.Parameters.ParamByName('@pstrDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
                  1:  begin //Contiene
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 1;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 1;
                          spClientes.Parameters.ParamByName('@pstrDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
              end;
            end;
        2:  begin
              case cbxCondicion.ItemIndex of
                  0:  begin //=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 2;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 0;
                          spClientes.Parameters.ParamByName('@pstrDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
                  1:  begin //Contiene
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 2;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 1;
                          spClientes.Parameters.ParamByName('@pstrDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
              end;
            end;
        3:  begin
              case cbxCondicion.ItemIndex of
                  0:  begin //=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 3;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 0;
                          spClientes.Parameters.ParamByName('@pintDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
              end;
            end;
        4:  begin
              case cbxCondicion.ItemIndex of
                  0:  begin //=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 4;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 0;
                          spClientes.Parameters.ParamByName('@pdteDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
                  1:  begin //>=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 4;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 1;
                          spClientes.Parameters.ParamByName('@pdteDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
                  2:  begin //<=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 4;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 2;
                          spClientes.Parameters.ParamByName('@pdteDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
              end;
            end;
        5:  begin
              case cbxCondicion.ItemIndex of
                  0:  begin //=
                          spClientes.Close;
                          spClientes.Parameters.ParamByName('@pintCampo').Value := 5;
                          spClientes.Parameters.ParamByName('@pintCondicion').Value := 0;
                          spClientes.Parameters.ParamByName('@pintDato').Value := edtDato.Text;
                          spClientes.Open;
                      end;
              end;
            end;
    end;
    // cbxCampo.ItemIndex = 1 then
end;
procedure TfrmClientes.cbxCampoChange(Sender: TObject);
begin
        case cbxCampo.ItemIndex of
        0:begin
              cbxCondicion.Clear;
              cbxCondicion.Items.Add('=');
              cbxCondicion.Items.Add('>=');
              cbxCondicion.Items.Add('<=');
          end;
        1:begin
              cbxCondicion.Clear;
              cbxCondicion.Items.Add('=');
              cbxCondicion.Items.Add('CONTIENE');
          end;
        2:begin
              cbxCondicion.Clear;
              cbxCondicion.Items.Add('=');
              cbxCondicion.Items.Add('CONTIENE');
          end;
        3:begin
              cbxCondicion.Clear;
              cbxCondicion.Items.Add('=');
        end;
        4:begin
              cbxCondicion.Clear;
              cbxCondicion.Items.Add('=');
              cbxCondicion.Items.Add('>=');
              cbxCondicion.Items.Add('<=');
          end;
        5:begin
              cbxCondicion.Clear;
              cbxCondicion.Items.Add('=');
          end;
        end;
end;

procedure TfrmClientes.FormCreate(Sender: TObject);
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
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - ConsultaClientes');
      end;
    end;

    spClientes.Close;
    spClientes.Parameters.ParamByName('@pintCampo').Value := 99;
    spClientes.Parameters.ParamByName('@pintCondicion').Value := 99;
    spClientes.Open;
    spTipoCliente.Close;
    spTipoCliente.Open;
end;
end.
