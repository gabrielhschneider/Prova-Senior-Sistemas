unit uMemo;

interface

uses
  vcl.Dialogs,
  uComponente;

type

  TMemo = class(TComponente)
  private
  public
  procedure AdicionaComponente(aComponente: TComponente); override;
  end;

implementation

procedure TMemo.AdicionaComponente(aComponente: TComponente);
begin
  ShowMessage('Nao e possivel adicionar componentes em memos')
end;

end.

