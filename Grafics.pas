unit Grafics;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,DateUtils,
  VclTee.TeeGDIPlus, Data.DB, Data.Win.ADODB, VCLTee.TeEngine, VCLTee.Series,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Globales, VCLTee.DBChart,
  VCLTee.TeeData, Vcl.DBCtrls;
type

TDobleMatriz = array of array of Double;

  TGraficas = class(TForm)
    spVentasMes: TADOStoredProc;
    spPagosMes: TADOStoredProc;
    conn: TADOConnection;
    Chart2: TChart;
    Series3: TBarSeries;
    spPagosSemana: TADOStoredProc;
    rgVentas: TRadioGroup;
    spVentasSemana: TADOStoredProc;
    spVentasDiarias: TADOStoredProc;
    Chart3: TChart;
    Series6: TBarSeries;
    spVentasMesYear: TADOStoredProc;
    btnConsultar: TButton;
    dtpIni: TDateTimePicker;
    dtpFin: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    spIngresoMes: TADOStoredProc;
    Series4: TBarSeries;
    qParametro: TADOQuery;
    ckbComparado: TCheckBox;
    chrtVentaXMes: TChart;
    ckbVentas: TCheckBox;
    ckbIngresos: TCheckBox;
    ckbGastos: TCheckBox;
    spGastoMes: TADOStoredProc;
    ckbValoresVentas: TCheckBox;
    ckbValoresIngresos: TCheckBox;
    ckbValoresGastos: TCheckBox;
    ckbLineasVentas: TCheckBox;
    ckbLineasIngresos: TCheckBox;
    ckbLineasGastos: TCheckBox;
    Series1: TLineSeries;
    spGastosSemana: TADOStoredProc;
    edMinY: TEdit;
    edMaxY: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    spGetSucursales: TADOStoredProc;
    dsGetSucursales: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    ckbAcumulado: TCheckBox;
    spVentasMesYear2: TADOStoredProc;
    ckbCxC: TCheckBox;
    spGetCxCXMes: TADOStoredProc;
    spGetCxCXSemana: TADOStoredProc;
    ckbValoresCxC: TCheckBox;
    ckbLineasCxC: TCheckBox;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure rgVentasClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure ckbIngresosClick(Sender: TObject);
    procedure ckbGastosClick(Sender: TObject);
    procedure ckbVentasClick(Sender: TObject);
    procedure ckbComparadoClick(Sender: TObject);
    procedure ckbValoresVentasClick(Sender: TObject);
    procedure ckbValoresIngresosClick(Sender: TObject);
    procedure ckbValoresGastosClick(Sender: TObject);
    procedure ckbLineasVentasClick(Sender: TObject);
    procedure ckbLineasIngresosClick(Sender: TObject);
    procedure ckbLineasGastosClick(Sender: TObject);
    procedure dsGetSucursalesDataChange(Sender: TObject; Field: TField);
    procedure edMaxYKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ckbCxCClick(Sender: TObject);
    procedure ckbValoresCxCClick(Sender: TObject);
    procedure ckbLineasCxCClick(Sender: TObject);
    procedure ckbAcumuladoClick(Sender: TObject);
    procedure SpinEdit1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Graficas: TGraficas;
  vldteHoy: TDate;
  vlintMes: integer;
  vlintAlcance: integer;
  vlInicioOper: integer;
  i: integer;
  colores: Array[0..7] of TColor;
  meses: Array[0..11] of string;
  mes_semana: Array[0..52] of string;
implementation
{$R *.dfm}


//******************************************

procedure EjecutarSP(var sp: TADOStoredProc; dtpIni, dtpFin: TDateTime; alcance: Integer);
begin
  sp.Close;
  sp.Parameters.ParamByName('@pdteIni').Value := dtpIni;
  sp.Parameters.ParamByName('@pdteFin').Value := dtpFin;
  sp.Parameters.ParamByName('@pintalcance').Value := alcance;
  sp.Open;
end;

procedure CargarDatos(var datos: TDobleMatriz; sp: TADOStoredProc; colAnio, colPeriodo, colTotal: String; maxPeriodo: Integer);
var
  i, yearSwap, yearIndex: Integer;
