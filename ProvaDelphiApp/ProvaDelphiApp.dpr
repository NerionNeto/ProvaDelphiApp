program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufPrincipal in 'ufPrincipal.pas' {fPrincipal},
  ufTarefa1 in 'ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'ufTarefa2.pas' {fTarefa2},
  ufTarefa3 in 'ufTarefa3.pas' {fTarefa3},
  uCriarFormularioMDI in 'uCriarFormularioMDI.pas' {fCriarFormularioDMI};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
