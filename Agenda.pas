unit Agenda;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB, Globales,
  Vcl.Grids, Vcl.DBGrids;
type
  TfrmAgenda = class(TForm)
    edLunes1: TEdit;
    edMartes1: TEdit;
    edMiercoles1: TEdit;
    edJueves1: TEdit;
    edViernes1: TEdit;
    edSabado1: TEdit;
    lblLunes1: TLabel;
    lblMiercoles1: TLabel;
    lblMartes1: TLabel;
    lblJueves1: TLabel;
    lblViernes1: TLabel;
    lblSabado1: TLabel;
    Conn: TADOConnection;
    qAgenda: TADOQuery;
    lbxLunes1: TListBox;
    lbxMartes1: TListBox;
    lbxMiercoles1: TListBox;
    lbxJueves1: TListBox;
    lbxViernes1: TListBox;
    lbxSabado1: TListBox;
    btSemanaAntes: TButton;
    btSemanaSiguiente: TButton;
    spOrdenesPorDia: TADOStoredProc;
    dsOrdenesPorDia: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure btSemanaAntesClick(Sender: TObject);
    procedure btSemanaSiguienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmAgenda: TfrmAgenda;
  delta: Integer;
implementation
{$R *.dfm}

procedure TfrmAgenda.btSemanaAntesClick(Sender: TObject);
var
    hoy:Integer;
    i:Integer;
    dia:Integer;
    ordenes:Integer;
    dif:Integer;
    fecha:TDateTime;
