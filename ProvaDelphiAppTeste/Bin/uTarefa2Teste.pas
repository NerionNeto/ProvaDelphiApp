unit uTarefa2Teste;

interface
uses
  DUnitX.TestFramework, Vcl.Forms, ufTarefa2;

type

  [TestFixture]
  TTarefa2Teste = class(TObject)
  private
    FTarefa2Teste: TfTarefa2;
    FTreadTeste: TProgressoThread;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    [TestCase('Teste thread 1','4,6')]
    [Test]
    procedure TestButtons;

  end;

implementation

uses
  System.Classes, System.SysUtils;

procedure TTarefa2Teste.Setup;
begin
  FTarefa2Teste := TfTarefa2.Create(nil);
end;

procedure TTarefa2Teste.TearDown;
begin
  FreeAndNil(FTarefa2Teste);
end;


procedure TTarefa2Teste.TestButtons;
begin
  FTarefa2Teste.edtMilisegundos.Text := '4';
  FTarefa2Teste.edtMilisegundos.Text := '6';
  FTarefa2Teste.btnThread.Click;

  //Assert.IsTrue((FTarefa2Teste.FThreadList.Count = 2),'btnCreateThreadClick não gerou 2 threads');
end;

initialization
  TDUnitX.RegisterTestFixture(TTarefa2Teste);
end.