begin
  SetLength(datos, 0, 0);
  SetLength(datos, YearOf(Graficas.dtpFin.Date) - YearOf(Graficas.dtpIni.Date) + 1, maxPeriodo);
  i := 0;
  yearSwap := 0;
  yearIndex := 0;
  while not sp.Eof do
  begin
    if (yearSwap <> 0) and (yearSwap <> sp.FieldByName(colAnio).AsInteger) then
      Inc(yearIndex);
    datos[yearIndex][sp.FieldByName(colPeriodo).AsInteger - 1] := sp.FieldByName(colTotal).AsFloat;
    yearSwap := sp.FieldByName(colAnio).AsInteger;
    sp.Next;
  end;
end;





procedure ProcesarAcumulado(spMes, spSemana: TADOStoredProc; titulo: String; checkValores, checkLineas: TCheckBox;chartM, chartS: TChart);
var
  vlintsuc: Integer;
  datos: TDobleMatriz;
  ban, banI, j, k, yearswap,a,m: Integer;
begin

    for vlintsuc := 1  to 3 do begin


           //VENTAS X MES
    			EjecutarSP(spMes, Graficas.dtpIni.Date, Graficas.dtpFin.Date, vlintAlcance);

          SetLength(datos,0,0);
          SetLength(datos,yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1,12);
          ban := 0;
          k := 0;
          yearswap := 0;
          while not spMes.Eof do begin
              a :=yearof(Graficas.dtpIni.Date);
              if ban = 0 then begin
                for m := 0 to yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1 do begin
                  if  a = spMes.FieldByName('Año').value then
                     k := m;
                  a := a + 1;
                end;
                ban := 1;
              end;
              if yearswap  <> 0 then begin
                 if yearswap <> spMes.FieldByName('Año').value then
                    k := k + 1;
              end;
              datos[k][strtoint(spMes.FieldByName('intMes').value)-1] := spMes.FieldByName('Total').value;
              yearswap := spMes.FieldByName('Año').value;
              spMes.Next;
          end;

          if checkLineas.Checked then begin
              chartM.AddSeries(TLineSeries.Create( chartM ));
              chartM.Series[i].Pen.Width := 3;
          end
          else
              chartM.AddSeries(TBarSeries.Create( chartM ));

          chartM.Series[i].Title := titulo;
          chartM.Series[i].Color := colores[vlintsuc-1];
          chartM.Series[i].Marks.Style := TSeriesMarksStyle.smsValue;

          if checkValores.Checked then
              chartM.Series[i].Marks.Visible := true
          else
              chartM.Series[i].Marks.Visible := false;

          banI := 0;
          for k := 0 to High(datos) do begin
              for j := 0 to 11 do begin
                  if (monthof(Graficas.dtpIni.Date)-1 = j) and (banI = 0) then begin
                      chartM.Series[i].AddY(datos[k][j], meses[j], colores[vlintsuc-1]);
                      banI := 1;
                  end
                  else if banI = 1 then
                      chartM.Series[i].AddY(datos[k][j], meses[j], colores[vlintsuc-1]);

                  if (High(datos) = k) and (monthof(Graficas.dtpFin.date)-1 = j) then begin
                      break;
                  end;
              end;
          end;

          i := i + 1;
          //FIN VENTAS X MES

    end;

end;


procedure ProcesarComparacion(spMes, spSemana: TADOStoredProc; titulo: String; checkValores, checkLineas: TCheckBox;chartM, chartS: TChart);
var
  datos: TDobleMatriz;
  i, j, yearSwap, yearIndex, a, b: Integer;