begin
    dif:=0;
    lbxLunes1.Clear;
    lbxMartes1.Clear;
    lbxMiercoles1.Clear;
    lbxJueves1.Clear;
    lbxViernes1.Clear;
    lbxSabado1.Clear;
    hoy:=dayofweek(now);
    //hoy:=hoy+7;
    delta := delta - 7 ;

    case hoy of
      1:begin
          edLunes1.Text:=DateToStr(now+1+delta);
          edMartes1.Text:=DateToStr(now+2+delta);
          edMiercoles1.Text:=DateToStr(now+3+delta);
          edJueves1.Text:=DateToStr(now+4+delta);
          edViernes1.Text:=DateToStr(now+5+delta);
          edSabado1.Text:=DateToStr(now+6+delta);
          dif:=1;
        end;
      2:begin
          edLunes1.Text:=DateToStr(now+delta);
          edMartes1.Text:=DateToStr(now+1+delta);
          edMiercoles1.Text:=DateToStr(now+2+delta);
          edJueves1.Text:=DateToStr(now+3+delta);
          edViernes1.Text:=DateToStr(now+4+delta);
          edSabado1.Text:=DateToStr(now+5+delta);
          lblLunes1.Font.Color:=clRed;
          lblLunes1.Font.Style:=[fsBold,fsItalic];
          lblLunes1.Width:=99;
          dif:=0;
      end;
      3:begin
          edLunes1.Text:=DateToStr(now-1+delta);
          edMartes1.Text:=DateToStr(now+delta);
          edMiercoles1.Text:=DateToStr(now+1+delta);
          edJueves1.Text:=DateToStr(now+2+delta);
          edViernes1.Text:=DateToStr(now+3+delta);
          edSabado1.Text:=DateToStr(now+4+delta);
          lblMartes1.Font.Color:=clRed;
          lblMartes1.Font.Style:=[fsBold,fsItalic];
          lblMartes1.Width:=99;
          dif:=-1;
      end;
      4:begin
          edLunes1.Text:=DateToStr(now-2+delta);
          edMartes1.Text:=DateToStr(now-1+delta);
          edMiercoles1.Text:=DateToStr(now+delta);
          edJueves1.Text:=DateToStr(now+1+delta);
          edViernes1.Text:=DateToStr(now+2+delta);
          edSabado1.Text:=DateToStr(now+3+delta);
          lblMiercoles1.Font.Color:=clRed;
          lblMiercoles1.Font.Style:=[fsBold,fsItalic];
          lblMiercoles1.Width:=99;
          dif:=-2;
      end;
      5:begin
          edLunes1.Text:=DateToStr(now-3+delta);
          edMartes1.Text:=DateToStr(now-2+delta);
          edMiercoles1.Text:=DateToStr(now-1+delta);
          edJueves1.Text:=DateToStr(now+delta);
          edViernes1.Text:=DateToStr(now+1+delta);
          edSabado1.Text:=DateToStr(now+2+delta);
          lblJueves1.Font.Color:=clRed;
          lblJueves1.Font.Style:=[fsBold,fsItalic];
          lblJueves1.Width:=99;
          dif:=-3;
      end;
      6:begin
          edLunes1.Text:=DateToStr(now-4+delta);
          edMartes1.Text:=DateToStr(now-3+delta);
          edMiercoles1.Text:=DateToStr(now-2+delta);
          edJueves1.Text:=DateToStr(now-1+delta);
          edViernes1.Text:=DateToStr(now+delta);
          edSabado1.Text:=DateToStr(now+1+delta);
          lblViernes1.Font.Color:=clRed;
          lblViernes1.Font.Style:=[fsBold,fsItalic];
          lblViernes1.Width:=99;
          dif:=-4;
      end;
      7:begin
          edLunes1.Text:=DateToStr(now-5+delta);
          edMartes1.Text:=DateToStr(now-4+delta);
          edMiercoles1.Text:=DateToStr(now-3+delta);
          edJueves1.Text:=DateToStr(now-2+delta);
          edViernes1.Text:=DateToStr(now-1+delta);
          edSabado1.Text:=DateToStr(now+delta);
          lblSabado1.Font.Color:=clRed;
          lblSabado1.Font.Style:=[fsBold,fsItalic];
          lblSabado1.Width:=99;
          dif:=-5;
      end;
    end;

    for i := 1 to 20 do begin
      //ShowMessage(datetostr(now+dif));
      qAgenda.Close;
      qAgenda.SQL.Clear;
      qAgenda.SQL.Add('Select idOrden, strNombre, dcmTotal, dcmPorPagar from Orden');
      qAgenda.SQL.Add('inner join Cliente on Cliente.idCliente = Orden.idCliente');
      qAgenda.SQL.Add('where dteEntrega>=:pFechaEntregaIni and dteEntrega<:pFechaEntregaFin order by dteEntrega');
      qAgenda.Parameters.ParamByName('pFechaEntregaIni').Value:=FormatDateTime('yyyy/mm/dd',now+dif+delta);
      qAgenda.Parameters.ParamByName('pFechaEntregaFin').Value:=FormatDateTime('yyyy/mm/dd',now+dif+1+delta);
      qAgenda.Open;
      Ordenes:=0;
      for dia := 1 to qAgenda.RecordCount do begin
          case i of
              1: lbxLunes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - ADEUDO:'+qAgenda.FieldByName('dcmPorPagar').Text);
              2: lbxMartes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - ADEUDO:'+qAgenda.FieldByName('dcmPorPagar').Text);
              3: lbxMiercoles1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - ADEUDO:'+qAgenda.FieldByName('dcmPorPagar').Text);
              4: lbxJueves1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - ADEUDO:'+qAgenda.FieldByName('dcmPorPagar').Text);
              5: lbxViernes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - ADEUDO:'+qAgenda.FieldByName('dcmPorPagar').Text);
              6: lbxSabado1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - ADEUDO:'+qAgenda.FieldByName('dcmPorPagar').Text);
          end;
          qAgenda.Next;
          Ordenes:=Ordenes+1;
      end;
      case i of
          1:if Ordenes < 5 then lbxLunes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxLunes1.Color:=clYellow else if Ordenes >= 10 then lbxLunes1.Color:=clRed;
          2:if Ordenes < 5 then lbxMartes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxMartes1.Color:=clYellow else if Ordenes >= 10 then lbxMartes1.Color:=clRed;
          3:if Ordenes < 5 then lbxMiercoles1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxMiercoles1.Color:=clYellow else if Ordenes >= 10 then lbxMiercoles1.Color:=clRed;
          4:if Ordenes < 5 then lbxJueves1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxJueves1.Color:=clYellow else if Ordenes >= 10 then lbxJueves1.Color:=clRed;
          5:if Ordenes < 5 then lbxViernes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxViernes1.Color:=clYellow else if Ordenes >= 10 then lbxViernes1.Color:=clRed;
          6:if Ordenes < 5 then lbxSabado1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxSabado1.Color:=clYellow else if Ordenes >= 10 then lbxSabado1.Color:=clRed;
      end;
      dif:=dif+1;
    end;

end;
procedure TfrmAgenda.btSemanaSiguienteClick(Sender: TObject);
var
    hoy:Integer;
    i:Integer;
    dia:Integer;
    ordenes:Integer;
    dif:Integer;
    fecha:TDateTime;
