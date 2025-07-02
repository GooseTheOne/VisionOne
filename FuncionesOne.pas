unit FuncionesOne;

interface

uses
  System.SysUtils, System.Variants, System.Classes;


implementation

function LimpiaCadena(pinStrCadena:string; pinIntTipo:Integer):string;
var
    i: integer;
    strResultado: string;
begin
    if pinIntTipo = 1 then begin
        for i := 0 to Length(pinStrCadena) do begin
            if pinStrCadena[i] <> ',' then
                strResultado[i] := pinStrCadena[i];
        end;
        result := strResultado;


    end;
end;

end.
