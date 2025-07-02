unit ConsultaOrdenes_v2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Data.Win.ADODB, Vcl.ComCtrls, Globales,
  VPE_VCL, Vcl.Mask;

type
  TfrmConsultaOrdenes = class(TForm)
    btnBuscar: TButton;
    edOrden: TEdit;
    Label1: TLabel;
    cnConsultaOrdenes: TADOConnection;
    qConsultaOrdenes: TADOQuery;
    qOrdenDetalle: TADOQuery;
    qPagos: TADOQuery;
    dsOrdenDetalle: TDataSource;
    dsPagos: TDataSource;
    comLiquidacion: TADOCommand;
    lbFolioAnt: TLabel;
    edFolioAnt: TEdit;
    qParametros: TADOQuery;
    btLimpiar: TButton;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    edEstatus: TEdit;
    Label5: TLabel;
    edFechaEntrega: TEdit;
    Label6: TLabel;
    edFechaRec: TEdit;
    edPorPagar: TEdit;
    edAcuenta: TEdit;
    edTotal: TEdit;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btCancelar: TButton;
    btEntregar: TButton;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    edNombre: TEdit;
    Label3: TLabel;
    edTelefono: TEdit;
    Label4: TLabel;
    edCorreo: TEdit;
    btLiquidacion: TButton;
    btPago: TButton;
    edPago: TEdit;
    dtpPago: TDateTimePicker;
    Label11: TLabel;
    spOrdenXId: TADOStoredProc;
    dsOrdenXId: TDataSource;
    procedure btnBuscarClick(Sender: TObject);
    procedure btLiquidacionClick(Sender: TObject);
    procedure btPagoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btEntregarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaOrdenes: TfrmConsultaOrdenes;
  delta:Integer;

implementation

{$R *.dfm}

procedure TfrmConsultaOrdenes.btnBuscarClick(Sender: TObject);
begin

  spOrdenXId.Close;
  spOrdenXId.Parameters.ParamByName('@pintId').Value := edOrden.Text;
  spOrdenXId.Open;


  qConsultaOrdenes.Close;
  qConsultaOrdenes.SQL.Clear;
  qConsultaOrdenes.SQL.Add('Select Cliente.strNombre as Nombre, Cliente.strTelefono as Telefono, cliente.strCorreo as Correo, Orden.idOrden, Orden.idEstatus, Orden.intFolioAnt as Folio,');
  qConsultaOrdenes.SQL.Add('Orden.dteRecepcion as Recepcion, Orden.dteEntrega as Entrega, Orden.dcmTotal as Total, Orden.dcmAcuenta as Acuenta, Orden.dcmPorPagar as porPagar from Orden');
  qConsultaOrdenes.SQL.Add('inner join Cliente on Cliente.idCliente = Orden.idCliente');

  if vgIFolioAnterior = 1 then
    qConsultaOrdenes.SQL.Add('where Orden.idOrden = :pOrden or Orden.intFolioAnt = :pFolioAnt')
  else
    qConsultaOrdenes.SQL.Add('where Orden.idOrden = :pOrden');

  if edOrden.Text = '' then
    qConsultaOrdenes.Parameters.ParamByName('pOrden').Value := '0'
  else
    qConsultaOrdenes.Parameters.ParamByName('pOrden').Value := edOrden.Text;

  if vgIFolioAnterior = 1 then
   if edFolioAnt.Text = '' then
      qConsultaOrdenes.Parameters.ParamByName('pFolioAnt').Value := '0'
    else
      qConsultaOrdenes.Parameters.ParamByName('pFolioAnt').Value := edFolioAnt.Text;

  qConsultaOrdenes.Open;


  if qConsultaOrdenes.RecordCount = 1 then begin
    edNombre.Text:=qConsultaOrdenes.FieldByName('Nombre').Text;
    edTelefono.Text:=qConsultaOrdenes.FieldByName('Telefono').Text;
    edCorreo.Text:=qConsultaOrdenes.FieldByName('Correo').Text;
    edFechaRec.Text:=qConsultaOrdenes.FieldByName('Recepcion').Text;
    edFechaEntrega.Text:=qConsultaOrdenes.FieldByName('Entrega').Text;
    edTotal.Text:=qConsultaOrdenes.FieldByName('Total').Text;
    edAcuenta.Text:=qConsultaOrdenes.FieldByName('Acuenta').Text;
    edPorPagar.Text:=qConsultaOrdenes.FieldByName('porPagar').Text;
    edOrden.Text:=qConsultaOrdenes.FieldByName('idOrden').Text;
    edFolioAnt.Text:=qConsultaOrdenes.FieldByName('Folio').Text;

    if qConsultaOrdenes.FieldByName('idEstatus').Text = '0' then
        edEstatus.Text := 'INCOMPLETA'
    else if qConsultaOrdenes.FieldByName('idEstatus').Text = '1' then
            edEstatus.Text := 'PENDIENTE'
    else if qConsultaOrdenes.FieldByName('idEstatus').Text = '2' then
            edEstatus.Text := 'PAGADO'
    else if qConsultaOrdenes.FieldByName('idEstatus').Text = '3' then
            edEstatus.Text := 'ENTREGADO'
    else if qConsultaOrdenes.FieldByName('idEstatus').Text = '4' then
            edEstatus.Text := 'CANCELADA';

    if StrToFloat(edPorPagar.Text)>0 then
    begin
        btPago.Enabled:=true;
        btLiquidacion.Enabled:=true;
        edPago.Enabled:=true;
    end
    else
    begin
        btPago.Enabled:=false;
        btLiquidacion.Enabled:=false;
        edPago.Enabled:=false;
    end;


    if qConsultaOrdenes.FieldByName('idEstatus').Text = '0' then     //inconclusa
    begin
        btEntregar.Enabled := false;
        btCancelar.Enabled := true;
    end else if qConsultaOrdenes.FieldByName('idEstatus').Text = '1' then       //abierta o pendiente
    begin
        btEntregar.Enabled := false;
        btCancelar.Enabled := true;
    end else if qConsultaOrdenes.FieldByName('idEstatus').Text = '2' then       //pagada
    begin
        btEntregar.Enabled := true;
        btCancelar.Enabled := true;
    end else if qConsultaOrdenes.FieldByName('idEstatus').Text = '3' then       //entregada
    begin
        btEntregar.Enabled := false;
        btCancelar.Enabled := false;
    end else if qConsultaOrdenes.FieldByName('idEstatus').Text = '4' then       //cancelada
    begin
        btEntregar.Enabled := false;
        btCancelar.Enabled := false;
    end;



    qOrdenDetalle.Close;
    delta := StrToInt(edOrden.Text);
    qOrdenDetalle.Parameters.ParamByName('pOrden').Value:=edOrden.Text;

    qOrdenDetalle.Open;

    qPagos.Close;
    //qPagos.SQL.Clear;
    qPagos.Parameters.ParamByName('pOrden').Value:=edOrden.Text;
    qPagos.Open;
  end
  else begin
    ShowMessage('- Orden NO encontrada -');
    qConsultaOrdenes.Close;
    qOrdenDetalle.Close;
    qPagos.Close;
    edNombre.Text := '';
    edTelefono.Text := '';
    edCorreo.Text := '';
    edFechaRec.Text := '';
    edFechaEntrega.Text := '';
    edAcuenta.Text := '';
    edPorPagar.Text := '';
    edTotal.Text := '';
    edPago.Text := '';
    edOrden.Text := '';


  end;
