unit uBotao;

interface

uses
  vcl.Dialogs,
  uComponente;

type

  TBotao = class(TComponente)
  public
  procedure AdicionaComponente(aComponente: TComponente); override;
  end;

implementation

procedure TBotao.AdicionaComponente(aComponente: TComponente);
begin
  ShowMessage('Nao e possivel adicionar componentes em botoes')
end;

end.