begin
    dif:=0;
    lbxLunes1.Clear;
    lbxMartes1.Clear;
    lbxMiercoles1.Clear;
    lbxJueves1.Clear;
    lbxViernes1.Clear;
    lbxSabado1.Clear;
    hoy:=dayofweek(now);
    //hoy:=hoy-7;
     delta := delta + 7;

    case hoy of
      1:begin
          edLunes1.Text:=DateToStr(now+1+delta);
          edMartes1.Text:=DateToStr(now+2+delta);
          edMiercoles1.Text:=DateToStr(now+3+delta);
          edJueves1.Text:=DateToStr(now+4+delta);
          edViernes1.Text:=DateToStr(now+5+delta);
          edSabado1.Text:=DateToStr(now+6+delta);
          dif:=1;
        end;
      2:begin
          edLunes1.Text:=DateToStr(now+delta);
          edMartes1.Text:=DateToStr(now+1+delta);
          edMiercoles1.Text:=DateToStr(now+2+delta);
          edJueves1.Text:=DateToStr(now+3+delta);
          edViernes1.Text:=DateToStr(now+4+delta);
          edSabado1.Text:=DateToStr(now+5+delta);
          lblLunes1.Font.Color:=clRed;
          lblLunes1.Font.Style:=[fsBold,fsItalic];
          lblLunes1.Width:=99;
          dif:=0;
      end;
      3:begin
          edLunes1.Text:=DateToStr(now-1+delta);
          edMartes1.Text:=DateToStr(now+delta);
          edMiercoles1.Text:=DateToStr(now+1+delta);
          edJueves1.Text:=DateToStr(now+2+delta);
          edViernes1.Text:=DateToStr(now+3+delta);
          edSabado1.Text:=DateToStr(now+4+delta);
          lblMartes1.Font.Color:=clRed;
          lblMartes1.Font.Style:=[fsBold,fsItalic];
          lblMartes1.Width:=99;
          dif:=-1;
      end;
      4:begin
          edLunes1.Text:=DateToStr(now-2+delta);
          edMartes1.Text:=DateToStr(now-1+delta);
          edMiercoles1.Text:=DateToStr(now+delta);
          edJueves1.Text:=DateToStr(now+1+delta);
          edViernes1.Text:=DateToStr(now+2+delta);
          edSabado1.Text:=DateToStr(now+3+delta);
          lblMiercoles1.Font.Color:=clRed;
          lblMiercoles1.Font.Style:=[fsBold,fsItalic];
          lblMiercoles1.Width:=99;
          dif:=-2;
      end;
      5:begin
          edLunes1.Text:=DateToStr(now-3+delta);
          edMartes1.Text:=DateToStr(now-2+delta);
          edMiercoles1.Text:=DateToStr(now-1+delta);
          edJueves1.Text:=DateToStr(now+delta);
          edViernes1.Text:=DateToStr(now+1+delta);
          edSabado1.Text:=DateToStr(now+2+delta);
          lblJueves1.Font.Color:=clRed;
          lblJueves1.Font.Style:=[fsBold,fsItalic];
          lblJueves1.Width:=99;
          dif:=-3;
      end;
      6:begin
          edLunes1.Text:=DateToStr(now-4+delta);
          edMartes1.Text:=DateToStr(now-3+delta);
          edMiercoles1.Text:=DateToStr(now-2+delta);
          edJueves1.Text:=DateToStr(now-1+delta);
          edViernes1.Text:=DateToStr(now+delta);
          edSabado1.Text:=DateToStr(now+1+delta);
          lblViernes1.Font.Color:=clRed;
          lblViernes1.Font.Style:=[fsBold,fsItalic];
          lblViernes1.Width:=99;
          dif:=-4;
      end;
      7:begin
          edLunes1.Text:=DateToStr(now-5+delta);
          edMartes1.Text:=DateToStr(now-4+delta);
          edMiercoles1.Text:=DateToStr(now-3+delta);
          edJueves1.Text:=DateToStr(now-2+delta);
          edViernes1.Text:=DateToStr(now-1+delta);
          edSabado1.Text:=DateToStr(now+delta);
          lblSabado1.Font.Color:=clRed;
          lblSabado1.Font.Style:=[fsBold,fsItalic];
          lblSabado1.Width:=99;
          dif:=-5;
      end;
    end;

    for i := 1 to 20 do begin
      //ShowMessage(datetostr(now+dif));
      qAgenda.Close;
      qAgenda.SQL.Clear;
      qAgenda.SQL.Add('Select idOrden, strNombre, dcmTotal, dcmPorPagar from Orden');
      qAgenda.SQL.Add('inner join Cliente on Cliente.idCliente = Orden.idCliente');
      qAgenda.SQL.Add('where dteEntrega>=:pFechaEntregaIni and dteEntrega<:pFechaEntregaFin order by dteEntrega');
      qAgenda.Parameters.ParamByName('pFechaEntregaIni').Value:=FormatDateTime('yyyy/mm/dd',now+dif+delta);
      qAgenda.Parameters.ParamByName('pFechaEntregaFin').Value:=FormatDateTime('yyyy/mm/dd',now+dif+1+delta);
      qAgenda.Open;
      Ordenes:=0;
      for dia := 1 to qAgenda.RecordCount do begin
          case i of
              1: lbxLunes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              2: lbxMartes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              3: lbxMiercoles1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              4: lbxJueves1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              5: lbxViernes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              6: lbxSabado1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
          end;
          qAgenda.Next;
          Ordenes:=Ordenes+1;
      end;
      case i of
          1:if Ordenes < 5 then lbxLunes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxLunes1.Color:=clYellow else if Ordenes >= 10 then lbxLunes1.Color:=clRed;
          2:if Ordenes < 5 then lbxMartes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxMartes1.Color:=clYellow else if Ordenes >= 10 then lbxMartes1.Color:=clRed;
          3:if Ordenes < 5 then lbxMiercoles1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxMiercoles1.Color:=clYellow else if Ordenes >= 10 then lbxMiercoles1.Color:=clRed;
          4:if Ordenes < 5 then lbxJueves1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxJueves1.Color:=clYellow else if Ordenes >= 10 then lbxJueves1.Color:=clRed;
          5:if Ordenes < 5 then lbxViernes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxViernes1.Color:=clYellow else if Ordenes >= 10 then lbxViernes1.Color:=clRed;
          6:if Ordenes < 5 then lbxSabado1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxSabado1.Color:=clYellow else if Ordenes >= 10 then lbxSabado1.Color:=clRed;
      end;
      dif:=dif+1;
    end;

