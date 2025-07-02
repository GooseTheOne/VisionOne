unit ConsultaOrdenes;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Data.Win.ADODB, Vcl.ComCtrls, Globales,
  VPE_VCL, Vcl.Mask,DetalleCancelacion;
type
  TfrmConsultaOrdenes = class(TForm)
    btnBuscar: TButton;
    edOrden: TEdit;
    Label1: TLabel;
    Conn: TADOConnection;
    qConsultaOrdenes: TADOQuery;
    qOrdenDetalle: TADOQuery;
    qPagos: TADOQuery;
    dsOrdenDetalle: TDataSource;
    dsPagos: TDataSource;
    comLiquidacion: TADOCommand;
    qParametros: TADOQuery;
    btLimpiar: TButton;
    Button1: TButton;
    Button2: TButton;
    spOrdenXId: TADOStoredProc;
    dsOrdenXId: TDataSource;
    dbeOrden: TDBEdit;
    dbeCliente: TDBEdit;
    dbeRecepcion: TDBEdit;
    dbeEntrega: TDBEdit;
    dbeSubtotal: TDBEdit;
    dbeDesc: TDBEdit;
    dbeIVA: TDBEdit;
    dbeTotal: TDBEdit;
    dbeAdelanto: TDBEdit;
    dbeCxC: TDBEdit;
    dbeEstatus: TDBEdit;
    dbeEstatusCont: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    spLineasXOrden: TADOStoredProc;
    dsLineasXOrden: TDataSource;
    DBGrid3: TDBGrid;
    btnEntregar: TButton;
    btnCancelar: TButton;
    btnAdelanto: TButton;
    btnLiquidar: TButton;
    spPagosXOrden: TADOStoredProc;
    dsPagosXOrden: TDataSource;
    DBGrid4: TDBGrid;
    edImportePago: TEdit;
    Label2: TLabel;
    dtpFechaPago: TDateTimePicker;
    spOrdenPrenda: TADOStoredProc;
    dsOrdenPrenda: TDataSource;
    spOrdenPrendaServicio: TADOStoredProc;
    DBGrid2: TDBGrid;
    dsOrdenPrendaServicio: TDataSource;
    VPENota: TVPEngine;
    Button3: TButton;
    btnPagar: TButton;
    dbeTelefono: TDBEdit;
    Label3: TLabel;
    dbeCorreo: TDBEdit;
    Label4: TLabel;
    dbeSucursal: TDBEdit;
    spFormaPago: TADOStoredProc;
    dsFormaPago: TDataSource;
    dblkcFormaPago: TDBLookupComboBox;
    spGetLineasPorOrden: TADOStoredProc;
    btnDevolucion: TButton;
    Label5: TLabel;
    dbePrendas: TDBEdit;
    dbeIdCliente: TDBEdit;
    dbeIdUsuario: TDBEdit;
    dbeIdSucursal: TDBEdit;
    spGetUltimaOrden: TADOStoredProc;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnEntregarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAdelantoClick(Sender: TObject);
    procedure btnLiquidarClick(Sender: TObject);
    procedure edOrdenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsOrdenPrendaDataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure btnDevolucionClick(Sender: TObject);


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
  spOrdenPrendaServicio.Close;
  spOrdenPrendaServicio.Parameters.ParamByName('@pidOrden').Value := edOrden.Text;
  spOrdenPrendaServicio.Open;
  dblkcFormaPago.KeyValue := 1;

  if spOrdenXId.RecordCount > 0 then begin

        spLineasXOrden.Close;
        spLineasXOrden.Parameters.ParamByName('@pidOrden').Value := edOrden.Text;
        spLineasXOrden.Open;
        spPagosXOrden.Close;
        spPagosXOrden.Parameters.ParamByName('@pidOrden').Value := edOrden.Text;
        spPagosXOrden.Open;

          if StrToFloat(StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))>0 then
          begin
              btnAdelanto.Enabled:=true;
              btnPagar.Enabled := true;
              btnEntregar.Enabled:=true;
              edImportePago.Enabled:=true;
              if vgIdTipoUsuario  = 3 then
                 btnDevolucion.Enabled:=true;
          end
          else
          begin
              btnAdelanto.Enabled:=false;
              btnPagar.Enabled := false;
              btnEntregar.Enabled:=false;
              edImportePago.Enabled:=false;
          end;

          if dbeEstatus.Text = 'INCOMPLETA' then begin
                    btnEntregar.Enabled := false;
                    btnCancelar.Enabled := false;
                    if vgIdTipoUsuario  = 3 then
                       btnDevolucion.Enabled:=true;
          end
          else  if dbeEstatus.Text = 'PENDIENTE' then begin
                    btnEntregar.Enabled := true;
                    btnCancelar.Enabled := true;
                    if vgIdTipoUsuario  = 3 then
                    		btnDevolucion.Enabled:=true;
                end
                else  if dbeEstatus.Text = 'PAGADA' then begin
                          btnEntregar.Enabled := true;
                          btnCancelar.Enabled := true;
                          if vgIdTipoUsuario  = 3 then
                          		btnDevolucion.Enabled:=true;
                      end
                      else  if dbeEstatus.Text = 'ENTREGADA' then begin
                                btnEntregar.Enabled := false;
                                btnCancelar.Enabled := true;
                                if vgIdTipoUsuario  = 3 then
                                		btnDevolucion.Enabled:=true;
                            end
                            else  if dbeEstatus.Text = 'CANCELADA' then begin
                                      btnEntregar.Enabled := false;
                                      btnCancelar.Enabled := false;
                                      if vgIdTipoUsuario  = 3 then
                                      		btnDevolucion.Enabled:=false;
                                  end
                                  else  if dbeEstatus.Text = 'DEVOLUCION' then begin
                                            btnEntregar.Enabled := false;
                                            btnCancelar.Enabled := false;
                                            if vgIdTipoUsuario  = 3 then
                                            		btnDevolucion.Enabled:=true;
                                        end
                                        else
                                            ShowMessage('El estatus de la Orden es Inconsistente');

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

        qConsultaOrdenes.Open;
  end
  else begin
        spOrdenXId.Close;
        spLineasXOrden.Close;
        spPagosXOrden.Close;
        qConsultaOrdenes.Close;
  end;
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
procedure TfrmConsultaOrdenes.Button3Click(Sender: TObject);
var
  i,j:Integer;
  vlintHojas:Integer;
  x,y,y1,delta,hpag:Double;
  vlbCambioPrenda, vlidPrenda, vlintRenglones:Integer;
  hoja, vlbolDesc: boolean;

