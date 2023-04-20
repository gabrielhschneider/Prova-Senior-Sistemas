unit uFrame;

interface

uses
  uComponente, uBotao, uLabel, uMemo;


type
  TFrame = class(TComponente)
  public
  procedure Redimensionar(aAltura, aLargura: Integer); override;
  end;

implementation

procedure TFrame.Redimensionar(aAltura, aLargura: Integer);
var
  i : integer;
begin

  inherited;

  if Length(self.Componentes) > 0 then
  begin
    {Percorre a lista de componentes internor para redimensionalos proporcionalmente}
    for i := 0 to Length(self.Componentes) do
    begin
      if self.Componentes[i] is TLabel then
      begin
        {Centralizando o componente de acordo com a Altura e Largura do externo}
        self.Componentes[i].SetY((self.Altura  - self.Componentes[i].Altura) div 2);
        self.Componentes[i].SetX((self.Largura - self.Componentes[i].Altura) div 2);
      end


      else if Self.Componentes[i] is TBotao then
      begin
        {Alterando proporcionalmente as dimensoes de acordo com o externo}
        self.Componentes[i].SetLargura(Round(self.Largura *0.2)); {20% da largura do externo}

        {Centralizando o componente de acordo com a Altura e Largura do externo}
        self.Componentes[i].SetY((self.Altura  - self.Componentes[i].Altura) div 2);
        self.Componentes[i].SetX((self.Largura - self.Componentes[i].Largura) div 2);
      end

      else if Self.Componentes[i] is TMemo then
      begin
      {Alterando proporcionalmente as dimensoes de acordo com o externo}
        self.Componentes[i].SetLargura(Round(self.Largura *0.5)); {50% da largura do externo}
        self.Componentes[i].SetAltura(Round(self.Altura *0.5));   {50% da altura do externo}

        {Centralizando o componente de acordo com a Altura e Largura do externo}
        self.Componentes[i].SetY((self.Altura  - self.Componentes[i].Altura) div 2);
        self.Componentes[i].SetX((self.Largura - self.Componentes[i].Largura) div 2);
      end

      else if self.Componentes[i] is TFrame then
      begin
        {Alterando proporcionalmente as dimensoes de acordo com o externo}
        self.Componentes[i].SetLargura(Round(self.Largura *0.8)); {80% da largura do externo}
        self.Componentes[i].SetAltura(Round(self.Altura *0.8));   {80% da altura do externo}

        {Centralizando o componente de acordo com a Altura e Largura do externo}
        self.Componentes[i].SetY((self.Altura  - self.Componentes[i].Altura) div 2);
        self.Componentes[i].SetX((self.Largura - self.Componentes[i].Largura) div 2);
      end;
    end;
  end;

end;

end.