begin
      //COMPARADOS X MES
  		EjecutarSP(spMes, Graficas.dtpIni.Date, Graficas.dtpFin.Date, vlintAlcance);
      SetLength(datos,0,0);
      SetLength(datos,yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1,12);

      i := 0;
      yearswap := 0;
      while not spMes.Eof do begin
        if yearswap  <> 0 then begin
         if yearswap <> spMes.FieldByName('Año').value then
          i := i + 1;
        end;
        datos[i][strtoint(spMes.FieldByName('intMes').value)-1] := spMes.FieldByName('Total').value;
        yearswap := spMes.FieldByName('Año').value;
        spMes.Next;
      end;

      a := chartM.SeriesCount;
      for i := a downto 1 do
        chartM.SeriesList[i-1].free;

      for i := 0 to High(datos) do begin
        if checkLineas.Checked then begin
          chartM.AddSeries(TLineSeries.Create( chartM ));
          chartM.Series[i].Pen.Width := 3;
        end
        else
          chartM.AddSeries(TBarSeries.Create( chartM ));

        chartM.Series[i].Title := inttostr(yearof(Graficas.dtpIni.Date)+i);
        chartM.Series[i].Color := colores[i];

        for j := 0 to 11 do begin
            chartM.Series[i].Marks.Style := TSeriesMarksStyle.smsValue;


            if checkValores.Checked then
              chartM.Series[i].Marks.Visible := true
            else
              chartM.Series[i].Marks.Visible := false;

            chartM.Series[i].AddY(datos[i][j], meses[j], colores[i]);
        end;
      end;
      //FIN COMPARADOS X MES
      //COMPARADO X SEMANA

  		EjecutarSP(spSemana, Graficas.dtpIni.Date, Graficas.dtpFin.Date, vlintAlcance);

      SetLength(datos,0,0);
      SetLength(datos,yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1,53);

      i := 0;
      yearswap := 0;
      while not spSemana.Eof do begin
        if yearswap  <> 0 then begin
         if yearswap <> spSemana.FieldByName('Año').value then
          i := i + 1;
        end;
        datos[i][strtoint(spSemana.FieldByName('Semana').value)-1] := spSemana.FieldByName('Total').value;
        mes_semana[strtoint(spSemana.FieldByName('Semana').value)-1] := meses[strtoint(spSemana.FieldByName('intMes').value)-1];

        yearswap := spSemana.FieldByName('Año').value;
        spSemana.Next;
      end;

      a := chartS.SeriesCount;
      for i := a downto 1 do
        chartS.SeriesList[i-1].free;

      for i := 0 to High(datos) do begin
        if checkLineas.Checked then begin
          chartS.AddSeries(TLineSeries.Create( chartS ));
          chartS.Series[i].Pen.Width := 3;
        end
        else
          chartS.AddSeries(TBarSeries.Create( chartS ));

        chartS.Series[i].Title := inttostr(yearof(Graficas.dtpIni.Date)+i);
        chartS.Series[i].Color := colores[i];
        for j := 0 to 52 do begin
            chartS.Series[i].Marks.Style := TSeriesMarksStyle.smsValue;
            chartS.Series[i].AddY(datos[i][j], mes_semana[j]+' - '+(j+1).ToString , colores[i]);
            if checkValores.Checked then
              chartS.Series[i].Marks.Visible := true
            else
              chartS.Series[i].Marks.Visible := false;
        end;
      end;
      //FIN COMPARADO X SEMANA

end;


procedure ProcesarLineal(spMes, spSemana: TADOStoredProc; titulo: String; checkValores, checkLineas: TCheckBox;chartM, chartS: TChart);
var
  datos: TDobleMatriz;
  ban, k, yearswap, a, m, BanI, j: Integer;
