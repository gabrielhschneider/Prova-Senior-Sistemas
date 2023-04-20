unit uSubstitui;

interface

uses
  uISubstitui;

type

  TSubstitui = class(TInterfacedObject, ISubstitui)
  public
    function Substituir(aStr, aVelho, aNovo: String): String;
  end;

implementation

function TSubstitui.Substituir(aStr, aVelho, aNovo: String): String;
var
  aLengthString, aLengthVelho, aLengthNovo: Integer;
  i, j, k   : Integer;
  aEncontrou: Boolean;
  aRetorno  : String;
begin
  aLengthString := Length(aStr);
  aLengthVelho  := Length(aVelho);
  aLengthNovo   := Length(aNovo);
  aRetorno      := '';
  i             := 1;

  {Percorre a string procurando a palavra a ser substituida}
  while i <= aLengthString do
  begin
    aEncontrou := True;
    for j := 1 to aLengthVelho do
    begin
      if (i + j - 1 > aLengthString) or (aStr[i + j - 1] <> aVelho[j]) then
      begin
        aEncontrou := False;
        Break
      end;
    end;

    {Adiciona a nova palavra caracter por caracter}
    if aEncontrou then
    begin
      for k := 1 to aLengthNovo do
        aRetorno := aRetorno + aNovo[k];

      i := i + aLengthVelho;
    end

    {Continua acrescentando os caracteres que nao serao alterados}
    else
    begin
      aRetorno := aRetorno + aStr[i];
      Inc(i);
    end;
  end;
  Result := aRetorno;
end;
  
end.

