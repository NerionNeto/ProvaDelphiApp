unit uPrincipalTeste;

interface
uses
  DUnitX.TestFramework, ufPrincipal;

type

  [TestFixture]
  TPrincipalTeste = class(TObject)
  private
    FTestePrincipal: TfPrincipal;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure AbrirFormulario;
  end;

implementation

uses
  Vcl.Forms, ufTarefa1, System.SysUtils;

procedure TPrincipalTeste.Setup;
begin
  FTestePrincipal := TfPrincipal.Create(nil);
end;

procedure TPrincipalTeste.TearDown;
begin
  FreeAndNil(FTestePrincipal);
end;

procedure TPrincipalTeste.AbrirFormulario;
var
  aForm : TForm;
begin
  aForm := FTestePrincipal.AbrirFormulario(TfTarefa1,nil);
  Assert.IsTrue(Assigned(aForm), 'Formulario não criado');
  Assert.IsTrue(aForm.ClassType = TfTarefa1 , 'Classe do formulario incorreta');
  FreeAndNil(aForm);
end;


initialization
  TDUnitX.RegisterTestFixture(TPrincipalTeste);
end.