begin

    try
      spGetLineasPorOrden.Close;
    except
      On E: Exception do
      begin
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - RegistroOrdenes.spGetLineasPorOrden.Close');
          exit;
      end;
    end;

    spGetLineasPorOrden.Parameters.ParamByName('@pidOrden').Value := dbeOrden.Text;

    try
      spGetLineasPorOrden.Open;
    except
      On E: Exception do
      begin
          ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - RegistroOrdenes.btnImprimirClick');
          exit;
      end;
    end;


    x:= 0.1;
    y:= 0;
    i := 0;
    hpag := 32 +(0.8*spGetLineasPorOrden.RecordCount);

    VPENota.OpenDoc;
    VPENota.PageFormat := VPAPER_USER_DEFINED;
    VPENota.PageWidth := 8;
    VPENota.PageHeight := hpag;
    VPENota.PenSize:=0;
    VPENota.SetOutRect(0.1,0.5,7.8,hpag);
    VPENota.SetFont('Attraction Personal Use',40);
    VPENota.Print(x+0.6,y,'Eugene s');

    //VPENota.SetFont('Cascadia Mono',9);
    VPENota.SetFont('Courier New',9);
    VPENota.TextBold := true;
    y := y + 0.4;
    if vgintSucursal = 1 then begin
    //VPENota.Print(x,y+3.0,'123456789_12345678__87654321_987654321');
      VPENota.Print(x,y+3.0,'   AV. 15 DE MAYO 2913 COL LAS HADAS  ');
      VPENota.Print(x,y+3.4,'         C.P. 72090 PUEBLA PUE        ');
      VPENota.Print(x,y+3.8,' TEL: 22-24-21-40-70 / 22-21-97-15-41 ');
      VPENota.Print(x,y+4.2,'   HORARIO:  L-V 10:00AM-07:00PM      ');
      //VPENota.Print(x,y+4.6,'             SAB 10:00AM-04:00PM      ');
      VPENota.Print(x,y+5.0,'      RFC :  BIGD991014FHA            ');
      VPENota.Print(x,y+5.4,'  REGIMEN SIMPLIFICADO DE CONFIANZA   ');
      VPENota.Print(x,y+5.4,'                                      ');
    end
    else if vgintSucursal = 2 then begin
      VPENota.Print(x,y+3.0,'ROSENDO MARQUEZ 1917 COL BELISARIO DGZ');
      VPENota.Print(x,y+3.4,'         C.P. 72180 PUEBLA PUE        ');
      VPENota.Print(x,y+3.8,' TEL: 22-21-97-15-41 / 22-24-21-40-70 ');
      VPENota.Print(x,y+4.2,'   HORARIO:  L-V 10:00AM-07:00PM      ');
      VPENota.Print(x,y+4.6,'             SAB 10:00AM-04:00PM      ');
      VPENota.Print(x,y+5.0,'       RFC:  BIEC7502255Q0            ');
      VPENota.Print(x,y+5.4,'                                      ');
    end
    else if vgintSucursal = 3 then begin
      //VPENota.Print(x,y+3.0,'123456789_123456789_123456789_12345678');
      VPENota.Print(x,y+3.0,' AV. 15 DE MAYO 3916 COL VILA POSADAS ');
      VPENota.Print(x,y+3.4,'         C.P. 72060 PUEBLA PUE        ');
      VPENota.Print(x,y+3.8,' TEL: 22-25-89-32-63 / 22-21-97-15-41 ');
      VPENota.Print(x,y+4.2,'   HORARIO:  L-V 10:00AM-07:00PM      ');
      VPENota.Print(x,y+4.6,'             SAB 09:00AM-02:00PM      ');
      VPENota.Print(x,y+5.0,'       RFC:  BIGD991014FHA            ');
      VPENota.Print(x,y+5.4,'  REGIMEN SIMPLIFICADO DE CONFIANZA   ');
    end;

    y := y + 0.5;
















    VPENota.Print(x,y+5.8,  '   NOMBRE: ' +dbeCliente.Text);
    VPENota.Print(x,y+6.2,  ' TELEFONO: ' +dbeTelefono.Text);
    VPENota.Print(x,y+6.6,  '   CORREO: ' +dbeCorreo.Text);
    VPENota.Print(x,y+7.0,  'RECEPCION: ' +FormatDateTime('dd/mm/yyyy hh:nn:ss',strtodatetime(dbeRecepcion.Text)));
    VPENota.Print(x,y+7.4,  '  ENTREGA: ' +dbeEntrega.Text);

    //VPENota.SetFont('Cascadia Mono',8);
    VPENota.SetFont('Courier New',8);
    //VPENota.TextBold := true;
  //VPENota.Print(x,y+8.2, '123456789_123456789_12_21_987654321_987654321');
    VPENota.Print(x,y+8.2, 'CANT PRENDA/SERVICIO          PRECIO IMPORTE');
    VPENota.PenSize:=0.03;
    VPENota.Line(x,y+8.6,x+7.7, y+8.6);

    //VPENota.TextBold := false;
    y := 2.2 + 0.5;

    while (i < spGetLineasPorOrden.RecordCount) do begin
         if vlbCambioPrenda = 0 then begin
            if vlidPrenda <> spGetLineasPorOrden.FieldByName('idOrdenPrenda').value then begin
                vlidPrenda := spGetLineasPorOrden.FieldByName('idOrdenPrenda').value;
                vlbCambioPrenda := 1
            end;
         end
         else begin
            if vlidPrenda = spGetLineasPorOrden.FieldByName('idOrdenPrenda').value then
                vlbCambioPrenda := 0
            else begin
                vlidPrenda := spGetLineasPorOrden.FieldByName('idOrdenPrenda').value;
                vlbCambioPrenda := 1;
            end;
         end;
        if vlbCambioPrenda = 1 then begin
            //VPENota.TextBold := true;
          //VPENota.Print(x,y+8.2, '123456789_123456789_12_21_987654321_987654321');
            VPENota.Print(x+0.1,y+6.9,   spGetLineasPorOrden.FieldByName('intCantidad').Text);
            VPENota.Print(x+0.5,y+6.9,   spGetLineasPorOrden.FieldByName('strPrenda').Text);
            //VPENota.TextBold := false;
            y := y + 0.4;

        end;
      //VPENota.Print(x,y+8.2, '123456789_123456789_12_21_987654321_987654321');
        VPENota.Print(x+0.5,y+6.9,  spGetLineasPorOrden.FieldByName('strServicio').Text.Substring(0,23));
        VPENota.Print(x+4.7,y+6.9,   '$'+format('%7f',[StrToFloat( StringReplace(StringReplace(spGetLineasPorOrden.FieldByName('dcmPrecio').AsString,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
        VPENota.Print(x+6.1,y+6.9,   '$'+format('%7f',[StrToFloat( StringReplace(StringReplace(spGetLineasPorOrden.FieldByName('dcmMonto').AsString ,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));


        if (spGetLineasPorOrden.FieldByName('idTipoCliente').Value = 2) then begin//Servicio alto consumo

              y := y + 0.4;
              vlbolDesc := true;
        end
        else if StrToFloat( StringReplace(StringReplace(spGetLineasPorOrden.FieldByName('dcmDescuento').AsString,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) > 0 then begin

             y := y + 0.4;
             vlbolDesc := true;
        end;



        if spGetLineasPorOrden.FieldByName('strNota').Text.Length > 0 then
            if spGetLineasPorOrden.FieldByName('strNota').Text.Length >= 42 then begin
                if vlbolDesc then begin
                    y := y - 0.4;

                end;

                VPENota.Print(x+0.5,y+7.2,'-'+spGetLineasPorOrden.FieldByName('strNota').Text.Substring(0,42));
                VPENota.Print(x+0.5,y+7.5,spGetLineasPorOrden.FieldByName('strNota').Text.Substring(42,80));

                y :=y +0.8;

            end
            else begin
                if vlbolDesc then begin
                    y := y - 0.4;

                end;

                VPENota.Print(x+0.5,y+7.2,'-'+spGetLineasPorOrden.FieldByName('strNota').Text);

                y :=y +0.4;

            end;

        spGetLineasPorOrden.Next;
        y := y + 0.4;
        y1:= y1 + 0.25;
        i := i + 1;
        vlbolDesc := false;
    end;

    y := y - 1;

    VPENota.PenSize:=0.03;
    VPENota.Line(x,y+8.1,x+7.7, y+8.1);
    VPENota.SetFont('Courier New',10);
    VPENota.Print(x+1,y+8.3,'ORDEN ' + dbeOrden.Text);
    VPENota.Print(x+0.5,y+9.1,'PRENDAS: ' + dbePrendas.Text);
    VPENota.SetFont('Courier New',8);






//    VPENota.Print(x+4.28,y+8.3 , 'SUBTOTAL $');
//    VPENota.Print(x+6.28,y+8.3,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeSubtotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
//    VPENota.Print(x+4.28,y+8.75, '   DESC. $');
//    VPENota.Print(x+6.28,y+8.75,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeDesc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
//    VPENota.Print(x+4.28,y+9.16, '     IVA $');
//    VPENota.Print(x+6.28,y+9.16,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeIva.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
//    VPENota.Print(x+4.28,y+9.6 , '   TOTAL $');
//    VPENota.Print(x+6.28,y+9.6 ,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeTotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
//    VPENota.Print(x+4.28,y+10.05,'ADELANTO $');
//    VPENota.Print(x+6.28,y+10.05,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeAdelanto.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
//    VPENota.Print(x+4.28,y+10.5, '     CxC $');
//    VPENota.Print(x+6.28,y+10.5,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));


    VPENota.Print(x+4.28,y+8.3 , ' IMPORTE $');
    VPENota.Print(x+6.28,y+8.3,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeSubtotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
    VPENota.Print(x+4.28,y+8.75, '   DESC. $');
    VPENota.Print(x+6.28,y+8.75,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeDesc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
    VPENota.Line(x+4,y+9.1,x+7.7, y+9.1);
    VPENota.Print(x+4.28,y+9.16 , '   TOTAL $');
    VPENota.Print(x+6.28,y+9.16 ,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeTotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
    VPENota.Line(x+4,y+9.55,x+7.7, y+9.55);
    VPENota.Print(x+4.28,y+9.6 , 'SUBTOTAL $');
    VPENota.Print(x+6.28,y+9.6 ,format('%7f',[(StrToFloat( StringReplace(StringReplace(dbeSubtotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))-StrToFloat( StringReplace(StringReplace(dbeDesc.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])))/116*100 ]));
    VPENota.Print(x+4.28,y+10.05, '     IVA $');
    VPENota.Print(x+6.28,y+10.05,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeIva.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
    VPENota.Line(x+4,y+10.4,x+7.7, y+10.4);
    VPENota.Print(x+4.28,y+10.5,'ADELANTO $');
    VPENota.Print(x+6.28,y+10.5,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeAdelanto.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));
    VPENota.Print(x+4.28,y+10.95, '     CxC $');
    VPENota.Print(x+6.28,y+10.95,format('%7f',[StrToFloat( StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))]));

    y := y + 0.45;





    VPENota.SetFont('Courier New',8);


              VPENota.PenSize:=0.05;
              VPENota.Box(x+0.2,y+11.2,x+7.3, y+13.2);



              if StrToFloat( StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) = 0 then begin
                  //VPENota.SetFont('Cascadia Mono',50);
                  VPENota.SetFont('Courier New',50);
                  //VPENota.TextBold := true;
                  VPENota.Print(x+0.6,y+11.2,'PAGADO');
              end;
              //VPENota.SetFont('Cascadia Mono',8);
              VPENota.SetFont('Courier New',8);

              VPENota.Print(x+0.5,y+13.3,'  LA CALIDAD ES NUESTRA RECOMENDACION');

              VPENota.TextBold := false;
              VPENota.SetFont('Bar-Code 39',26);
              VPENota.Print(x+2.2,y+13.7,'*'+dbeOrden.Text+'*');

              VPENota.SetFont('Courier New',8);
              VPENota.TextBold := true;
              VPENota.Print(x+0.5,y+14.9,'        VISITANOS EN EUGENES.MX');

              y := y + 15.5;
              delta := 0.3;
              //VPENota.SetFont('Cascadia Mono',7);
              VPENota.SetFont('Courier New',7);
              //VPENota.Print(x,y,'123456789_123456789_12345654321_987654321_987654321');
              VPENota.Print(x,y,'CONTRATO DE SERVICIOS QUE SE CELEBRA ENTRE EL PRES-'); y := y + delta;
              VPENota.Print(x,y,'TADOR DE SERVICIOS Y EL CONSUMIDOR CUYOS NOMBRES Y '); y := y + delta;
              VPENota.Print(x,y,'DATOS CONSTAN AL  FRENTE DE ESTE  DOCUMENTO COMO PA'); y := y + delta;
              VPENota.Print(x,y,'RTE INTEGRAL DEL MISMO SUJETANDOSE AL TENOR DE LAS-'); y := y + delta;
              VPENota.Print(x,y,'SIGUIENTES CLAUSULAS:                              '); y := y + delta;
              VPENota.Print(x,y,'                   - CLAUSULAS -                   '); y := y + delta;
              //VPENota.TextBold := false;
              VPENota.Print(x,y,'1.-El número de prendas entregadas en el estableci-'); y := y + delta;
              VPENota.Print(x,y,'miento estarán especificadas en el comprobante emi-'); y := y + delta;
              VPENota.Print(x,y,'tido, al igual que la fecha de entrega aceptada por'); y := y + delta;
              VPENota.Print(x,y,'el cliente.                                        '); y := y + delta;
              VPENota.Print(x,y,'2.-Si al momento de recoger la(s) prenda(s), el cli'); y := y + delta;
              VPENota.Print(x,y,'ente no presenta este comprobante, deberá presentar'); y := y + delta;
              VPENota.Print(x,y,'alguna identificación oficial que lo acredite como-'); y := y + delta;
              VPENota.Print(x,y,'propietario.                                           '); y := y + delta;
              VPENota.Print(x,y,'3.-Dispondrá el cliente, de un lapso no mayor a tre'); y := y + delta;
              VPENota.Print(x,y,'s días hábiles para cualquier reclamo, con la prese'); y := y + delta;
              VPENota.Print(x,y,'ntación del comprobante del servicio (este documen-'); y := y + delta;
              VPENota.Print(x,y,'to).                                               '); y := y + delta;
              VPENota.Print(x,y,'4.-El establecimiento no se hace responsable por po'); y := y + delta;
              VPENota.Print(x,y,'sibles objetos y/o valores olvidados en las prendas'); y := y + delta;
              VPENota.Print(x,y,'5.-El establecimiento no se hace responsable por a-'); y := y + delta;
              VPENota.Print(x,y,'quellas prendas que tengan mas de treinta (30) días'); y := y + delta;
              VPENota.Print(x,y,'y que no hayan sido reclamadas por sus propietarios'); y := y + delta;
              VPENota.Print(x,y,'otorgandose de esta forma al establecimiento de ma-'); y := y + delta;
              VPENota.Print(x,y,'nera inmediata la propiedad de la prendas en olvido'); y := y + delta;
              VPENota.Print(x,y,'6.-El establecimiento no se hace responsable del re'); y := y + delta;
              VPENota.Print(x,y,'sultado de la compostura si al momento de la recep-'); y := y + delta;
              VPENota.Print(x,y,'ción no se  realizó el proceso de probarse la pren-'); y := y + delta;
              VPENota.Print(x,y,'da por el propietario.                             '); y := y + delta;
              VPENota.Print(x,y,'7.-En caso de pérdida total o parcial de la prenda,'); y := y + delta;
              VPENota.Print(x,y,'el establecimiento reconocerá al propietario hasta '); y := y + delta;
              VPENota.Print(x,y,'un máximo de 3 veces el costo del servicio pactado '); y := y + delta;
              VPENota.Print(x,y,'por la compostura, o un máximo del 50% del valor de'); y := y + delta;
              VPENota.Print(x,y,'la prenda que las partes de común acuerdo hayan de-'); y := y + delta;
              VPENota.Print(x,y,'clarado o en su defecto, el cliente pueda demostrar'); y := y + delta;
              VPENota.Print(x,y,'fehacientemente.                                   '); y := y + delta;
              VPENota.Print(x,y,'8.-Para dirimir o aclarar cualquier controversia la'); y := y + delta;
              VPENota.Print(x,y,'s partes se someten a la Ley Federal de Protección-'); y := y + delta;
              VPENota.Print(x,y,'al Consumidor.                                         '); y := y + delta;
              //VPENota.TextBold := true;
              VPENota.Print(x,y,'                   -------------                    '); y := y + delta;
              VPENota.Print(x,y,'El consumidor dará por aceptadas estas clausulas, -'); y := y + delta;
              VPENota.Print(x,y,'en el momento en que se reciba el comprobante de ac'); y := y + delta;
              VPENota.Print(x,y,'use de recibo (este documento).');

              VPENota.Preview;

end;
procedure TfrmConsultaOrdenes.btnDevolucionClick(Sender: TObject);
begin


      //comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago],[idFormaPago]) VALUES ('+edOrden.Text+','+FloatToStr( strtofloat(StringReplace(StringReplace(dbeCxC.text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) -  strtofloat(StringReplace(StringReplace(dbeTotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))) +','''+FormatDateTime('yyyy/mm/dd hh:mm:ss',dtpFechaPago.DateTime)+''',0,4,1)';
      //comLiquidacion.Execute;
      comLiquidacion.CommandText:='UPDATE Orden SET [idEstatus]=5 WHERE idOrden='+edOrden.Text;
      comLiquidacion.Execute;
      spOrdenXId.Requery;
      spPagosXOrden.Requery;
      spOrdenXId.Requery;
      btnBuscar.Click;
end;

procedure TfrmConsultaOrdenes.btnPagarClick(Sender: TObject);
begin
  dtpFechaPago.Time := time();

  comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago], [idFormaPago]) VALUES ('+edOrden.Text+','+ StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]) +','''+FormatDateTime('dd/mm/yyyy hh:mm:ss',dtpFechaPago.DateTime)+''',0,3,'+inttostr(dblkcFormaPago.KeyValue)+')';
  comLiquidacion.Execute;
  comLiquidacion.CommandText:='UPDATE Orden SET [dcmAcuenta]='+ StringReplace(StringReplace(dbeTotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])+',[dcmPorPagar]=0,[idEstatus]=2 WHERE idOrden='+edOrden.Text;
  comLiquidacion.Execute;
  btnBuscar.Click;
end;
procedure TfrmConsultaOrdenes.dsOrdenPrendaDataChange(Sender: TObject;
  Field: TField);
begin
    //spOrdenPrendaServicio.Close;
    //spOrdenPrendaServicio.Parameters.ParamByName('@pidOrdenPrenda').Value := dbgPrendas.DataSource.DataSet.FieldByName('idOrden').Value;
    //spOrdenPrendaServicio.Open;
end;
procedure TfrmConsultaOrdenes.edOrdenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
      btnBuscar.Click;
end;
procedure TfrmConsultaOrdenes.btnEntregarClick(Sender: TObject);
begin

      if StrToFloat(StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))>0 then
          btnLiquidar.Click;



      comLiquidacion.CommandText:='UPDATE Orden SET [idEstatus]=3 WHERE idOrden='+dbeOrden.Text;
      comLiquidacion.Execute;
      spOrdenXId.Requery;
{      edPago.Enabled:=false;
      btPago.Enabled:=false;
      btEntregar.Enabled:=false;
      btLiquidacion.Enabled:=false;
      btCancelar.Enabled:=false;
 }
      btnBuscar.Click;
end;
procedure TfrmConsultaOrdenes.btnLiquidarClick(Sender: TObject);
begin
  dtpFechaPago.Time := time();
  comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago],[idFormaPago]) VALUES ('+edOrden.Text+','+dbeCxC.Text+','''+FormatDateTime('dd/mm/yyyy hh:mm:ss',dtpFechaPago.DateTime)+''',0,3,'+inttostr(dblkcFormaPago.KeyValue)+')';
  comLiquidacion.Execute;
  comLiquidacion.CommandText:='UPDATE Orden SET [dcmAcuenta]='+ dbeTotal.Text+',[dcmPorPagar]=0,[idEstatus]=3 WHERE idOrden='+edOrden.Text;
  comLiquidacion.Execute;
  btnBuscar.Click;
end;
procedure TfrmConsultaOrdenes.btnCancelarClick(Sender: TObject);
begin


      //Lama
      Application.CreateForm(TfrmDetalleCancelacion, frmDetalleCancelacion);
      frmDetalleCancelacion.ShowModal;

      //Inserta la cancelación
      comLiquidacion.CommandText:='INSERT INTO Cancelacion (dteFecha,idSucursal,idUsuario,idOrden,dcmTotal,dcmAcuenta,dcmCxC,idMotivo,strJustificacion,idCliente) VALUES ('''+ FormatDateTime('dd/mm/yyyy hh:nn:ss',now()) +''','+dbeIdSucursal.Text+','+dbeIdUsuario.Text+','+dbeOrden.Text+','+StringReplace(StringReplace(dbeTotal.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])+','+StringReplace(StringReplace(dbeAdelanto.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])+','+StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])+','+inttostr(frmDetalleCancelacion.plidMotivo)+','''+UpperCase(frmDetalleCancelacion.plstrMotivo)+''','+dbeIdCliente.Text+')';
      comLiquidacion.Execute;

      //Inserta el impacto en gasto
      comLiquidacion.CommandText:= 'INSERT INTO Gasto (idTipoGasto,idGastoRecurrente,lgGastoRecurrente,dcmImporte,dcmIVA,dcmTotal,strGasto,dteGasto,idEstatusContable,idSucursal) VALUES (9,29,0,'+ dbeAdelanto.Text +',0,'+ dbeAdelanto.Text +',''DEVOLUCION ORDEN '+ dbeOrden.Text+''','''+ FormatDateTime('dd/mm/yyyy hh:nn:ss',now()) +''',0,'+ dbeIdSucursal.Text+')';
      comLiquidacion.Execute;


      //Actualiza la oprden con estatus Cancelado
      comLiquidacion.CommandText:='UPDATE Orden SET [idEstatus]=4, [L_dteUpdate]='''+ FormatDateTime('dd/mm/yyyy hh:nn:ss',now()) +''' WHERE idOrden='+edOrden.Text;
      comLiquidacion.Execute;

      frmDetalleCancelacion.Destroy;

      spOrdenXId.Requery;
      btnBuscar.Click;
end;
procedure TfrmConsultaOrdenes.btnAdelantoClick(Sender: TObject);
begin
  if StrToFloat(StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) - StrToFloat(edImportePago.Text) = 0 then
  begin
      dtpFechaPago.Time := time();
      comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago],[idFormaPago]) VALUES ('+edOrden.Text+','+edImportePago.Text+','''+FormatDateTime('dd/mm/yyyy hh:mm:ss',dtpFechaPago.DateTime)+''',0,3,'+inttostr(dblkcFormaPago.KeyValue)+')';
      comLiquidacion.Execute;
      comLiquidacion.CommandText:='UPDATE Orden SET [dcmPorPagar]='+  FloatToStr(       StrToFloat(StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) - StrToFloat(StringReplace(StringReplace(edImportePago.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))) +',[dcmAcuenta]='+ FloatToStr( StrToFloat(StringReplace(StringReplace(dbeAdelanto.Text,',','',[rfReplaceAll]  ),'$','',[rfReplaceAll])) + StrToFloat(StringReplace(StringReplace(edImportePago.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll]))) +',[idEstatus]=2 WHERE idOrden='+dbeOrden.Text;
      comLiquidacion.Execute;
      spOrdenXId.Requery;
      spPagosXOrden.Requery;
  end
  else
    if StrToFloat(    StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) - StrToFloat(edImportePago.Text) > 0 then
    begin
      dtpFechaPago.Time := time();
      comLiquidacion.CommandText:='INSERT INTO [dbo].[Pago] ([idOrden],[dcmPago],[dtePago],[idEstatusContable],[idTipoPago],[idFormaPago]) VALUES ('+dbeOrden.Text+','+edImportePago.Text+','''+FormatDateTime('dd/mm/yyyy hh:m:ss',dtpFechaPago.DateTime)+''',0,1,'+inttostr(dblkcFormaPago.KeyValue)+')';
      comLiquidacion.Execute;
      comLiquidacion.CommandText:='UPDATE Orden SET [dcmPorPagar]='+  FloatToStr( StrToFloat(        StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])           ) - StrToFloat(edImportePago.Text)) +',[dcmAcuenta]='+ FloatToStr( StrToFloat(          StringReplace(StringReplace(dbeAdelanto.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])               ) + StrToFloat(edImportePago.Text)) +',[idEstatus]=1 WHERE idOrden='+edOrden.Text;
      comLiquidacion.Execute;
      spOrdenXId.Requery;
      spPagosXOrden.Requery;
    end
    else
      if StrToFloat(StringReplace(StringReplace(dbeCxC.Text,',','',[rfReplaceAll]),'$','',[rfReplaceAll])) - StrToFloat(edImportePago.Text) < 0 then
         ShowMessage('Su pago excede su adeudo!');
  btnBuscar.Click;
  edImportePago.Text := '';
end;
procedure TfrmConsultaOrdenes.FormCreate(Sender: TObject);
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
    dtpFechaPago.Date := now;
    spFormaPago.Open;
    dblkcFormaPago.KeyValue := 1;

     if (vgIdTipoUsuario)  = 3 then
      btnDevolucion.Enabled := true
    else
      btnDevolucion.Enabled := false;

    if (vgUltimaOrden <> 0) then begin
      edOrden.Text := inttostr(vgUltimaOrden);
      btnBuscar.Click();
    end
    else begin
      spGetUltimaOrden.Open;
      edOrden.Text := spGetUltimaOrden.FieldByName('idOrden').Value;
      btnBuscar.Click();
    end;





end;
end.
