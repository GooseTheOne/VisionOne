unit Gastos;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCalendars, Data.DB, Globales,
  Data.Win.ADODB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls;
type
  TfrmGastos = class(TForm)
    calFecha: TCalendarPicker;
    cbxTipoGasto: TDBLookupComboBox;
    cbxGastoRecurrente: TDBLookupComboBox;
    memDescripcion: TMemo;
    edSubtotal: TEdit;
    edIVA: TEdit;
    edTotal: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Conn: TADOConnection;
    dsTipoGasto: TDataSource;
    dscatGasto: TDataSource;
    qGastosInsert: TADOQuery;
    cbxIVA: TCheckBox;
    calConsultaInicio: TCalendarPicker;
    calConsultaFin: TCalendarPicker;
    Button4: TButton;
    Label7: TLabel;
    Label8: TLabel;
    spGetTipoGasto: TADOStoredProc;
    spGetGastoRecurrenteXTipo: TADOStoredProc;
    spGastoPeriodo: TADOStoredProc;
    dsGastoPeriodo: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    spGastosPeriodoDet: TADOStoredProc;
    dsGastosPeriodoDet: TDataSource;
    cbxSucursal: TDBLookupComboBox;
    Label12: TLabel;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    spInsertMovimiento: TADOStoredProc;
    spDeleteGasto: TADOStoredProc;
    Label13: TLabel;
    spDeleteMovimientoRef: TADOStoredProc;
    procedure cbxTipoGastoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbxIVAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure memDescripcionExit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure edSubtotalEnter(Sender: TObject);
    procedure edSubtotalExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edSubtotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmGastos: TfrmGastos;
implementation
{$R *.dfm}
procedure TfrmGastos.Button1Click(Sender: TObject);
begin
  qGastosInsert.Close;
  qGastosInsert.SQL.Clear;
  qGastosInsert.SQL.Add('INSERT INTO Gasto (idTipoGasto,idGastoRecurrente,lgGastoRecurrente,dcmImporte, dcmIva, dcmTotal, strGasto,dteGasto,idEstatusContable,idSucursal)');
  qGastosInsert.SQL.Add('VALUES(:pidTipoGasto,:pidGastoRecurrente,1,:pdcmImporte,:pdcmIva,:pdcmTotal,:pstrGasto,:pdteGasto,0,:pidsucursal)');
  qGastosInsert.Parameters.ParamByName('pidTipoGasto').Value:=cbxTipoGasto.KeyValue;
  qGastosInsert.Parameters.ParamByName('pidGastoRecurrente').Value:=cbxGastoRecurrente.KeyValue;
  qGastosInsert.Parameters.ParamByName('pdcmImporte').Value:=StringReplace(edSubtotal.Text,',','',[rfReplaceAll]);
  qGastosInsert.Parameters.ParamByName('pdcmIVA').Value:=StringReplace(edIVA.Text,',','',[rfReplaceAll]);
  qGastosInsert.Parameters.ParamByName('pdcmTotal').Value:=StringReplace(edTotal.Text,',','',[rfReplaceAll]);
  qGastosInsert.Parameters.ParamByName('pstrGasto').Value:=memDescripcion.Text;
  qGastosInsert.Parameters.ParamByName('pdteGasto').Value:= FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
  qGastosInsert.Parameters.ParamByName('pidSucursal').Value:=cbxSucursal.KeyValue;;


  if cbxSucursal.KeyValue = Null then
    MessageDlg('SELECCIONE LA SUCURSAL!',mtError,[mbOK],0)
  else
      if cbxGastoRecurrente.KeyValue = Null then
        MessageDlg('SELECCIONE EL GASTO ESPECÍFICO!',mtError,[mbOK],0)
      else
          if memDescripcion.Text = '' then
            MessageDlg('ESPECIFIQUE UNA DESCRIPCIÓN!',mtError,[mbOK],0)
          else
            if strtofloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll])) = 0 then
              MessageDlg('EL GASTO NO PUEDE ESTAR VACIO!',mtError,[mbOK],0)
            else begin
              qGastosInsert.ExecSQL;
              spGastoPeriodo.Close;
              spGastoPeriodo.Parameters.ParamByName('@pdteIni').Value:= FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
              spGastoPeriodo.Parameters.ParamByName('@pdteFin').Value:= FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
              spGastoPeriodo.Open;
              spGastosPeriodoDet.Close;
              spGastosPeriodoDet.Parameters.ParamByName('@pdteIni').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
              spGastosPeriodoDet.Parameters.ParamByName('@pdteFin').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
              spGastosPeriodoDet.Open;

              if (cbxTipoGasto.KeyValue = 7) and (cbxGastoRecurrente.KeyValue = 17) then begin
                  //MessageDlg('vas a registrar bancos',mtInformation,[mbOK],0);