begin



  		EjecutarSP(spMes, Graficas.dtpIni.Date, Graficas.dtpFin.Date, vlintAlcance);

      SetLength(datos,0,0);
      SetLength(datos,yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1,12);
      ban := 0;
      k := 0;
      yearswap := 0;

      while not spMEs.Eof do begin
        a :=yearof(Graficas.dtpIni.Date);
        if ban = 0 then begin
        for m := 0 to yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1 do begin
          if  a = spMes.FieldByName('Año').value then
           k := m;
          a := a + 1;
        end;
        ban := 1;
        end;
        if yearswap  <> 0 then begin
         if yearswap <> spMEs.FieldByName('Año').value then
          k := k + 1;
        end;
        datos[k][strtoint(spMes.FieldByName('intMes').value)-1] := spMes.FieldByName('Total').value;
        yearswap := spMes.FieldByName('Año').value;
        spMes.Next;
      end;

      if checkLineas.Checked then begin
        chartM.AddSeries(TLineSeries.Create( chartM ));
        chartM.Series[i].Pen.Width := 3;
      end
      else
        chartM.AddSeries(TBarSeries.Create( chartM ));

      chartM.Series[i].Title := titulo;
      chartM.Series[i].Color := colores[i];
      chartM.Series[i].Marks.Style := TSeriesMarksStyle.smsValue;

      if checkValores.Checked then
        chartM.Series[i].Marks.Visible := true
      else
        chartM.Series[i].Marks.Visible := false;

      banI := 0;
      for k := 0 to High(datos) do begin
        for j := 0 to 11 do begin
          if (monthof(Graficas.dtpIni.Date)-1 = j) and (banI = 0) then begin
            chartM.Series[i].AddY(datos[k][j], meses[j], colores[i]);
            banI := 1;
          end
          else if banI = 1 then
            chartM.Series[i].AddY(datos[k][j], meses[j], colores[i]);

          if (High(datos) = k) and (monthof(Graficas.dtpFin.Date)-1 = j) then begin
            break;
          end;
        end;
      end;
      //FIN VENTAS X MES LINEAL
      //VENTAS X SEMANA LINEAL


  		EjecutarSP(spSemana, Graficas.dtpIni.Date, Graficas.dtpFin.Date, vlintAlcance);


      SetLength(datos,0,0);
      SetLength(datos,yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1,52);
      ban := 0;
      k := 0;
      yearswap := 0;
      while not spSemana.Eof do begin
        a :=yearof(Graficas.dtpIni.Date);
        if ban = 0 then begin
        for m := 0 to yearof(Graficas.dtpFin.Date)-yearof(Graficas.dtpIni.Date)+1 do begin
          if  a = spSemana.FieldByName('Año').value then
           k := m;
          a := a + 1;
        end;
        ban := 1;
        end;
        if yearswap  <> 0 then begin
         if yearswap <> spSemana.FieldByName('Año').value then
          k := k + 1;
        end;
        datos[k][strtoint(spSemana.FieldByName('Semana').value)-1] := spSemana.FieldByName('Total').value;

        yearswap := spSemana.FieldByName('Año').value;
        spSemana.Next;
      end;

      if checkLineas.Checked then begin
        ChartS.AddSeries(TLineSeries.Create( ChartS ));
        ChartS.Series[i].Pen.Width := 3;
      end
      else
        ChartS.AddSeries(TBarSeries.Create( ChartS ));

      ChartS.Series[i].Title := titulo;
      ChartS.Series[i].Color := colores[i];
      ChartS.Series[i].Marks.Style := TSeriesMarksStyle.smsValue;

      if checkValores.Checked then
        ChartS.Series[i].Marks.Visible := true
      else
        ChartS.Series[i].Marks.Visible := false;

      banI := 0;
      for k := 0 to High(datos) do begin
        for j := 0 to 52 do begin
          a := weekof(Graficas.dtpIni.Date);
          if (a = 53) or (a = 52) then a:=0;

          if ( a = j) and (banI = 0) then begin
            ChartS.Series[i].AddY(datos[k][j], (j+1).ToString, colores[i]);
            banI := 1;
          end
          else if banI = 1 then
            //chart2.Series[i].AddY(datos[k][j], mes_semana[j]+' - '+(j+1).ToString, colores[0]);
            ChartS.Series[i].AddY(datos[k][j], (j+1).ToString, colores[i]);

          if (High(datos) = k) and (weekof(Graficas.dtpFin.date) = j) then begin
            break;
          end;
        end;
      end;
      //FIN VENTAS X SEMANA LINEAL
      //i := i + 1;







end;

//******************************************

procedure TGraficas.btnConsultarClick(Sender: TObject);
var a,b: integer;
  k,m,ban, banI,p,q: Integer;
  datos: Array of Array of long;
  j,yearswap: Integer;
  vlintsuc: Integer;
