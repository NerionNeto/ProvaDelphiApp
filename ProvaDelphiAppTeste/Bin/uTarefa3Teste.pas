unit uTarefa3Teste;

interface
uses
  DUnitX.TestFramework, ufTarefa3;

type

  [TestFixture]
  TTarefa3Teste = class(TObject)
  private
    FTarefa3Teste : TfTarefa3;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure Teste;
  end;

implementation

uses System.SysUtils, System.Classes;

procedure TTarefa3Teste.Setup;
begin
  FTarefa3Teste := TfTarefa3.Create(nil);
end;

procedure TTarefa3Teste.TearDown;
begin
  FreeAndNil(FTarefa3Teste);
end;

procedure TTarefa3Teste.Teste;
var
  aValorEsperado: String;
begin
  aValorEsperado := FormatFloat('#,,0.00',550);
  FTarefa3Teste.btnTotal.Click;
  Assert.isTrue(FTarefa3Teste.edtTotal.text = aValorEsperado,'GetTotal Esperado: ['+ aValorEsperado +']' + ' Gerado: ['+ FTarefa3Teste.edtTotal.text +']');

  aValorEsperado := FormatFloat('#,,0.00',11.83);
  FTarefa3Teste.btnTotalDivisoes.Click;
  Assert.isTrue(FTarefa3Teste.edtTotalDivisoes.text = aValorEsperado,'GetTotal Esperado: ['+ aValorEsperado +']' + ' Gerado: ['+ FTarefa3Teste.edtTotalDivisoes.text +']');
end;

initialization
  TDUnitX.RegisterTestFixture(TTarefa3Teste);
end.
