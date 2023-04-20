unit uComponente;

interface

uses
  vcl.Dialogs;
type

  TComponente = class;

  TComponenteArray = array of TComponente;

  TComponente = class
  private
    FX: Integer;
    FY: Integer;
    FAltura: Integer;
    FLargura: Integer;
    FComponentes: TComponenteArray;
    FValor: String;
  public
    function GetX: Integer;
    function GetY: Integer;
    function GetAltura: Integer;
    function GetLargura: Integer;
    function GetValor: String;

    {Metodo criado}
    function GetComponentes: TComponenteArray;

    {Metodo criado}
    procedure SetComponentes(const Value: TComponenteArray);

    {Metodo criado}
    procedure Redimensionar(aAltura, aLargura: Integer); virtual;

    {Metodo criado}
    constructor Create(aX, aY, aAltura, aLargura : Integer; aValor : String);

    {Metodo criado}
    property Componentes: TComponenteArray read GetComponentes write SetComponentes;

    procedure SetX(const Value: Integer);
    procedure SetY(const Value: Integer);
    procedure SetAltura(const Value: Integer);
    procedure SetLargura(const Value: Integer);
    procedure SetValor(const Value: String);

    procedure AdicionaComponente(aComponente: TComponente); virtual;
    procedure RemoveComponente(aComponente: TComponente); virtual;

    property X      : Integer read GetX write SetX;
    property Y      : Integer read GetY write SetY;
    property Altura : Integer read GetAltura write SetAltura;
    property Largura: Integer read GetLargura write SetLargura;
    property Valor  : String read GetValor write SetValor;

    end;

implementation

uses
  uFrame, uLabel, uBotao, uMemo;

{Constructor}
constructor TComponente.Create(aX, aY, aAltura, aLargura : Integer; aValor : String);
begin
  FX      := aX;
  FY      := aY;
  FValor  := aValor;
  FAltura := aAltura;
  FLargura:= aLargura;
end;

{Adicionar Componente}
procedure TComponente.AdicionaComponente(aComponente: TComponente);
begin
  SetLength(FComponentes, Length(Componentes) + 1);
  Componentes[Length(Self.Componentes) - 1] := aComponente;
end;

{Redimensionar}
procedure TComponente.Redimensionar(aAltura, aLargura: Integer);
begin
  self.Altura := aAltura;
  self.Largura:= aLargura;
end;

{Remover}
procedure TComponente.RemoveComponente(aComponente: TComponente);
var
  i : Integer;
begin
  for i := 0 to Length(self.FComponentes) - 1 do
  begin
    if self.Componentes[i].ClassName = aComponente.ClassName then
    begin
      self.Componentes[i].Destroy;
    end;
  end;
end;

{Get}
function TComponente.GetComponentes: TComponenteArray;
begin
  Result := self.FComponentes;
end;

function TComponente.GetAltura: Integer;
begin
  Result := FAltura;
end;

function TComponente.GetLargura: Integer;
begin
  Result := FLargura;
end;

function TComponente.GetValor: String;
begin
  Result := FValor;
end;

function TComponente.GetX: Integer;
begin
  Result := FX;
end;

function TComponente.GetY: Integer;
begin
  Result := FY;
end;

{Set}
procedure TComponente.SetComponentes(const Value: TComponenteArray);
begin
  FComponentes := Value;
end;

procedure TComponente.SetAltura(const Value: Integer);
begin
  FAltura := Value;
end;

procedure TComponente.SetLargura(const Value: Integer);
begin
  FLargura := Value;
end;

procedure TComponente.SetValor(const Value: String);
begin
  FValor := Value;
end;

procedure TComponente.SetX(const Value: Integer);
begin
  FX := Value;
end;

procedure TComponente.SetY(const Value: Integer);
begin
  FY := Value;
end;

end.

