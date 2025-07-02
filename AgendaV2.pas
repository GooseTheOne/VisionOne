unit AgendaV2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB,Globales,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, DateUtils,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmNeoAgenda = class(TForm)
    Conn: TADOConnection;
    spOrdenPorDia1: TADOStoredProc;
    dsOrdenPorDia1: TDataSource;
    DBGrid1: TDBGrid;
    Button1: TButton;
    dtpDia: TDateTimePicker;
    Button2: TButton;
    lblLunes: TLabel;
    lblLunesDia: TLabel;
    lblMartes: TLabel;
    lblMartesDia: TLabel;
    lblMiercoles: TLabel;
    lblMiercolesDia: TLabel;
    lblJueves: TLabel;
    lblJuevesDia: TLabel;
    lblViernes: TLabel;
    lblViernesDia: TLabel;
    lblSábado: TLabel;
    lblSabadoDia: TLabel;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    spGetOrdenesPorDia2: TADOStoredProc;
    spGetOrdenesPorDia3: TADOStoredProc;
    spGetOrdenesPorDia4: TADOStoredProc;
    spGetOrdenesPorDia5: TADOStoredProc;
    spGetOrdenesPorDia6: TADOStoredProc;
    dsGetOrdenesPorDia2: TDataSource;
    dsGetOrdenesPorDia3: TDataSource;
    dsGetOrdenesPorDia4: TDataSource;
    dsGetOrdenesPorDia5: TDataSource;
    dsGetOrdenesPorDia6: TDataSource;
    ADOStoredProc1: TADOStoredProc;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Carrusel();
    procedure dsGetSucursalesDataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNeoAgenda: TfrmNeoAgenda;
  vlintSucursal: Integer;
  vldteFecha: TDate;
implementation

{$R *.dfm}

procedure TfrmNeoAgenda.Button1Click(Sender: TObject);
begin
    dtpDia.Date := dtpDia.Date -7;

    spOrdenPorDia1.close;
    spOrdenPorDia1.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',dtpDia.Date);
    spOrdenPorDia1.Open;

    Carrusel();

end;

procedure TfrmNeoAgenda.Button2Click(Sender: TObject);
begin
    dtpDia.Date := dtpDia.Date +7;

  spOrdenPorDia1.close;
  spOrdenPorDia1.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now);
  spOrdenPorDia1.Parameters.ParamByName('@pintSucursal').Value := vlintSucursal;
  spOrdenPorDia1.Open;

  spGetOrdenesPorDia2.close;
  spGetOrdenesPorDia2.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+1);
  spGetOrdenesPorDia2.Parameters.ParamByName('@pintSucursal').Value := vlintSucursal;
  spGetOrdenesPorDia2.Open;

  spGetOrdenesPorDia3.close;
  spGetOrdenesPorDia3.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+2);
  spGetOrdenesPorDia3.Parameters.ParamByName('@pintSucursal').Value := vlintSucursal;
  spGetOrdenesPorDia3.Open;

  spGetOrdenesPorDia4.close;
  spGetOrdenesPorDia4.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+3);
  spGetOrdenesPorDia4.Parameters.ParamByName('@pintSucursal').Value := vlintSucursal;
  spGetOrdenesPorDia4.Open;

  spGetOrdenesPorDia5.close;
  spGetOrdenesPorDia5.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+4);
  spGetOrdenesPorDia5.Parameters.ParamByName('@pintSucursal').Value := vlintSucursal;
  spGetOrdenesPorDia5.Open;

  spGetOrdenesPorDia6.close;
  spGetOrdenesPorDia6.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+5);
  spGetOrdenesPorDia6.Parameters.ParamByName('@pintSucursal').Value := vlintSucursal;
  spGetOrdenesPorDia6.Open;





    Carrusel();

end;

procedure TfrmNeoAgenda.Button3Click(Sender: TObject);
var
    vlintMes: Integer;
    vlintYear: Integer;