begin

      meses[0] := 'ENE'; meses[1] := 'FEB'; meses[2] := 'MAR'; meses[3] := 'ABR'; meses[4] := 'MAY'; meses[5] := 'JUN';
      meses[6] := 'JUL'; meses[7] := 'AGO'; meses[8] := 'SEP'; meses[9] := 'OCT'; meses[10] := 'NOV'; meses[11] := 'DIC';

      colores[0] := clBlue;
      colores[1] := clRed;
      colores[2] := clGreen;
      colores[3] := clSkyBlue;
      colores[4] := clBlack;
      colores[5] := clFuchsia;
      colores[6] := clPurple;
      colores[7] := clYellow;

      //chrtVentaXMes.AllowPanning := pmHorizontal;
      chrtVentaXMes.Axes.Left.Automatic := False;
      chrtVentaXMes.Axes.Left.Automatic := False;
      chrtVentaXMes.Axes.Left.Minimum := strtofloat(edMinY.Text);
      chrtVentaXMes.Axes.Left.Maximum := strtofloat(edMaxY.Text);

      //chart2.AllowPanning := pmHorizontal;
      chart2.Axes.Left.Automatic := False;
      chart2.Axes.Left.Automatic := False;
      chart2.Axes.Left.Minimum := strtofloat(edMinY.Text);
      chart2.Axes.Left.Maximum := strtofloat(edMaxY.Text);

      //chart3.AllowPanning := pmHorizontal;
      chart3.Axes.Left.Automatic := False;
      chart3.Axes.Left.Automatic := False;
      chart3.Axes.Left.Minimum := strtofloat(edMinY.Text);
      chart3.Axes.Left.Maximum := strtofloat(edMaxY.Text);

      if ckbAcumulado.Checked then begin
                     //CALCULO COMPARADO AÑOS
                  if ckbComparado.Checked then begin
                      if ckbVentas.Checked  then
                      			ProcesarComparacion(spVentasMesYear, spventasSemana, 'VENTAS', ckbValoresVentas, ckbLineasVentas,chrtVentaXMes,Chart2)
                      else if ckbIngresos.Checked then
                      			ProcesarComparacion(spIngresoMes, spPagosSemana, 'INGRESOS', ckbValoresIngresos, ckbLineasIngresos,chrtVentaXMes,Chart2)
                      else if ckbGastos.Checked then
                      			ProcesarComparacion(spGastoMes, spGastosSemana, 'GASTOS', ckbValoresGastos, ckbLineasGastos,chrtVentaXMes,Chart2)
                      else if ckbCxC.Checked  then
                      			ProcesarComparacion(spGetCxCXMes, spGetCxCXSemana, 'CXC', ckbValoresCxC, ckbLineasCxC,chrtVentaXMes,Chart2)
                  end
                       //CALCULO LINEAL
                  else begin
                      a := chrtVentaXMes.SeriesCount;
                      for i := a downto 1 do
                          chrtVentaXMes.SeriesList[i-1].free;

                      a := Chart2.SeriesCount;
                      for i := a downto 1 do
                          Chart2.SeriesList[i-1].free;

                      a := Chart3.SeriesCount;
                      for i := a downto 1 do
                          Chart3.SeriesList[i-1].free;

                      i := 0;

                      if ckbVentas.Checked then begin
                           ProcesarLineal(spVentasMesYear, 		spventasSemana, 'VENTAS', 	ckbValoresVentas, ckbLineasVentas,chrtVentaXMes,Chart2);
                           i := i + 1;
                      end;
                      if ckbIngresos.Checked then begin
                          ProcesarLineal(spIngresoMes, 				spPagosSemana, 'INGRESOS', 	ckbValoresIngresos, ckbLineasIngresos,chrtVentaXMes,Chart2);
                          i := i + 1;
                      end;
                      if ckbGastos.Checked then begin
                          ProcesarLineal(spGastoMes, 					spGastosSemana, 'GASTOS', 	ckbValoresGastos, ckbLineasGastos,chrtVentaXMes,Chart2);
                          i := i + 1;
                      end;
                      if ckbCxC.Checked then begin
                          ProcesarLineal(spGetCxCXMes, 				spGetCxCXSemana, 'CXC', 		ckbValoresCxC, ckbLineasCxC,chrtVentaXMes,Chart2);
                          i := i + 1;
                      end;


                  end;
      end
      else begin
            //CALCULO POR SERIES SEPARADAS
            if ckbComparado.Checked then begin
                if ckbVentas.Checked then begin

                end
                else if ckbIngresos.Checked then begin

                end
                else if ckbGastos.Checked then begin

                end;
            end
            else begin

                      a := chrtVentaXMes.SeriesCount;
                      for i := a downto 1 do
                          chrtVentaXMes.SeriesList[i-1].free;

                      a := Chart2.SeriesCount;
                      for i := a downto 1 do
                          Chart2.SeriesList[i-1].free;

                      a := Chart3.SeriesCount;
                      for i := a downto 1 do
                          Chart3.SeriesList[i-1].free;

                      i := 0;

                      if ckbVentas.Checked then begin
                            ProcesarAcumulado(spVentasMesYear,spGetCxCXSemana, 'VENTAS', 			ckbValoresVentas, 	ckbLineasVentas, 		chrtVentaXMes,Chart2);
                            i := i + 1;
                      end
                      else if ckbIngresos.Checked then begin
                            ProcesarAcumulado(spVentasMesYear,spGetCxCXSemana, 'INGRESOS', 		ckbValoresIngresos, ckbLineasIngresos,	chrtVentaXMes,Chart2);
                            i := i + 1;
                      end
                      else if ckbGastos.Checked then begin
                            ProcesarAcumulado(spVentasMesYear,spGetCxCXSemana, 'GASTOS', 			ckbValoresGastos, 	ckbLineasGastos,		chrtVentaXMes,Chart2);
                            i := i + 1;
                      end
                      else if ckbCxC.Checked then begin
                            ProcesarAcumulado(spVentasMesYear,spGetCxCXSemana, 'CXC', 				ckbValoresCxc, 			ckbLineasCxC,				chrtVentaXMes,Chart2);
                            i := i + 1;
                      end;


                if ckbVentas.Checked then begin

                    for vlintsuc := 1  to 3 do begin


                           //VENTAS X MES LINEAL
                          spVentasMesYear.Close;
                          spVentasMesYear.Parameters.ParamByName('@pdteIni').Value := dtpIni.Date;
                          spVentasMesYear.Parameters.ParamByName('@pdteFin').Value := dtpFin.Date;
                          spVentasMesYear.Parameters.ParamByName('@pintalcance').Value := vlintsuc;
                          spVentasMesYear.Open;

                          SetLength(datos,0,0);
                          SetLength(datos,yearof(dtpFin.Date)-yearof(dtpIni.Date)+1,12);
                          ban := 0;
                          k := 0;
                          yearswap := 0;
                          while not spVentasMesYear.Eof do begin
                              a :=yearof(dtpIni.Date);
                              if ban = 0 then begin
                                for m := 0 to yearof(dtpFin.Date)-yearof(dtpIni.Date)+1 do begin
                                  if  a = spVentasMesYear.FieldByName('Año').value then
                                     k := m;
                                  a := a + 1;
                                end;
                                ban := 1;
                              end;
                              if yearswap  <> 0 then begin
                                 if yearswap <> spVentasMesYear.FieldByName('Año').value then
                                    k := k + 1;
                              end;
                              datos[k][strtoint(spVentasMesYear.FieldByName('intMes').value)-1] := spVentasMesYear.FieldByName('Total').value;
                              yearswap := spVentasMesYear.FieldByName('Año').value;
                              spVentasMesYear.Next;
                          end;

                          if ckbLineasVentas.Checked then begin
                              chrtVentaXMes.AddSeries(TLineSeries.Create( Self ));
                              chrtVentaXMes.Series[i].Pen.Width := 3;
                          end
                          else
                              chrtVentaXMes.AddSeries(TBarSeries.Create( Self ));

                          chrtVentaXMes.Series[i].Title := 'VENTAS E'+inttostr(vlintsuc);
                          chrtVentaXMes.Series[i].Color := colores[vlintsuc-1];
                          chrtVentaXMes.Series[i].Marks.Style := TSeriesMarksStyle.smsValue;
                          if ckbValoresVentas.Checked then
                              chrtVentaXMes.Series[i].Marks.Visible := true
                          else
                              chrtVentaXMes.Series[i].Marks.Visible := false;

                          banI := 0;
                          for k := 0 to High(datos) do begin
                              for j := 0 to 11 do begin
                                  if (monthof(dtpIni.Date)-1 = j) and (banI = 0) then begin
                                      chrtVentaXMes.Series[i].AddY(datos[k][j], meses[j], colores[vlintsuc-1]);
                                      banI := 1;
                                  end
                                  else if banI = 1 then
                                      chrtVentaXMes.Series[i].AddY(datos[k][j], meses[j], colores[vlintsuc-1]);

                                  if (High(datos) = k) and (monthof(dtpFin.date)-1 = j) then begin
                                      break;
                                  end;
                              end;
                          end;

                          i := i + 1;
                          //FIN VENTAS X MES LINEAL




                   end;



                end
                else if ckbIngresos.Checked then begin

                end
                else if ckbGastos.Checked then begin

                end;

            end;
      end;

      spVentasDiarias.Close;
      spVentasDiarias.Parameters.ParamByName('@pintYear').Value := yearof(now);
      spVentasDiarias.Parameters.ParamByName('@pintAlcance').Value := vlintAlcance;
      spVentasDiarias.Parameters.ParamByName('@pdteIni').Value := dtpIni.Date;
      spVentasDiarias.Parameters.ParamByName('@pdteFin').Value := dtpFin.Date;
      spVentasDiarias.Open;

      if ckbLineasVentas.Checked then begin
          chart3.AddSeries(TLineSeries.Create( Self ));
          chart3.Series[0].Pen.Width := 3;
      end
      else
          chart3.AddSeries(TBarSeries.Create( Self ));

      chart3.Series[0].Title := 'VENTAS DIARIAS';
      chart3.Series[0].Color := colores[2];
      chart3.Series[0].Marks.Style := TSeriesMarksStyle.smsValue;

      if ckbValoresVentas.Checked then
          chart3.Series[0].Marks.Visible := true
      else
          chart3.Series[0].Marks.Visible := false;

      while not spVentasDiarias.Eof do begin
          chart3.Series[0].AddY(strtofloat(StringReplace(StringReplace(spVentasDiarias.FieldByName('Total').value,',','',[rfReplaceAll]),'$','',[rfReplaceAll])), spVentasDiarias.FieldByName('Fecha').value ,clBlue);
          spVentasDiarias.Next
      end;






