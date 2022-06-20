unit uspComponentesRegistro;

interface

uses
 System.Classes, uspQuery;

type
  TspComponenteRegistro = class(TComponent)

  end;

  procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TspQuery', [TspQuery]);
end;

end.