//                  spInsertMovimientoCuenta.Close;
//                  spInsertMovimientoCuenta.Parameters.ParamByName('@pstrCuenta').Value := '001';
//                  spInsertMovimientoCuenta.Parameters.ParamByName('@pstrSubCuenta').Value := '001';
//                  spInsertMovimientoCuenta.Parameters.ParamByName('@pintTipoMovimiento').Value := 1;
//                  spInsertMovimientoCuenta.Parameters.ParamByName('@pdcmMonto').Value := edTotal.Text;
//                  spInsertMovimientoCuenta.Open;

                  spInsertMovimiento.Close;
                  spInsertMovimiento.Parameters.ParamByName('@pidCuenta').Value := 3;
                  spInsertMovimiento.Parameters.ParamByName('@pdteMovimiento').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());
                  spInsertMovimiento.Parameters.ParamByName('@pstrDescripcion').Value := 'BATCH-REGISTRO TEMPORAL DE GASTO NEGATIVO (INGRESO)';
                  spInsertMovimiento.Parameters.ParamByName('@pdcmImporteCargo').Value := strtofloat(StringReplace(edTotal.Text,',','',[rfReplaceAll])) * -1;
                  spInsertMovimiento.Parameters.ParamByName('@pdcmImporteAbono').Value := '0';
                  spInsertMovimiento.Parameters.ParamByName('@pintTipoMovimiento').Value := 1;
                  spInsertMovimiento.Parameters.ParamByName('@pintReferencia').Value := DBGrid1.DataSource.DataSet.FieldByName('ID').Value;
                  spInsertMovimiento.Open;

                  spInsertMovimiento.Close;
                  spInsertMovimiento.Parameters.ParamByName('@pidCuenta').Value := 2;
                  spInsertMovimiento.Parameters.ParamByName('@pdteMovimiento').Value := FormatDateTime('yyyy/mm/dd hh:nn:ss',now());
                  spInsertMovimiento.Parameters.ParamByName('@pstrDescripcion').Value := 'BATCH-DEPOSITO A BANCOS DE CAJA';
                  spInsertMovimiento.Parameters.ParamByName('@pdcmImporteCargo').Value := strtofloat(StringReplace(edTotal.Text,',','',[rfReplaceAll]));
                  spInsertMovimiento.Parameters.ParamByName('@pdcmImporteAbono').Value := '0';
                  spInsertMovimiento.Parameters.ParamByName('@pintTipoMovimiento').Value := 2;
                  spInsertMovimiento.Parameters.ParamByName('@pintReferencia').Value := DBGrid1.DataSource.DataSet.FieldByName('ID').Value;
                  spInsertMovimiento.Open;


              end;
              edSubtotal.Text:='0';
              edIVA.Text:='0';
              edTotal.Text:='0';
              memDescripcion.Text:='';
              cbxTipoGasto.Repaint;
            end;
end;

procedure TfrmGastos.Button4Click(Sender: TObject);
begin
  spGastoPeriodo.Close;
  spGastoPeriodo.Parameters.ParamByName('@pdteIni').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calConsultaInicio.Date);
  spGastoPeriodo.Parameters.ParamByName('@pdteFin').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calConsultaFin.Date);
  spGastoPeriodo.Parameters.ParamByName('@pintSucursal').Value:=cbxSucursal.KeyValue;
  spGastoPeriodo.Open;
  spGastosPeriodoDet.Close;
  spGastosPeriodoDet.Parameters.ParamByName('@pdteIni').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calConsultaInicio.Date);
  spGastosPeriodoDet.Parameters.ParamByName('@pdteFin').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calConsultaFin.Date);
  spGastosPeriodoDet.Parameters.ParamByName('@pintSucursal').Value:=cbxSucursal.KeyValue;
  spGastosPeriodoDet.Open;
end;
procedure TfrmGastos.cbxIVAClick(Sender: TObject);
begin
   if cbxIva.Checked then begin
      edIVA.Text:=FloatToStr(strtofloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll]))*0.16);
      edTotal.Text:=FloatToStr(strtofloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll]))+strtofloat(StringReplace(edIVA.Text,',','',[rfReplaceAll])));
   end
   else begin
      edTotal.Text:=FloatToStr(strtofloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll])));
      edIva.Text:='0';
   end;