end;


procedure TGraficas.ckbAcumuladoClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbComparadoClick(Sender: TObject);
begin
    if ckbComparado.Checked then begin
      if (ckbVentas.Checked and ckbIngresos.Checked) or (ckbVentas.Checked and ckbGastos.Checked) or (ckbIngresos.Checked and ckbGastos.Checked)then begin
            ShowMessage('No esta permitido seleccionar mas de una serie');
            ckbComparado.Checked := false;
      end
      else
         btnConsultar.Click;
    end
    else begin
        btnConsultar.Click;
    end;
end;





procedure TGraficas.dsGetSucursalesDataChange(Sender: TObject; Field: TField);
begin
    if DBLookupComboBox1.KeyValue <> null then begin
        vlintAlcance := DBLookupComboBox1.KeyValue;
        btnConsultar.Click;
    end
    else begin
        vlintAlcance := 0;
        DBLookupComboBox1.KeyValue := 0;
        btnConsultar.Click;
    end;

end;

procedure TGraficas.edMaxYKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if key = 13 then
      btnConsultar.Click;
end;

procedure TGraficas.FormCreate(Sender: TObject);
var
i : integer;
begin

    dtpIni.Date := strtodate(concat('01','/',inttostr(monthof(now)+1),'/',inttostr(yearof(now)-1)));
    dtpFin.Date := now();
    edMaxY.Text := inttostr(vgYTotales);

    //Asigna cadena de Conexion del archivo de configuracion conexion.cfg (ver Login.pas)
    if vgIesPROD = 1 then
      Conn.ConnectionString := vgCadenaConexion
    else
      Conn.ConnectionString := vgCadenaConexionDes;

  try
    Conn.Open;
  except
    On E: Exception do
    begin
        ShowMessage('VERIFICA EL ACCESO A INTERNET - Ocurrio un error de conexión - Grafics');
    end;
  end;
    btnConsultar.Click;

    spGetSucursales.Close;
    spGetSucursales.Open;

    if vgIdTipoUsuario <> 3 then begin
        DBLookupComboBox1.KeyValue := vgintSucursal;
        DBLookupComboBox1.Enabled := false;
        vlintAlcance := vgintSucursal;
    end;