begin
    vldteFecha := dtpDia.Date;       //Hoy

    if MonthOfTheYear(vldteFecha) = 1 then begin
      vlintMes  := 12;
      vlintYear := YearOf(vldteFecha)-1;
    end
    else begin
      vlintMes  := MonthOfTheYear(vldteFecha)-1;
      vlintYear := YearOf(vldteFecha);
    end;


    ADOStoredProc1.Close;
    ADOStoredProc1.Parameters.ParamByName('@pintMes').Value := vlintMes;
    ADOStoredProc1.Parameters.ParamByName('@pintYear').Value := vlintYear;
    ADOStoredProc1.Parameters.ParamByName('@pintAlcance').Value := 1;
    ADOStoredProc1.Open;





end;

procedure TfrmNeoAgenda.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (spOrdenPorDia1.RecordCount >= 4) and (spOrdenPorDia1.RecordCount < 8) then begin
    DBGrid1.Canvas.brush.Color:=clYellow;
    DBGrid1.DefaultDrawColumnCell (Rect, DataCol, Column, State);
  end
  else if (spOrdenPorDia1.RecordCount >= 8) then begin
    DBGrid1.Canvas.brush.Color:=clRed;
    DBGrid1.DefaultDrawColumnCell (Rect, DataCol, Column, State);

  end;
end;

procedure TfrmNeoAgenda.dsGetSucursalesDataChange(Sender: TObject;
  Field: TField);
begin
    if DBLookupComboBox1.KeyValue <> null then begin
        vlintSucursal := DBLookupComboBox1.KeyValue;
        Button2.Click;
    end;
end;

procedure TfrmNeoAgenda.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - AgendaV2');
    end;
  end;







  spOrdenPorDia1.close;
  spOrdenPorDia1.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now);
  spOrdenPorDia1.Open;

  spGetOrdenesPorDia2.close;
  spGetOrdenesPorDia2.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+1);
  spGetOrdenesPorDia2.Open;

  spGetOrdenesPorDia3.close;
  spGetOrdenesPorDia3.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+1);
  spGetOrdenesPorDia3.Open;

  spGetOrdenesPorDia4.close;
  spGetOrdenesPorDia4.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+1);
  spGetOrdenesPorDia4.Open;

  spGetOrdenesPorDia5.close;
  spGetOrdenesPorDia5.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+1);
  spGetOrdenesPorDia5.Open;

  spGetOrdenesPorDia6.close;
  spGetOrdenesPorDia6.Parameters.ParamByName('@pdteFecha').Value := FormatDateTime('yyyy/mm/dd',now+1);
  spGetOrdenesPorDia6.Open;


  spGetSucursales.Open;
  dtpDia.Date := now;



  Carrusel();


end;


procedure TfrmNeoAgenda.Carrusel();
var
  diaSeleccionado: Integer;
