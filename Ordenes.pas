unit Ordenes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,Globales, Vcl.DBCGrids, Vcl.ExtCtrls, Agenda,
  Vcl.ComCtrls, VPE_VCL;
type
  TfrmOrdenesv1 = class(TForm)
    edNombre: TEdit;
    Label2: TLabel;
    edTelefono: TEdit;
    Label4: TLabel;
    btBuscar: TButton;
    edCorreo: TEdit;
    Label5: TLabel;
    edFechaAlta: TEdit;
    Label6: TLabel;
    btRegistrar: TButton;
    qcatCliente: TADOQuery;
    btLimpiar: TButton;
    edUnidades: TEdit;
    edPrecio: TEdit;
    btAgregar: TButton;
    Label7: TLabel;
    lbPrenda: TLabel;
    lbServicio: TLabel;
    Label10: TLabel;
    edMontoLinea: TEdit;
    Label11: TLabel;
    edSubtotal: TEdit;
    edDescuento: TEdit;
    edTotal: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    btGuardar: TButton;
    btAgendar: TButton;
    edFechaEntrega: TEdit;
    cbxTipoAjuste: TDBLookupComboBox;
    qcatTipoAjuste: TADOQuery;
    dsTipoAjuste: TDataSource;
    qPrecio: TADOQuery;
    dsOrdenDetalle: TDataSource;
    dbgDetalle: TDBGrid;
    qOrdenDetalle: TADOQuery;
    qOrden: TADOQuery;
    qOrdenDetalleInsert: TADOQuery;
    Label1: TLabel;
    objCalendario: TMonthCalendar;
    Label16: TLabel;
    edACuenta: TEdit;
    edPorPagar: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    lbidOrden: TLabel;
    edIVA: TEdit;
    cbxIva: TCheckBox;
    dbgCliente: TDBGrid;
    dscatCliente: TDataSource;
    qOrdenPago: TADOQuery;
    conn: TADOConnection;
    dsPrenda: TDataSource;
    cbxPrenda: TDBLookupComboBox;
    btModificar: TButton;
    edDescuentoLinea: TEdit;
    Label20: TLabel;
    edNotas: TMemo;
    qCliente: TADOQuery;
    btImprimir: TButton;
    Panel4: TPanel;
    StatusBar1: TStatusBar;
    comBorraLinea: TADOCommand;
    rbM: TRadioButton;
    rbH: TRadioButton;
    Label21: TLabel;
    qParametros: TADOQuery;
    btLiquidar: TButton;
    edIdPrecio: TEdit;
    btNuevo: TButton;
    qFolio: TADOQuery;
    qPrenda: TADOQuery;
    VPENota: TVPEngine;
    Button1: TButton;
    qSecuencia: TADOQuery;
    dsSecuencia: TDataSource;
    edSubTotalFinal: TEdit;
    Label3: TLabel;
    Label8: TLabel;
    edTipoCliente: TEdit;
    Panel1: TPanel;
    edDescCorporativo: TEdit;
    Panel2: TPanel;
    edTipoServicio: TEdit;
    Label9: TLabel;
    Label19: TLabel;
    procedure btBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btLimpiarClick(Sender: TObject);
    procedure btRegistrarClick(Sender: TObject);
    procedure btAgregarClick(Sender: TObject);
    procedure btAgendarClick(Sender: TObject);
    procedure objCalendarioClick(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
    procedure edACuentaChange(Sender: TObject);
    procedure cbxIvaClick(Sender: TObject);
    procedure edDescuentoChange(Sender: TObject);
    procedure btModificarClick(Sender: TObject);
    procedure dbgClienteDblClick(Sender: TObject);
    procedure cbxPrendaClick(Sender: TObject);
    procedure cbxTipoAjusteClick(Sender: TObject);
    procedure edUnidadesChange(Sender: TObject);
    procedure edNombreExit(Sender: TObject);
    procedure edCorreoExit(Sender: TObject);
    procedure edNotasExit(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure btLiquidarClick(Sender: TObject);
    procedure btNuevoClick(Sender: TObject);
    procedure dbgClienteCellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmOrdenesv1: TfrmOrdenesv1;
  vlCliente:Integer;
  vlOrden:Integer;
  i:Integer;
  vintUpadate:Boolean;
  lFolioExistente: Boolean;
  vdcmSAC: double;
  vdcmSE: double;
implementation
{$R *.dfm}
procedure TfrmOrdenesv1.btAgendarClick(Sender: TObject);
begin
  Application.CreateForm(TfrmAgenda, frmAgenda);
  frmAgenda.ShowModal;
end;
procedure TfrmOrdenesv1.btAgregarClick(Sender: TObject);
begin

       if vlOrden=0 then begin
         qOrden.SQL.Clear;
         qOrden.SQL.Add('INSERT INTO Orden (idOrden,idCliente,dteRecepcion,dteEntrega,dcmSubtotal,dcmIVA,dcmDescuento,dcmTotal,dcmAcuenta,dcmPorPagar,idUsuario,idEstatus,idEstatusContable,intFolioAnt)');
         qOrden.SQL.Add('VALUES(NEXT VALUE FOR EugenesOne.Secuencias.secIdOrden,:pCliente,:pFechaRec,:pFechaEnt,0,0,0,0,0,0,1,0,0,:pFolio)');
         qOrden.Parameters.ParamByName('pCliente').Value:=vlCliente;
         qOrden.Parameters.ParamByName('pFechaEnt').Value:=FormatDateTime('yyyy/mm/dd',Now());
         qOrden.Parameters.ParamByName('pFechaRec').Value:=FormatDateTime('yyyy/mm/dd hh:mm:ss',Now());
         qOrden.Parameters.ParamByName('pFolio').Value:=0;
         qOrden.ExecSQL;
         qSecuencia.Open;
         vlOrden:=dsSecuencia.DataSet.FieldByName('Orden').Value;
       end;
       lbidOrden.Caption:='ORDEN '+IntToStr(vlOrden);
       qOrdenDetalleInsert.Close;
       qOrdenDetalleInsert.SQL.Clear;
          qOrdenDetalleInsert.SQL.Add('INSERT INTO Linea (idOrden,intCantidad,idPrenda,idServicio,dcmMonto,dcmDescuento,strNota,idPrecio) ');
          qOrdenDetalleInsert.SQL.Add('VALUES(:pOrden,:pCantidad,:pPrenda,:pAjuste,:pMonto,:pDescuento,:pNota,:pPrecio)');

       qOrdenDetalleInsert.Parameters.ParamByName('pOrden').Value:=vlOrden;
       qOrdenDetalleInsert.Parameters.ParamByName('pCantidad').Value:=edUnidades.Text;
       qOrdenDetalleInsert.Parameters.ParamByName('pPrenda').Value:=cbxPrenda.KeyValue;
       qOrdenDetalleInsert.Parameters.ParamByName('pAjuste').Value:=cbxTipoAjuste.KeyValue;
       qOrdenDetalleInsert.Parameters.ParamByName('pMonto').Value:=edMontoLinea.Text;
       qOrdenDetalleInsert.Parameters.ParamByName('pDescuento').Value:=edDescuentoLinea.Text;
       qOrdenDetalleInsert.Parameters.ParamByName('pNota').Value:=edNotas.Text;
       qOrdenDetalleInsert.Parameters.ParamByName('pPrecio').Value:=edIdPrecio.Text;
       edNotas.Text:= qOrdenDetalleInsert.SQL.ToString;
       qOrdenDetalleInsert.ExecSQL;
       if edSubtotal.Text='' then
          edSubtotal.Text:=edMontoLinea.Text
       else
          edSubtotal.Text:=FloatToStr(StrToFloat(edSubtotal.Text)+StrToFloat(edMontoLinea.Text));
        if edDescuento.Text='' then
          edDescuento.Text:=edDescuentoLinea.Text
        else
          edDescuento.Text:=FloatToStr(StrToFloat(edDescuento.Text)+StrToFloat(edDescuentoLinea.Text));

       if cbxIva.Checked = true then begin
          edSubTotalFinal.Text:= FloatToStr(StrToFloat(edSubtotal.Text)-StrToFloat(edDescuento.Text));
          edIVA.Text:=FloatToStr(StrToFloat(edSubTotalFinal.Text)*0.16);
          edTotal.Text:=FloatToStr(StrToFloat(edSubTotalFinal.Text)+StrToFloat(edIVA.Text));
          edPorPagar.Text := FloatToStr(StrToFloat(edTotal.Text) - StrToFloat(edACuenta.Text));
       end
       else
       begin
          edSubTotalFinal.Text:= FloatToStr(StrToFloat(edSubtotal.Text)-StrToFloat(edDescuento.Text));
          edTotal.Text:=FloatToStr(StrToFloat(edSubTotalFinal.Text));
          edPorPagar.Text := FloatToStr(StrToFloat(edTotal.Text) - StrToFloat(edACuenta.Text));
       end;

       qOrdenDetalle.Close;
       qOrdenDetalle.Parameters.ParamByName('pOrden').Value:=IntToStr(vlOrden);
       qOrdenDetalle.Open;
       
       edUnidades.Text:='1';
       cbxPrenda.KeyValue:=null;
       cbxTipoAjuste.KeyValue:=null;
       edPrecio.Text:='';
       edMontoLinea.Text:='';
       edDescuentoLinea.Text:='0';
       edNotas.Text:='';
       btGuardar.Enabled:=true;
       //btAgregar.Enabled:=false;
       dbgDetalle.Enabled:=true;
       btModificar.Enabled:=false;
       btLimpiar.Enabled:=false;
       btLiquidar.Enabled:=true;
       btBuscar.Enabled:=false;

end;
procedure TfrmOrdenesv1.btBuscarClick(Sender: TObject);
begin
  btLimpiar.Enabled := true;
  qcatCliente.SQL.Clear;
  if edNombre.Text <> '' then begin
      qcatCliente.SQL.Add('Select * from Cliente inner join tipocliente on tipocliente.idTipoCliente = cliente.idTipoCliente where strNombre like ''%'+edNombre.Text+'%'' order by strNombre');
  end;
  qcatCliente.ExecSQL;
  qcatCliente.Open;
  if qcatCliente.RecordCount = 0 then begin
      ShowMessage('Cliente no encontrado.');
      edNombre.Enabled := true;
      edTelefono.Enabled := true;
      edCorreo.Enabled := true;
      edFechaAlta.Text := DateToStr(Now);
      edFechaAlta.Enabled := false;
      btRegistrar.Enabled := true;
      rbM.Enabled:=true;
      rbH.Enabled:=true;
  end else
  if qcatCliente.RecordCount = 1 then begin
    edNombre.Text := qcatCliente.FieldByName('strNombre').Text;
    edTelefono.Text := qcatCliente.FieldByName('strTelefono').Text;
    edCorreo.Text := qcatCliente.FieldByName('strCorreo').Text;
    edFechaAlta.Text := qcatCliente.FieldByName('dteAlta').Text;
    edTipoCliente.Text := qcatCliente.FieldByName('strTipoCliente').Text;
    vdcmSAC := dbgCliente.DataSource.DataSet.FieldByName('dcmDescuentoSAC').AsFloat;
    vdcmSE := dbgCliente.DataSource.DataSet.FieldByName('dcmDescuentoSE').AsFloat;
    vlCliente:=StrToInt(qcatCliente.FieldByName('idCliente').Text);
    btNuevo.Enabled := true;
    if qcatCliente.FieldByName('chrGenero').Text <> '' then
      if qcatCliente.FieldByName('chrGenero').Text='H' then
      begin
          rbH.Checked:=true;
          rbM.Checked:=false;
      end
      else
      begin
          rbH.Checked:=false;
          rbM.Checked:=true;
      end
    else begin
          rbH.Checked:=false;
          rbM.Checked:=false;
    end;
        
    //ShowMessage(rgGenero.Items.ValueFromIndex[1]);
    edNombre.Enabled := false;
    edTelefono.Enabled := false;
    edCorreo.Enabled := false;
    edFechaAlta.Enabled := false;
    btModificar.Enabled := true;
    btAgregar.Enabled:= true;
    btBuscar.Enabled:=false;
  end
  else
    //ShowMessage('Selecciones el Cliente.');
    //dbgCliente.Visible:=true;
    //rbServicios.Checked := true;
end;
procedure TfrmOrdenesv1.btGuardarClick(Sender: TObject);
begin
  btImprimir.Enabled:=true;
  btGuardar.Enabled:=false;
  qOrden.SQL.Clear;
  qOrden.SQL.Add('UPDATE Orden SET intFolioAnt = :pFolioAnt,dteEntrega = :pdteEntrega, dcmSubtotal = :pdcmSubtotal, dcmIVA = :pdcmIVA, dcmDescuento = :pdcmDescuento, dcmTotal = :pdcmTotal, dcmAcuenta = :pdcmAcuenta, dcmPorPagar = :pdcmPorPagar, idestatus=:pestatus');
  qOrden.SQL.Add('where idOrden=:pOrden');
  qOrden.Parameters.ParamByName('pdteEntrega').Value:=FormatDateTime('yyyy/mm/dd',StrToDate(edFechaEntrega.Text));
  qOrden.Parameters.ParamByName('pdcmSubtotal').Value:=edSubtotal.Text;
  qOrden.Parameters.ParamByName('pdcmIVA').Value:=edIVA.Text;
  qOrden.Parameters.ParamByName('pFolioAnt').Value:=0;
  qOrden.Parameters.ParamByName('pdcmTotal').Value:=edTotal.Text;
  qOrden.Parameters.ParamByName('pdcmAcuenta').Value:=edACuenta.Text;
  qOrden.Parameters.ParamByName('pdcmPorPagar').Value:=edPorPagar.Text;
  qOrden.Parameters.ParamByName('pOrden').Value:=vlOrden;
  if edDescuento.Text = '' then
    qOrden.Parameters.ParamByName('pdcmDescuento').Value:='0'
  else
    qOrden.Parameters.ParamByName('pdcmDescuento').Value:=edDescuento.Text;
  if edTotal.Text = edACuenta.Text then
    qOrden.Parameters.ParamByName('pEstatus').Value:='2'
  else
    qOrden.Parameters.ParamByName('pEstatus').Value:='1';
  qOrden.ExecSQL;
  if  strtofloat(edACuenta.Text)>0 then begin
    qOrdenPago.SQL.Clear;
    qOrdenPago.SQL.Add('INSERT INTO Pago (idOrden,dcmPago,dtePago,idEstatusContable,idTipoPago)');
    if edACuenta.Text = edTotal.Text then
      qOrdenPago.SQL.Add('VALUES (:pOrdenP,:pMonto,:pfecha,0,2)')
    else
      qOrdenPago.SQL.Add('VALUES (:pOrdenP,:pMonto,:pfecha,0,1)');
    qOrdenPago.Parameters.ParamByName('pOrdenP').Value:=vlOrden;
    qOrdenPago.Parameters.ParamByName('pMonto').Value:=edACuenta.Text;
    qOrdenPago.Parameters.ParamByName('pFecha').Value:=FormatDateTime('yyyy/mm/dd',now());

    qOrdenPago.ExecSQL;
  end;
  btAgregar.Enabled:=false;
  dbgDetalle.Enabled:=false;
  btLiquidar.Enabled:=false;
end;
procedure TfrmOrdenesv1.btRegistrarClick(Sender: TObject);
begin
  if vintUpadate then
  begin
      vintUpadate:=false;
      btModificar.Enabled:=true;
      btNuevo.Enabled := true;
     qCliente.SQL.Clear;
     qCliente.SQL.Add('UPDATE Cliente SET strNombre=:pcNombre,strTelefono=:pcTelefono,strCorreo=:pcCorreo,dteAlta=:pcFechaAlta, chrGenero=:pcGenero WHERE idCliente=:pcliente');
     qCliente.Parameters.ParamByName('pcTelefono').Value:= edTelefono.Text;
     qCliente.Parameters.ParamByName('pcCorreo').Value:= edCorreo.Text;
     qCliente.Parameters.ParamByName('pcFechaAlta').Value:=FormatDateTime('yyyy/mm/dd',Now());
     qCliente.Parameters.ParamByName('pCliente').Value:=vlCliente;
     qCliente.Parameters.ParamByName('pcNombre').Value:= edNombre.Text;
     
     if (not rbM.Checked and not rbH.Checked) then
     begin
       ShowMessage('Seleccione GENERO para guardar!');
     end
     else
     begin
        if rbM.Checked then
          qCliente.Parameters.ParamByName('pcGenero').Value:= 'M'
        else
          qCliente.Parameters.ParamByName('pcGenero').Value:= 'H';
        
       qCliente.ExecSQL;
       btAgregar.Enabled:=true;
       edNombre.Enabled := false;
       edTelefono.Enabled := false;
       edCorreo.Enabled := false;
       edFechaAlta.Enabled := false;
       btBuscar.Enabled := false;
       btRegistrar.Enabled := false;
       btLimpiar.Enabled := true;
     end;
     
  
  end
  else begin
     qCliente.SQL.Clear;
     qCliente.SQL.Add('INSERT INTO Cliente (strNombre,strTelefono,strCorreo,dteAlta,chrGenero,idTipoCliente,dcmDescuentoSAC,dcmDescuentoSE)');
     qCliente.SQL.Add('VALUES(:pcNombre,:pcTelefono,:pcCorreo,:pcFechaAlta,:pcGenero,:pcTipoCliente,:pcDescSAC,:pcDescSE) set :IDc = scope_identity()');
     qCliente.Parameters.ParamByName('pcTelefono').Value:= edTelefono.Text;
     qCliente.Parameters.ParamByName('pcCorreo').Value:= edCorreo.Text;
     qCliente.Parameters.ParamByName('pcFechaAlta').Value:=FormatDateTime('yyyy/mm/dd',Now());
     qCliente.Parameters.ParamByName('IDc').Direction:=pdReturnValue;
     qCliente.Parameters.ParamByName('pcNombre').Value:= edNombre.Text;
     qCliente.Parameters.ParamByName('pcTipoCliente').Value:= '1';
     qCliente.Parameters.ParamByName('pcDescSAC').Value:= '0';
     qCliente.Parameters.ParamByName('pcDescSE').Value:= '0';

     if (not rbM.Checked and not rbH.Checked) then     
     begin
       ShowMessage('Seleccione GENERO para guardar!');
     end
     else
     begin
        if rbM.Checked then
          qCliente.Parameters.ParamByName('pcGenero').Value:= 'M'     
        else
          qCliente.Parameters.ParamByName('pcGenero').Value:= 'H';
        
       qCliente.ExecSQL;
       vlCliente:=StrToInt(qCliente.Parameters.ParamByName('IDc').Value);
       btAgregar.Enabled:=true;
       edNombre.Enabled := false;
       edTelefono.Enabled := false;
       edCorreo.Enabled := false;
       edFechaAlta.Enabled := false;
       btBuscar.Enabled := false;
       btRegistrar.Enabled := false;
       btLimpiar.Enabled := true;
       btAgregar.Enabled:=true;
     end;     
  end;
end;
procedure TfrmOrdenesv1.Button1Click(Sender: TObject);
begin
  frmOrdenesV1.Close;
end;
procedure TfrmOrdenesv1.btLiquidarClick(Sender: TObject);
begin
    edACuenta.Text := edPorPagar.Text;
    edPorPagar.Text := '0';
    btGuardar.Click;
end;
procedure TfrmOrdenesv1.btModificarClick(Sender: TObject);
begin
    vintUpadate := true;
    //dbgCliente.Visible:=false;
    edNombre.Enabled := true;
    edTelefono.Enabled := true;
    edCorreo.Enabled := true;
    edFechaAlta.Enabled := true;
    btBuscar.Enabled := false;
    btRegistrar.Enabled := true;
    btLimpiar.Enabled := true;
    btModificar.Enabled:= false;
    rbH.Enabled:=true;
    rbM.Enabled:=true;
end;
procedure TfrmOrdenesv1.btNuevoClick(Sender: TObject);
begin
    btNuevo.Enabled := false;
    btRegistrar.Enabled := true;
    btModificar.Enabled := false;
    btLimpiar.Click;
    edTelefono.Enabled:=true;
    edCorreo.Enabled:=true;
    rbM.Enabled:=true;
    rbH.Enabled:=true;
end;
procedure TfrmOrdenesv1.btImprimirClick(Sender: TObject);
var
  i:Integer;
  x,y,y1:Double;
begin
x:= 5.6;
y:= 0;
y1:=0;
     VPENota.OpenDoc;
     VPENota.PenSize:=0;
     VPENota.Picture(x+0.0,y+0.5,VFREE,VFREE,'c:\Alx\EugenesOne\Notas_color.bmp');
     VPENota.SetFont('Arial',8);
     VPENota.Print(x+2.4,y+4.6,edNombre.Text);
     VPENota.Print(x+2.4,y+5.0,edTelefono.Text);
     VPENota.Print(x+2.4,y+5.4,edCorreo.Text);
     VPENota.Print(x+2.4,y+5.8,FormatDateTime('dd/mm/yyyy hh:mm:ss',Now()));
     VPENota.Print(x+7.2,y+5.8,edFechaEntrega.Text);
     VPENota.SetFont('Arial',7);
     qOrdenDetalle.Close;
     qOrdenDetalle.Open;
     for i := 1 to qOrdenDetalle.RecordCount do begin
       VPENota.Print(x+0.5,y1+6.9,qOrdenDetalle.FieldByName('Cant').Text);
       VPENota.Print(x+1.3,y1+6.9,qOrdenDetalle.FieldByName('Prenda').Text);
       VPENota.Print(x+1.3,y1+7.15,qOrdenDetalle.FieldByName('Ajuste').Text);
       //VPENota.Print(x+8.0,y1+6.9,'$ '+qOrdenDetalle.FieldByName('Precio').Text);
       VPENota.Print(x+7.8,y1+6.9,'$ '+format('%7f',[qOrdenDetalle.FieldByName('Precio').AsFloat]));
       VPENota.Print(x+9.2,y1+6.9,'$ '+format('%7f',[qOrdenDetalle.FieldByName('Monto').AsFloat]));
       if (vdcmSAC > 0) or (vdcmSE > 0) then begin
         VPENota.Print(x+9.2,y1+7.15,'$ -'+format('%7f',[qOrdenDetalle.FieldByName('Descuento').AsFloat]));
         VPENota.Print(x+7.7,y1+7.15,'Desc. '+qOrdenDetalle.FieldByName('strTipoCorto').Text);
       end
       else if qOrdenDetalle.FieldByName('Descuento').AsFloat > 0 then begin
         VPENota.Print(x+9.2,y1+7.15,'$ -'+format('%7f',[qOrdenDetalle.FieldByName('Descuento').AsFloat]));
         VPENota.Print(x+7.9,y1+7.15,'Desc. ');
       end;
       if qOrdenDetalle.FieldByName('Nota').Text.Length >= 42 then begin
         VPENota.Print(x+1.3,y1+7.4,qOrdenDetalle.FieldByName('Nota').Text.Substring(0,42));
         y1:=y1+0.2;
         VPENota.Print(x+1.3,y1+7.4,qOrdenDetalle.FieldByName('Nota').Text.Substring(42,80));
       end
       else
         VPENota.Print(x+1.3,y1+7.4,qOrdenDetalle.FieldByName('Nota').Text);
       VPENota.Print(x+0.5,y+20.8,qOrdenDetalle.FieldByName('Cant').Text);
       VPENota.Print(x+1.0,y+20.8,qOrdenDetalle.FieldByName('Prenda').Text);
       VPENota.Print(x+4.2,y+20.8,qOrdenDetalle.FieldByName('Ajuste').Text);
       if qOrdenDetalle.FieldByName('Nota').Text.Length >= 64 then begin
         VPENota.Print(x+0.5,y+21.1,'      '+qOrdenDetalle.FieldByName('Nota').Text.Substring(0,64));
         y:=y+0.2;
         VPENota.Print(x+0.5,y+21.1,'      '+qOrdenDetalle.FieldByName('Nota').Text.Substring(64,128));
       end
       else
         VPENota.Print(x+0.5,y+21.1,'      '+qOrdenDetalle.FieldByName('Nota').Text);
       qOrdenDetalle.Next;
       y1:=y1+0.9;
       y := y+0.7;
     end;
     y:=-1.15;
     VPENota.SetFont('Arial',10);
     VPENota.TextBold := true;
     VPENota.Print(x+4.5,y+15.2,vlOrden.ToString);
     VPENota.TextBold := false;
     VPENota.SetFont('Arial',8);
     VPENota.Print(x+9.0,y+15.3,'$ '+format('%7f',[strtofloat(edSubtotal.Text)]));
     VPENota.Print(x+9.0,y+15.75,'$ '+format('%7f',[strtofloat(edDescuento.Text)]));
     VPENota.Print(x+9.0,y+16.16,'$ '+format('%7f',[strtofloat(edIVA.Text)]));
     VPENota.TextBold := true;
     VPENota.Print(x+9.0,y+16.6,'$ '+format('%7f',[strtofloat(edTotal.Text)]));
     VPENota.TextBold := false;
     VPENota.Print(x+9.0,y+17.05,'$ '+format('%7f',[strtofloat(edACuenta.Text)]));
     VPENota.Print(x+9.0,y+17.5,'$ '+format('%7f',[strtofloat(edPorPagar.Text)]));
     //Pie de nota
     x:=0;
     y:=0;
     VPENota.SetFont('Arial',7);
     VPENota.Print(x+6.2,y+26.9,'$ '+edSubtotal.Text);
     VPENota.Print(x+8.2,y+26.9,'$ '+edDescuento.Text);
     VPENota.Print(x+10.2,y+26.9,'$ '+edIVA.Text);
     VPENota.Print(x+11.6,y+26.9,'$ '+edTotal.Text);
     VPENota.Print(x+13.3,y+26.9,'$ '+edACuenta.Text);
     VPENota.Print(x+14.9,y+26.9,'$ '+edPorPagar.Text);
     y := -1.15;
     x := 0;
     VPENota.TextBold := true;
     VPENota.SetFont('Arial',9);
     VPENota.Print(x+7.5 ,y+19.3,vlOrden.ToString);
     VPENota.SetFont('Arial',8);
     VPENota.Print(x+11.2,y+19.3,FormatDateTime('dd/mm/yyyy',Now()));
     VPENota.Print(x+14.6,y+19.3,edFechaEntrega.Text);
     VPENota.TextBold := false;
     VPENota.SetFont('Arial',8);
     VPENota.Print(x+8.3,y+19.8,edNombre.Text);
     VPENota.Print(x+8.3,y+20.3,edTelefono.Text);
     VPENota.Print(x+8.3,y+20.8,edCorreo.Text);
     VPENota.Preview;
end;

procedure TfrmOrdenesv1.cbxIvaClick(Sender: TObject);
begin
   if cbxIva.Checked then begin
      edIVA.Text:=FloatToStr(StrToFloat(edSubtotal.Text)*0.16);
      edTotal.Text:=FloatToStr(StrToFloat(edSubtotal.Text)+StrToFloat(edIVA.Text)-StrToFloat(edDescuento.Text));
   end
   else begin
      edTotal.Text:=FloatToStr(StrToFloat(edSubtotal.Text)-StrToFloat(edDescuento.Text));
      edIva.Text:='0';
   end;
    edPorPagar.Text:=FloatToStr(StrToFloat(edTotal.Text) - StrToFloat(edACuenta.Text));
end;


procedure TfrmOrdenesv1.cbxTipoAjusteClick(Sender: TObject);
begin
    qPrecio.Close;
    qPrecio.Parameters.ParamByName('pTipoPrenda').Value:=cbxPrenda.KeyValue;
    qPrecio.Parameters.ParamByName('pTipoAjuste').Value:=cbxTipoAjuste.KeyValue;
    qPrecio.Open;
    edPrecio.Text:= qPrecio.FieldByName('dcmPrecio').Text;
    edIdPrecio.Text := qPrecio.FieldByName('idPrecio').Text;
    if qPrecio.FieldByName('idTipoServicio').Text ='1' then begin
      edTipoServicio.Text := 'SAC';
      edDescCorporativo.Text := vdcmSAC.ToString
    end
    else if qPrecio.FieldByName('idTipoServicio').Text ='2' then begin
      edTipoServicio.Text := 'SE';
      edDescCorporativo.Text := vdcmSE.ToString;
    end
    else begin
      edTipoServicio.Text := 'SN';
      edDescCorporativo.Text := '0';
    end;
    edMontoLinea.Text:= IntToStr(StrToInt(edUnidades.Text)*StrToInt( edPrecio.Text) );
    edDescuentoLinea.Text :=  floattostr (StrToFloat(edMontoLinea.Text)*(StrToFloat(edDescCorporativo.Text)));

end;
procedure TfrmOrdenesv1.dbgClienteCellClick(Column: TColumn);
begin
     //ShowMessage('Cliente:'+dbgCliente.DataSource.DataSet.FieldByName('strNombre').AsString);
     //ShowMessage('Cliente:'+dbgCliente.DataSource.DataSet.FieldByName('strApellido').AsString);
     edNombre.Text:=dbgCliente.DataSource.DataSet.FieldByName('strNombre').AsString;
     edTelefono.Text:=dbgCliente.DataSource.DataSet.FieldByName('strTelefono').AsString;
     edCorreo.Text:=dbgCliente.DataSource.DataSet.FieldByName('strCorreo').AsString;
     edFechaAlta.Text:=dbgCliente.DataSource.DataSet.FieldByName('dteAlta').AsString;
     edTipoCliente.Text := dbgCliente.DataSource.DataSet.FieldByName('strTipoCliente').Text;
     vlCliente:=dbgCliente.DataSource.DataSet.FieldByName('idCliente').AsInteger;
     vdcmSAC := dbgCliente.DataSource.DataSet.FieldByName('dcmDescuentoSAC').AsFloat;
     vdcmSE := dbgCliente.DataSource.DataSet.FieldByName('dcmDescuentoSE').AsFloat;

     //dbgCliente.Visible:=false;
     edNombre.Enabled:=false;
     btModificar.Enabled:=true;
     btAgregar.Enabled:= true;
     btBuscar.Enabled:=false;
     btNuevo.Enabled:=true;
     rbM.Enabled:=true;
     rbH.Enabled:=true;
    if qcatCliente.FieldByName('chrGenero').Text <> '' then
      if qcatCliente.FieldByName('chrGenero').Text='H' then
      begin
          rbH.Checked:=true;
          rbM.Checked:=false;
      end
      else
      begin
          rbH.Checked:=false;
          rbM.Checked:=true;
      end
    else
    begin
          rbH.Checked:=false;
          rbM.Checked:=false;
    end;
    dbgCliente.ReadOnly:=true;
end;
procedure TfrmOrdenesv1.dbgClienteDblClick(Sender: TObject);
begin
     //ShowMessage('Cliente:'+dbgCliente.DataSource.DataSet.FieldByName('strNombre').AsString);
     //ShowMessage('Cliente:'+dbgCliente.DataSource.DataSet.FieldByName('strApellido').AsString);
     edNombre.Text:=dbgCliente.DataSource.DataSet.FieldByName('strNombre').AsString;
     edTelefono.Text:=dbgCliente.DataSource.DataSet.FieldByName('strTelefono').AsString;
     edCorreo.Text:=dbgCliente.DataSource.DataSet.FieldByName('strCorreo').AsString;
     edFechaAlta.Text:=dbgCliente.DataSource.DataSet.FieldByName('dteAlta').AsString;
     edTipoCliente.Text := dbgCliente.DataSource.DataSet.FieldByName('strTipoCliente').Text;
     vlCliente:=dbgCliente.DataSource.DataSet.FieldByName('idCliente').AsInteger;
     vdcmSAC := dbgCliente.DataSource.DataSet.FieldByName('dcmDescuentoSAC').AsFloat;
     vdcmSE := dbgCliente.DataSource.DataSet.FieldByName('dcmDescuentoSE').AsFloat;
     //dbgCliente.Visible:=false;
     edNombre.Enabled:=false;
     btModificar.Enabled:=true;
     btAgregar.Enabled:= true;
     btBuscar.Enabled:=false;
     btNuevo.Enabled:=true;
     rbM.Enabled:=true;
     rbH.Enabled:=true;
    if qcatCliente.FieldByName('chrGenero').Text <> '' then
      if qcatCliente.FieldByName('chrGenero').Text='H' then
      begin
          rbH.Checked:=true;
          rbM.Checked:=false;
      end
      else
      begin
          rbH.Checked:=false;     
          rbM.Checked:=true;     
      end
    else 
    begin
          rbH.Checked:=false;     
          rbM.Checked:=false;     
    end;
    dbgCliente.ReadOnly:=true;
end;
procedure TfrmOrdenesv1.dbgDetalleDblClick(Sender: TObject);
begin
    edSubtotal.Text:=FloatToStr(StrToFloat(edSubtotal.Text)-StrToFloat(dbgDetalle.DataSource.DataSet.FieldByName('Monto').AsString));
    edDescuento.Text:=FloatToStr(StrToFloat(edDescuento.Text)-StrToFloat(dbgDetalle.DataSource.DataSet.FieldByName('Descuento').AsString));
    edSubTotalFinal.Text:=FloatToStr(StrToFloat(edSubtotal.Text)-StrToFloat(edDescuento.Text));
   if cbxIva.Checked then begin
      edIVA.Text:=FloatToStr(StrToFloat(edSubtotalFinal.Text)*0.16);
      edTotal.Text:=FloatToStr(StrToFloat(edSubtotalFinal.Text)+StrToFloat(edIVA.Text));
   end
   else
      edTotal.Text:=edSubtotalFinal.Text;
   edPorPagar.Text := FloatToStr(StrToFloat(edTotal.Text) - StrToFloat(edACuenta.Text));
   comBorraLinea.CommandText:='delete linea where idorden = '+dbgDetalle.DataSource.DataSet.FieldByName('O').AsString+' and idprenda = '+dbgDetalle.DataSource.DataSet.FieldByName('P').AsString+' and idServicio = '+dbgDetalle.DataSource.DataSet.FieldByName('S').AsString+' and idLinea = '+dbgDetalle.DataSource.DataSet.FieldByName('Linea').AsString;
   comBorraLinea.Execute;
   qOrdenDetalle.close;
   qOrdenDetalle.open;
end;
procedure TfrmOrdenesv1.cbxPrendaClick(Sender: TObject);
begin
    qcatTipoAjuste.Close;
    qcatTipoAjuste.Parameters.ParamByName('pTipoPrenda').Value:=cbxPrenda.KeyValue;
    qcatTipoAjuste.Open;
end;
procedure TfrmOrdenesv1.edACuentaChange(Sender: TObject);
begin
    edPorPagar.Text:=FloatToStr(StrToFloat(edTotal.Text) - StrToFloat(edACuenta.Text));
end;
procedure TfrmOrdenesv1.edCorreoExit(Sender: TObject);
begin
    edCorreo.Text:=AnsiUpperCase(edCorreo.Text);
end;
procedure TfrmOrdenesv1.edDescuentoChange(Sender: TObject);
begin
   if cbxIva.Checked then begin
      edIVA.Text:=FloatToStr(StrToFloat(edSubTotalFinal.Text)*0.16);
      edTotal.Text:=FloatToStr(StrToFloat(edSubTotalFinal.Text)+StrToFloat(edIVA.Text));
   end
   else
      edTotal.Text:=edSubTotalFinal.Text;

    edPorPagar.Text:=FloatToStr(StrToFloat(edTotal.Text) - StrToFloat(edACuenta.Text));
end;
procedure TfrmOrdenesv1.edNombreExit(Sender: TObject);
begin
  edNombre.Text:=UpperCase(edNombre.Text);
end;
procedure TfrmOrdenesv1.edNotasExit(Sender: TObject);
begin
    edNotas.Text:=AnsiUpperCase(edNotas.Text);
end;

procedure TfrmOrdenesv1.edUnidadesChange(Sender: TObject);
begin
    if ((edPrecio.Text<>'')AND(edPrecio.Text<>'0')) AND (edUnidades.Text<>'') then begin
      edMontoLinea.Text:= IntToStr(StrToInt(edUnidades.Text)*StrToInt(edPrecio.Text));

      if qPrecio.FieldByName('idTipoServicio').Text ='1' then begin
         edDescCorporativo.Text := vdcmSAC.ToString
      end
      else begin
        edDescCorporativo.Text := vdcmSE.ToString;
      end;
      edMontoLinea.Text:= IntToStr(StrToInt(edUnidades.Text)*StrToInt( edPrecio.Text) );
      edDescuentoLinea.Text :=  floattostr (StrToFloat(edMontoLinea.Text)*(StrToFloat(edDescCorporativo.Text)));
    end;

end;
procedure TfrmOrdenesv1.btLimpiarClick(Sender: TObject);
begin
    
    edNombre.Text := '';
    edTelefono.Text := '';
    edCorreo.Text := '';
    edFechaAlta.Text := '';
    edNombre.Enabled := true;
    edTelefono.Enabled := false;
    edCorreo.Enabled := false;
    edFechaAlta.Enabled := false;
    btBuscar.Enabled := true;
    btRegistrar.Enabled := true;
    btLimpiar.Enabled := false;
    btModificar.Enabled := true;
    rbM.Checked:=true;
    rbH.Checked:=false;
end;
procedure TfrmOrdenesv1.FormCreate(Sender: TObject);
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
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Ordenes');
    end;
  end;

    edTelefono.Enabled := false;
    edCorreo.Enabled := false;
    edFechaAlta.Enabled := false;
    btRegistrar.Enabled := false;
    btLimpiar.Enabled := false;
    vlOrden:=0;
    objCalendario.Date:=Now;
    edFechaEntrega.Text:=DateToStr(Now()+2);
    dbgDetalle.Enabled:=false;
    btAgregar.Enabled:=false;
    btModificar.Enabled:=false;
    btLiquidar.Enabled := false;
    rbM.Enabled:=false;
    rbH.Enabled:=false;
    lFolioExistente := false;
    qParametros.Open;
end;
procedure TfrmOrdenesv1.objCalendarioClick(Sender: TObject);
begin
    edFechaEntrega.Text:=DateToStr(objCalendario.Date);
end;

end.
