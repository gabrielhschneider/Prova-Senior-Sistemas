program QS7;

{$APPTYPE CONSOLE}

uses
  vcl.Dialogs, Classes, System.Generics.Collections, SysUtils,
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas';

{$R *.RES}

var
  aMaquina : IMaquina;
  aTroco : Double;
  aListaTroco : TList<String>;
  i : Integer;
begin
  aListaTroco := TList<String>.Create;
  writeln('Entre com o valor do troco (Ex 124.56): ');
  readln(aTroco);

  aMaquina := TMaquina.Create;
  aListaTroco := aMaquina.MontarTroco(aTroco);

  for i := 0 to aListaTroco.Count - 1 do
  begin
    writeln(aListaTroco[i]);
  end;

  WriteLn('Pressione Enter para fechar a aplicacao.');
  ReadLn;
end.

