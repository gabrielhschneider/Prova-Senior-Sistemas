program QS6;

{$APPTYPE CONSOLE}

uses
  SysUtils, VCL.Dialogs,
  uISubstitui in 'uISubstitui.pas',
  uSubstitui in 'uSubstitui.pas';

{$R *.RES}

var
  aSubstitui : ISubstitui;
  aStr, aNovo, aVelho : String;
begin
  writeln('Entre com a String: ');
  readln(aStr);

  writeln('Entre com a palavra que deseja ser substituida: ');
  readln(aVelho);

  writeln('Entre com a palavra que ira substituir: ');
  readln(aNovo);

  aSubstitui := TSubstitui.Create;
  writeln('A Nova String é: ' + aSubstitui.Substituir(aStr, aVelho, aNovo));

  writeLn('Pressione Enter para fechar a aplicacao.');
  ReadLn;
end.