end;


procedure TfrmConsultaOrdenes.btPagoClick(Sender: TObject);
begin

  if StrToFloat(edPorPagar.Text) - StrToFloat(edPago.Text) = 0 then
  begin
      if vgIFolioAnterior = 0 then
          comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago]) VALUES ('+edOrden.Text+','+edPago.Text+','''+FormatDateTime('yyyy/mm/dd',Now())+''',0,2)'
      else
          comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago]) VALUES ('+edOrden.Text+','+edPago.Text+','''+FormatDateTime('yyyy/mm/dd',dtpPago.Date)+''',0,2)';
      comLiquidacion.Execute  ;
      comLiquidacion.CommandText:='UPDATE Orden SET [dcmPorPagar]='+  FloatToStr( StrToFloat(edPorPagar.Text) - StrToFloat(edPago.Text)) +',[dcmAcuenta]='+ FloatToStr( StrToFloat(edAcuenta.Text) + StrToFloat(edPago.Text)) +',[idEstatus]=2 WHERE idOrden='+edOrden.Text;
      comLiquidacion.Execute;
      edPorPagar.Text:=FloatToStr( StrToFloat(edPorPagar.Text) - StrToFloat(edPago.Text));
      edAcuenta.Text:=FloatToStr( StrToFloat(edAcuenta.Text) + StrToFloat(edPago.Text));
      qConsultaOrdenes.Requery;
      qOrdenDetalle.Requery;
      qPagos.Requery;
      qPagos.Requery;
      edPago.Enabled:=false;
      btPago.Enabled:=false;
      btLiquidacion.Enabled:=false;
  end
  else
    if StrToFloat(edPorPagar.Text) - StrToFloat(edPago.Text) > 0 then
    begin
      //if qParametros.FieldByName('intParametro').Text = '0' then
      if vgIFolioAnterior = 0 then
          comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago]) VALUES ('+edOrden.Text+','+edPago.Text+','''+FormatDateTime('yyyy/mm/dd',Now())+''',0,1)'
      else
          comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago]) VALUES ('+edOrden.Text+','+edPago.Text+','''+FormatDateTime('yyyy/mm/dd',dtpPago.Date)+''',0,1)';
      comLiquidacion.Execute;
      comLiquidacion.CommandText:='UPDATE Orden SET [dcmPorPagar]='+  FloatToStr( StrToFloat(edPorPagar.Text) - StrToFloat(edPago.Text)) +',[dcmAcuenta]='+ FloatToStr( StrToFloat(edAcuenta.Text) + StrToFloat(edPago.Text)) +',[idEstatus]=1 WHERE idOrden='+edOrden.Text;
      comLiquidacion.Execute;
      edPorPagar.Text:=FloatToStr( StrToFloat(edPorPagar.Text) - StrToFloat(edPago.Text));
      edAcuenta.Text:=FloatToStr( StrToFloat(edAcuenta.Text) + StrToFloat(edPago.Text));
      qConsultaOrdenes.Requery;
      qOrdenDetalle.Requery;
      qPagos.Requery;
      qPagos.Requery
    end
    else
      if StrToFloat(edPorPagar.Text) - StrToFloat(edPago.Text) < 0 then
         ShowMessage('Su pago excede su adeudo!');

  btnBuscar.Click;
