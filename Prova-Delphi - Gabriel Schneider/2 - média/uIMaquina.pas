unit uIMaquina;

interface

uses
  Classes, System.Generics.Collections, uTroco;

type

  IMaquina = interface
    function MontarTroco(aTroco: Double): TList<String>;
  end;

implementation

end.