end;

procedure TGraficas.rgVentasClick(Sender: TObject);
begin
  if rgVentas.ItemIndex = 0 then begin
      chrtVentaXMes.Visible := true;
      Chart2.Visible := false;
      Chart3.Visible := false;
      ckbComparado.Enabled := true;
      ckbIngresos.Enabled := true;
      ckbGastos.Enabled := true;
      ckbValoresIngresos.Enabled := true;
      ckbLineasIngresos.Enabled := true;
      ckbValoresGastos.Enabled := true;
      ckbLineasGastos.Enabled := true;
  end
  else if rgVentas.ItemIndex = 1 then begin
            chrtVentaXMes.Visible := false;
            Chart2.Visible := true;
            Chart3.Visible := false;
            ckbComparado.Enabled := true;
            ckbIngresos.Enabled := true;
            ckbGastos.Enabled := true;
            ckbValoresIngresos.Enabled := true;
            ckbLineasIngresos.Enabled := true;
            ckbValoresGastos.Enabled := true;
            ckbLineasGastos.Enabled := true;
       end
        else if rgVentas.ItemIndex = 2 then begin
                  chrtVentaXMes.Visible := false;
                  Chart2.Visible := false;
                  Chart3.Visible := true;
                  ckbComparado.Enabled := false;
                  ckbIngresos.Enabled := false;
                  ckbGastos.Enabled := false;
                  ckbValoresIngresos.Enabled := false;
                  ckbLineasIngresos.Enabled := false;
                  ckbValoresGastos.Enabled := false;
                  ckbLineasGastos.Enabled := false;
                  ckbVentas.Checked := true;
                  ckbComparado.Checked := false;
                  ckbIngresos.Checked := false;
                  ckbGastos.Checked := false;
                  ckbValoresIngresos.Checked := false;
                  ckbLineasIngresos.Checked := false;
                  ckbValoresGastos.Checked := false;
                  ckbLineasGastos.Checked := false;
             end;
