unit uLabel;

interface

uses
  vcl.Dialogs,
  uComponente;

type

  TLabel = class(TComponente)
  private
  public
  procedure AdicionaComponente(aComponente: TComponente); override;

  end;

implementation

procedure TLabel.AdicionaComponente(aComponente: TComponente);
begin
  ShowMessage('Nao e possivel adicionar componentes em labels')
end;

end.

