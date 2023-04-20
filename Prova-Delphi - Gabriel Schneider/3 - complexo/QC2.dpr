program QC2;

{$APPTYPE CONSOLE}

uses
  vcl.Dialogs, System.SysUtils,
  uComponente in 'uComponente.pas',
  uFrame in 'uFrame.pas',
  uBotao in 'uBotao.pas',
  uMemo in 'uMemo.pas',
  uLabel in 'uLabel.pas';

{$R *.RES}

var
  aFrameExterno : TFrame;
  aFrame : TFrame;
  aMemo  : TMemo;
  aLabel : TLabel;
  aBotao : TBotao;
  aPrintar: TComponente;
  aTeste : TComponenteArray;
  i : integer;
begin
  {Criando os componentes}      {X, Y, ALTURA, LARGURA, VALOR}
  aFrameExterno := TFrame.Create(0, 0, 200, 200, '100');
  aFrame := TFrame.Create(10, 10, 20, 20, '100');
  aMemo  := TMemo.Create(5, 5, 10, 10, '50');
  aLabel := TLabel.Create(2, 2, 5, 5, '20');
  aBotao := TBotao.Create(1, 1, 3, 3, '10');

  {Adicionando ao Frame Externo}
  aFrameExterno.AdicionaComponente(aFrame);
  aFrameExterno.AdicionaComponente(aMemo);
  aFrameExterno.AdicionaComponente(aLabel);
  aFrameExterno.AdicionaComponente(aBotao);

  {Jogando as informacoes para o usuario}
  writeln('Componentes criados e seus atributos');
  aTeste := aFrameExterno.GetComponentes;
  for i := 0 to Length(aFrameExterno.GetComponentes) - 1 do
  begin
    aPrintar := aFrameExterno.GetComponentes[i];
    writeln(aPrintar.ClassName);
    writeln(' X = ' + aPrintar.GetX.ToString);
    writeln(' Y = ' + aPrintar.GetY.ToString);
    writeln(' Largura = ' + aPrintar.GetLargura.ToString);
    writeln(' Altura  = ' + aPrintar.GetAltura.ToString);
    writeln(' Valor   = ' + aPrintar.GetValor);
    writeln(' ---------------------------------');
  end;

  {Redimensionando o frame externo}
  aFrameExterno.Redimensionar(100, 100);
  writeln('Redimensionando o frame externo para Largura = 100 e Altura = 100');
  writeln('------------------------------------');

  {Jogando as novas informacoes para o usuario}
  writeln('Componentes centralizado e seus atributos');
  aTeste := aFrameExterno.GetComponentes;
  for i := 0 to Length(aFrameExterno.GetComponentes) - 1 do
  begin
    aPrintar := aFrameExterno.GetComponentes[i];
    writeln(aPrintar.ClassName);
    writeln(' X = ' + aPrintar.GetX.ToString);
    writeln(' Y = ' + aPrintar.GetY.ToString);
    writeln(' Largura = ' + aPrintar.GetLargura.ToString);
    writeln(' Altura  = ' + aPrintar.GetAltura.ToString);
    writeln(' Valor   = ' + aPrintar.GetValor);
    writeln(' ---------------------------------');
  end;;

  writeln('Pressione Enter para fechar a aplicacao.');
  readln;
end.