end;
procedure TfrmAgenda.FormActivate(Sender: TObject);
var
    hoy:Integer;
    i:Integer;
    dia:Integer;
    ordenes:Integer;
    dif:Integer;
    fecha:TDateTime;
begin
    dif:=0;
    lbxLunes1.Clear;
    lbxMartes1.Clear;
    lbxMiercoles1.Clear;
    lbxJueves1.Clear;
    lbxViernes1.Clear;
    lbxSabado1.Clear;
    hoy:=dayofweek(now);
    delta := 0;
    //hoy:=4;
    case hoy of
      1:begin
          edLunes1.Text:=DateToStr(now+1);
          edMartes1.Text:=DateToStr(now+2);
          edMiercoles1.Text:=DateToStr(now+3);
          edJueves1.Text:=DateToStr(now+4);
          edViernes1.Text:=DateToStr(now+5);
          edSabado1.Text:=DateToStr(now+6);
          dif:=1;
        end;
      2:begin
          edLunes1.Text:=DateToStr(now);
          edMartes1.Text:=DateToStr(now+1);
          edMiercoles1.Text:=DateToStr(now+2);
          edJueves1.Text:=DateToStr(now+3);
          edViernes1.Text:=DateToStr(now+4);
          edSabado1.Text:=DateToStr(now+5);
          lblLunes1.Font.Color:=clRed;
          lblLunes1.Font.Style:=[fsBold,fsItalic];
          lblLunes1.Width:=99;
          dif:=0;
      end;
      3:begin
          edLunes1.Text:=DateToStr(now-1);
          edMartes1.Text:=DateToStr(now);
          edMiercoles1.Text:=DateToStr(now+1);
          edJueves1.Text:=DateToStr(now+2);
          edViernes1.Text:=DateToStr(now+3);
          edSabado1.Text:=DateToStr(now+4);
          lblMartes1.Font.Color:=clRed;
          lblMartes1.Font.Style:=[fsBold,fsItalic];
          lblMartes1.Width:=99;
          dif:=-1;
      end;
      4:begin
          edLunes1.Text:=DateToStr(now-2);
          edMartes1.Text:=DateToStr(now-1);
          edMiercoles1.Text:=DateToStr(now);
          edJueves1.Text:=DateToStr(now+1);
          edViernes1.Text:=DateToStr(now+2);
          edSabado1.Text:=DateToStr(now+3);
          lblMiercoles1.Font.Color:=clRed;
          lblMiercoles1.Font.Style:=[fsBold,fsItalic];
          lblMiercoles1.Width:=99;
          dif:=-2;
      end;
      5:begin
          edLunes1.Text:=DateToStr(now-3);
          edMartes1.Text:=DateToStr(now-2);
          edMiercoles1.Text:=DateToStr(now-1);
          edJueves1.Text:=DateToStr(now);
          edViernes1.Text:=DateToStr(now+1);
          edSabado1.Text:=DateToStr(now+2);
          lblJueves1.Font.Color:=clRed;
          lblJueves1.Font.Style:=[fsBold,fsItalic];
          lblJueves1.Width:=99;
          dif:=-3;
      end;
      6:begin
          edLunes1.Text:=DateToStr(now-4);
          edMartes1.Text:=DateToStr(now-3);
          edMiercoles1.Text:=DateToStr(now-2);
          edJueves1.Text:=DateToStr(now-1);
          edViernes1.Text:=DateToStr(now);
          edSabado1.Text:=DateToStr(now+1);
          lblViernes1.Font.Color:=clRed;
          lblViernes1.Font.Style:=[fsBold,fsItalic];
          lblViernes1.Width:=99;
          dif:=-4;
      end;
      7:begin
          edLunes1.Text:=DateToStr(now-5);
          edMartes1.Text:=DateToStr(now-4);
          edMiercoles1.Text:=DateToStr(now-3);
          edJueves1.Text:=DateToStr(now-2);
          edViernes1.Text:=DateToStr(now-1);
          edSabado1.Text:=DateToStr(now);
          lblSabado1.Font.Color:=clRed;
          lblSabado1.Font.Style:=[fsBold,fsItalic];
          lblSabado1.Width:=99;
          dif:=-5;
      end;
    end;

    for i := 1 to 20 do begin
      //ShowMessage(datetostr(now+dif));
      qAgenda.Close;
      qAgenda.SQL.Clear;
      qAgenda.SQL.Add('Select idOrden, strNombre, dcmTotal, dcmPorPagar from Orden');
      qAgenda.SQL.Add('inner join Cliente on Cliente.idCliente = Orden.idCliente');
      qAgenda.SQL.Add('where dteEntrega>=:pFechaEntregaIni and dteEntrega<:pFechaEntregaFin order by dteEntrega');
      qAgenda.Parameters.ParamByName('pFechaEntregaIni').Value:=FormatDateTime('yyyy/mm/dd',now+dif);
      qAgenda.Parameters.ParamByName('pFechaEntregaFin').Value:=FormatDateTime('yyyy/mm/dd',now+dif+1);
      qAgenda.Open;
      Ordenes:=0;
      for dia := 1 to qAgenda.RecordCount do begin
          case i of
              1: lbxLunes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              2: lbxMartes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              3: lbxMiercoles1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              4: lbxJueves1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              5: lbxViernes1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
              6: lbxSabado1.Items.Append(qAgenda.FieldByName('idOrden').Text+' - '+ qAgenda.FieldByName('strNombre').Text+'    TOTAL:'+qAgenda.FieldByName('dcmTotal').Text+' - DEBE:'+qAgenda.FieldByName('dcmPorPagar').Text);
          end;
          qAgenda.Next;
          Ordenes:=Ordenes+1;
      end;
      case i of
          1:if Ordenes < 5 then lbxLunes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxLunes1.Color:=clYellow else if Ordenes >= 10 then lbxLunes1.Color:=clRed;
          2:if Ordenes < 5 then lbxMartes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxMartes1.Color:=clYellow else if Ordenes >= 10 then lbxMartes1.Color:=clRed;
          3:if Ordenes < 5 then lbxMiercoles1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxMiercoles1.Color:=clYellow else if Ordenes >= 10 then lbxMiercoles1.Color:=clRed;
          4:if Ordenes < 5 then lbxJueves1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxJueves1.Color:=clYellow else if Ordenes >= 10 then lbxJueves1.Color:=clRed;
          5:if Ordenes < 5 then lbxViernes1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxViernes1.Color:=clYellow else if Ordenes >= 10 then lbxViernes1.Color:=clRed;
          6:if Ordenes < 5 then lbxSabado1.Color:=clWhite else if (Ordenes >= 5) and (Ordenes < 10) then lbxSabado1.Color:=clYellow else if Ordenes >= 10 then lbxSabado1.Color:=clRed;
      end;
      dif:=dif+1;
    end;
end;
procedure TfrmAgenda.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Agenda');
    end;
  end;
  spOrdenesPorDia.Close;
  spOrdenesPorDia.Parameters.ParamByName('@pdteFecha').Value := '2021/11/12';
  spOrdenesPorDia.Open;
  DBGrid1.Canvas.Brush.Color := clgreen ;
end;
end.