begin
    diaSeleccionado:=dayofweek(dtpDia.Date);

    case diaSeleccionado of
      2:begin

          lblLunesDia.Font.Color := clRed;
          lblLunesDia.Caption := DateToStr(dtpDia.Date);

          lblMartesDia.Font.Color := clWindowText;
          lblMartesDia.Caption := DateToStr(dtpDia.Date+1);

          lblMiercolesDia.Font.Color := clWindowText;
          lblMiercolesDia.Caption := DateToStr(dtpDia.Date+2);

          lblJuevesDia.Font.Color := clWindowText;
          lblJuevesDia.Caption := DateToStr(dtpDia.Date+3);

          lblViernesDia.Font.Color := clWindowText;
          lblViernesDia.Caption := DateToStr(dtpDia.Date+4);

          lblSabadoDia.Font.Color := clWindowText;
          lblSabadoDia.Caption := DateToStr(dtpDia.Date+5);
        end;
      3:begin
          lblLunesDia.Font.Color := clWindowText;
          lblLunesDia.Caption := DateToStr(dtpDia.Date-1);

          lblMartesDia.Font.Color := clRed;
          lblMartesDia.Caption := DateToStr(dtpDia.Date);

          lblMiercolesDia.Font.Color := clWindowText;
          lblMiercolesDia.Caption := DateToStr(dtpDia.Date+1);

          lblJuevesDia.Font.Color := clWindowText;
          lblJuevesDia.Caption := DateToStr(dtpDia.Date+2);

          lblViernesDia.Font.Color := clWindowText;
          lblViernesDia.Caption := DateToStr(dtpDia.Date+3);

          lblSabadoDia.Font.Color := clWindowText;
          lblSabadoDia.Caption := DateToStr(dtpDia.Date+4);
        end;
      4:begin
          lblLunesDia.Font.Color := clWindowText;
          lblLunesDia.Caption := DateToStr(dtpDia.Date-2);

          lblMartesDia.Font.Color := clWindowText;
          lblMartesDia.Caption := DateToStr(dtpDia.Date-1);

          lblMiercolesDia.Font.Color := clRed;
          lblMiercolesDia.Caption := DateToStr(dtpDia.Date);

          lblJuevesDia.Font.Color := clWindowText;
          lblJuevesDia.Caption := DateToStr(dtpDia.Date+1);

          lblViernesDia.Font.Color := clWindowText;
          lblViernesDia.Caption := DateToStr(dtpDia.Date+2);

          lblSabadoDia.Font.Color := clWindowText;
          lblSabadoDia.Caption := DateToStr(dtpDia.Date+3);
        end;
      5:begin
          lblLunesDia.Font.Color := clWindowText;
          lblLunesDia.Caption := DateToStr(dtpDia.Date-3);

          lblMartesDia.Font.Color := clWindowText;
          lblMartesDia.Caption := DateToStr(dtpDia.Date-2);

          lblMiercolesDia.Font.Color := clWindowText;
          lblMiercolesDia.Caption := DateToStr(dtpDia.Date-1);

          lblJuevesDia.Font.Color := clRed;
          lblJuevesDia.Caption := DateToStr(dtpDia.Date);

          lblViernesDia.Font.Color := clWindowText;
          lblViernesDia.Caption := DateToStr(dtpDia.Date+1);

          lblSabadoDia.Font.Color := clWindowText;
          lblSabadoDia.Caption := DateToStr(dtpDia.Date+2);
        end;
      6:begin
          lblLunesDia.Font.Color := clWindowText;
          lblLunesDia.Caption := DateToStr(dtpDia.Date-4);

          lblMartesDia.Font.Color := clWindowText;
          lblMartesDia.Caption := DateToStr(dtpDia.Date-3);

          lblMiercolesDia.Font.Color := clWindowText;
          lblMiercolesDia.Caption := DateToStr(dtpDia.Date-2);

          lblJuevesDia.Font.Color := clWindowText;
          lblJuevesDia.Caption := DateToStr(dtpDia.Date-1);

          lblViernesDia.Font.Color := clRed;
          lblViernesDia.Caption := DateToStr(dtpDia.Date);

          lblSabadoDia.Font.Color := clWindowText;
          lblSabadoDia.Caption := DateToStr(dtpDia.Date+1);
        end;
      7:begin
          lblLunesDia.Font.Color := clWindowText;
          lblLunesDia.Caption := DateToStr(dtpDia.Date-5);

          lblMartesDia.Font.Color := clWindowText;
          lblMartesDia.Caption := DateToStr(dtpDia.Date-4);

          lblMiercolesDia.Font.Color := clWindowText;
          lblMiercolesDia.Caption := DateToStr(dtpDia.Date-3);

          lblJuevesDia.Font.Color := clWindowText;
          lblJuevesDia.Caption := DateToStr(dtpDia.Date-2);

          lblViernesDia.Font.Color := clWindowText;
          lblViernesDia.Caption := DateToStr(dtpDia.Date-1);

          lblSabadoDia.Font.Color := clRed;
          lblSabadoDia.Caption := DateToStr(dtpDia.Date);
        end;
    end;


end;

end.