end;



procedure TfrmConsultaOrdenes.Button1Click(Sender: TObject);
begin
  edOrden.Text := inttostr(strtoInt(edOrden.Text)-1);
  btnBuscar.Click;
end;

procedure TfrmConsultaOrdenes.Button2Click(Sender: TObject);
begin
  edOrden.Text := inttostr(strtoInt(edOrden.Text)+1);
  btnBuscar.Click;
end;

procedure TfrmConsultaOrdenes.FormCreate(Sender: TObject);
begin
   dtpPago.Date := now;
   //qParametros.Open;

  if vgIFolioAnterior = 0 then begin
    edFolioAnt.Visible := false;
    lbFolioAnt.Visible := false;
    dtpPago.Visible := false;
  end
  else begin
    edFolioAnt.Visible := true;
    lbFolioAnt.Visible := true;
    dtpPago.Visible := true;
  end;


end;

procedure TfrmConsultaOrdenes.btCancelarClick(Sender: TObject);
begin
      comLiquidacion.CommandText:='UPDATE Orden SET [idEstatus]=4 WHERE idOrden='+edOrden.Text;
      comLiquidacion.Execute;
      qConsultaOrdenes.Requery;
      qOrdenDetalle.Requery;
      qPagos.Requery;
      qPagos.Requery;
      edPago.Enabled:=false;
      btPago.Enabled:=false;
      btEntregar.Enabled:=false;
      btLiquidacion.Enabled:=false;
      btCancelar.Enabled:=false;
      btnBuscar.Click;
end;

procedure TfrmConsultaOrdenes.btEntregarClick(Sender: TObject);
begin
      comLiquidacion.CommandText:='UPDATE Orden SET [idEstatus]=3 WHERE idOrden='+edOrden.Text;
      comLiquidacion.Execute;
      qConsultaOrdenes.Requery;
      qOrdenDetalle.Requery;
      qPagos.Requery;
      qPagos.Requery;
      edPago.Enabled:=false;
      btPago.Enabled:=false;
      btEntregar.Enabled:=false;
      btLiquidacion.Enabled:=false;
      btCancelar.Enabled:=false;

      btnBuscar.Click;
end;

procedure TfrmConsultaOrdenes.btLimpiarClick(Sender: TObject);
begin
    edOrden.Text := '';
    edNombre.Text := '';
    edTelefono.Text := '';
    edCorreo.Text := '';
    edFechaRec.Text := '';
    edFechaEntrega.Text := '';
    edAcuenta.Text := '';
    edPorPagar.Text := '';
    edTotal.Text := '';
    edPago.Text := '';
    edEstatus.Text := '';
    edFolioAnt.Text := '';
    qConsultaOrdenes.Close;
    qOrdenDetalle.Close;
    qPagos.Close;
    qParametros.Close;

end;

procedure TfrmConsultaOrdenes.btLiquidacionClick(Sender: TObject);
begin
  if vgIFolioAnterior = 0 then
      comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago]) VALUES ('+edOrden.Text+','+edPorPagar.Text+','''+FormatDateTime('yyyy/mm/dd',Now())+''',0,2)'
  else
      comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago]) VALUES ('+edOrden.Text+','+edPorPagar.Text+','''+FormatDateTime('yyyy/mm/dd',dtpPago.Date)+''',0,2)';
  comLiquidacion.Execute;
  comLiquidacion.CommandText:='UPDATE Orden SET [dcmAcuenta]='+edTotal.Text+',[dcmPorPagar]=0,[idEstatus]=3 WHERE idOrden='+edOrden.Text;
  comLiquidacion.Execute;

  edAcuenta.Text := edTotal.Text;

  edPorPagar.Text:='0';
  btPago.Enabled:=false;
  btLiquidacion.Enabled:=false;
  edPago.Enabled:=false;

  qConsultaOrdenes.Requery;
  qOrdenDetalle.Requery;
  qPagos.Requery;
  qPagos.Requery;

  btnBuscar.Click;
end;

end.