end;

procedure TGraficas.SpinEdit1Click(Sender: TObject);
begin
		btnConsultar.Click;
    //chrtVentaXMes.Axes.Left.Maximum := strtofloat(SpinEdit1.Text);
end;

//Manda todo a btnConsultar.Click;
procedure TGraficas.ckbLineasVentasClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbLineasIngresosClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbLineasCxCClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbLineasGastosClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbValoresCxCClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbValoresGastosClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbValoresIngresosClick(Sender: TObject);
begin
    btnConsultar.Click;
end;

procedure TGraficas.ckbValoresVentasClick(Sender: TObject);
begin
    btnConsultar.Click;
end;



//Los siguientes procedimientos activan/desactivan los checkboxes y manda a consultar
procedure TGraficas.ckbVentasClick(Sender: TObject);
begin
    if ckbComparado.Checked then begin
       if ckbVentas.Checked then begin
       		ckbIngresos.Checked := false;
          ckbGastos.Checked := false;
          ckbCxC.Checked := false;
       end
       else begin
           ckbValoresVentas.Checked := false;
           ckbLineasVentas.Checked  := false;
       end;
    end
    else if not ckbVentas.Checked then begin
       ckbValoresVentas.Checked := false;
       ckbLineasVentas.Checked  := false;
    end;
    btnConsultar.Click;
end;

procedure TGraficas.ckbIngresosClick(Sender: TObject);
begin
    if ckbComparado.Checked then begin
       if ckbIngresos.Checked then begin
       		ckbVentas.Checked := false;
          ckbGastos.Checked := false;
          ckbCxC.Checked := false;
       end
       else begin
           ckbValoresIngresos.Checked := false;
           ckbLineasIngresos.Checked  := false;
       end;
    end
    else if not ckbIngresos.Checked then begin
       ckbValoresIngresos.Checked := false;
       ckbLineasIngresos.Checked  := false;
    end;

    btnConsultar.Click;
end;

procedure TGraficas.ckbGastosClick(Sender: TObject);
begin
    if ckbComparado.Checked then begin
       if ckbGastos.Checked then begin
       		ckbVentas.Checked := false;
          ckbIngresos.Checked := false;
          ckbCxC.Checked := false;
       end
       else begin
           ckbValoresGastos.Checked := false;
           ckbLineasGastos.Checked  := false;
       end
    end
    else if not ckbGastos.Checked then begin
       ckbValoresGastos.Checked := false;
       ckbLineasGastos.Checked  := false;
    end;

    btnConsultar.Click;
end;

procedure TGraficas.ckbCxCClick(Sender: TObject);
begin
    if ckbComparado.Checked then begin
       if ckbCxC.Checked then begin
       		ckbVentas.Checked := false;
          ckbIngresos.Checked := false;
          ckbGastos.Checked := false;
       end
       else begin
           ckbValoresCxC.Checked := false;
           ckbLineasCxC.Checked  := false;
       end
    end
    else if not ckbCxC.Checked then begin
       ckbValoresCxC.Checked := false;
       ckbLineasCxC.Checked  := false;
    end;


    btnConsultar.Click;
end;




end.