end;
procedure TfrmGastos.cbxTipoGastoClick(Sender: TObject);
begin
    spGetGastoRecurrenteXTipo.Close;
    spGetGastoRecurrenteXTipo.Parameters.ParamByName('@pintTipoGasto').Value:=cbxTipoGasto.KeyValue;
    spGetGastoRecurrenteXTipo.Open;
end;
procedure TfrmGastos.DBGrid1DblClick(Sender: TObject);
begin

    spDeleteGasto.Close;
    spDeleteGasto.Parameters.ParamByName('@pID').Value := DBGrid1.DataSource.DataSet.FieldByName('ID').Value;
    spDeleteGasto.Open;


    if (DBGrid1.DataSource.DataSet.FieldByName('idTipoGasto').Value = 7) and (DBGrid1.DataSource.DataSet.FieldByName('idGastoRecurrente').Value = 17) then begin
        spDeleteMovimientoRef.Close;
        spDeleteMovimientoRef.Parameters.ParamByName('@pintReferencia').Value := DBGrid1.DataSource.DataSet.FieldByName('ID').Value;
        spDeleteMovimientoRef.Open;
    end;

    spGastoPeriodo.Close;
    spGastoPeriodo.Open;

    spGastosPeriodoDet.Close;
    spGastosPeriodoDet.Open;

end;

procedure TfrmGastos.edSubtotalEnter(Sender: TObject);
begin
  edSubtotal.Text := '';
end;
procedure TfrmGastos.edSubtotalExit(Sender: TObject);
begin


  if edSubtotal.Text = '' then
    edSubtotal.Text := '0.00'
  else

    edSubtotal.Text := FormatCurr('##,##0.00',strtofloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll])));

  if cbxIva.Checked then begin
      edIVA.Text:=FloatToStr(StrToFloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll]))*0.16);
      edTotal.Text:=FloatToStr(StrToFloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll]))+StrToFloat(StringReplace(edIVA.Text,',','',[rfReplaceAll])));
   end
   else
      edTotal.Text:=edSubtotal.Text;
end;
procedure TfrmGastos.edSubtotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = 13 then begin
      memDescripcion.SetFocus;

      if edSubtotal.Text = '' then
        edSubtotal.Text := '0.00'
      else
      //StringReplace(,',','',[rfReplaceAll]),'$','',[rfReplaceAll]
        edSubtotal.Text := FormatCurr('##,##0.00',strtofloat(StringReplace(StringReplace(edSubtotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])));

     if cbxIva.Checked then begin
      edIVA.Text:=FloatToStr(StrToFloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll]))*0.16);
      edTotal.Text:=FloatToStr(StrToFloat(StringReplace(edSubtotal.Text,',','',[rfReplaceAll]))+StrToFloat(StringReplace(edIVA.Text,',','',[rfReplaceAll])));
   end
   else
      edTotal.Text:=edSubtotal.Text;

    end;
end;

procedure TfrmGastos.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Gastos');
    end;
  end;

  calFecha.Date:=now;
  calConsultaInicio.Date:=now;
  calConsultaFin.Date:=now;
  cbxSucursal.KeyValue := vgintSucursal;


  spGastoPeriodo.Close;
  spGastoPeriodo.Parameters.ParamByName('@pdteIni').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
  spGastoPeriodo.Parameters.ParamByName('@pdteFin').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
  spGastoPeriodo.Parameters.ParamByName('@pintSucursal').Value:=cbxSucursal.KeyValue;
  spGastoPeriodo.Open;
  spGastosPeriodoDet.Close;
  spGastosPeriodoDet.Parameters.ParamByName('@pdteIni').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
  spGastosPeriodoDet.Parameters.ParamByName('@pdteFin').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',calFecha.Date);
  spGastosPeriodoDet.Parameters.ParamByName('@pintSucursal').Value:=cbxSucursal.KeyValue;
  spGastosPeriodoDet.Open;

  spGetTipoGasto.Close;
  spGetTipoGasto.Open;
  spGetGastoRecurrenteXTipo.Close;
  spGetGastoRecurrenteXTipo.Open;
  spGetSucursales.Close;
  spGetSucursales.Open;

  end;
procedure TfrmGastos.memDescripcionExit(Sender: TObject);
begin
  memDescripcion.Text:=UpperCase(memDescripcion.Text);
end;
end.
