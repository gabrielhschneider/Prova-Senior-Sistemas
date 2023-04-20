unit uMaquina;

interface

uses
  uIMaquina, uTroco,  Classes, System.Generics.Collections, System.SysUtils,
  vcl.Dialogs,  System.TypInfo;

type

  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(aTroco: Double): TList<String>;
  end;

implementation

function TMaquina.MontarTroco(aTroco: Double): TList<String>;
var
  aValorCedula : Double;
  aQuantidade  : Integer;
  aListaDeNotas: TList<String>;
  aStrTroco    : TTroco;
  aCedula      : TCedula;
begin
  aListaDeNotas := TList<String>.Create;

  {Percorre a lista de cedulas}
  for aCedula := Low(TCedula) to High(TCedula) do
  begin
    {Armazena o valor da cedula}
    aValorCedula := CValorCedula[aCedula];

    if aTroco >= aValorCedula then
    begin
      {Armazena quantidade de cedulas usadas}
      aQuantidade := Trunc(aTroco / aValorCedula);

      if aQuantidade > 0 then
      begin
        aStrTroco := TTroco.Create(aCedula, aQuantidade);

        {Verifica se e moeda ou nota}
        if aTroco >= 2 then
        begin
          aListaDeNotas.Add(aQuantidade.ToString + ' nota(s)  de R$: ' +
          aValorCedula.ToString + ' - ' + aStrTroco.ToString);
        end

        else
        begin
          {Ajusta as casas decimais no caso da moeda}
          aListaDeNotas.Add(aQuantidade.ToString + ' moeda(s) de R$: ' +
          FormatFloat('#,##0.00',aValorCedula) + ' - ' + aStrTroco.ToString);
        end;

        {Atualiza o valor do troco}
        aTroco := aTroco - (aQuantidade * aValorCedula);
      end;
    end;
  end;
  Result := aListaDeNotas;

end;

end.

