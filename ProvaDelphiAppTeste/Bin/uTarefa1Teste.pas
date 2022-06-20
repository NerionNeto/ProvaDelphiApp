unit uTarefa1Teste;

interface
uses
  DUnitX.TestFramework, Vcl.Forms, ufTarefa1;

type

  [TestFixture]
  TTarefa1Teste = class(TObject)
  private
    FTarefa1Teste : TfTarefa1;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure GerarSQL;
  end;

implementation

uses
  System.SysUtils;

procedure TTarefa1Teste.GerarSQL;
var
  aValorEsperado, aResultado : String;
  procedure AdicionarSQL;
  begin
    FTarefa1Teste.LimparMemoFormulario;
    FTarefa1Teste.mmColunas.Lines.Add('Campo1,');
    FTarefa1Teste.mmColunas.Lines.Add('Campo2');
    FTarefa1Teste.mmTabelas.Lines.Add('Tabela');
    FTarefa1Teste.mmCondicoes.Lines.Add('Campo1 = 0');
  end;
begin
  aValorEsperado := 'SELECT' + #13#10 + 'Campo1,' + #13#10 + 'Campo2' + #13#10 + 'FROM' + #13#10 + 'Tabela' + #13#10 + 'WHERE' + #13#10 + 'Campo1 = 0';
  AdicionarSQL;
  FTarefa1Teste.btnGerarSQLClick(nil);
  aResultado := trim(FTarefa1Teste.mmSQLGerado.Lines.text);

  Assert.IsTrue(aValorEsperado = aResultado, 'Esperado: ['+ aValorEsperado +']' + ' Gerado: ['+ aResultado +']');
end;

procedure TTarefa1Teste.Setup;
begin
  FTarefa1Teste := TfTarefa1.Create(nil);
end;

procedure TTarefa1Teste.TearDown;
begin
  FreeAndNil(FTarefa1Teste);
end;

initialization
  TDUnitX.RegisterTestFixture(TTarefa1Teste);
end.
