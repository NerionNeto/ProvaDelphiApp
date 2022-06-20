unit ufPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfPrincipal = class(TForm)
    Tarefas: TMainMenu;
    menuTarefas: TMenuItem;
    menuTarefa1: TMenuItem;
    menuTarefa2: TMenuItem;
    menuTarefa3: TMenuItem;
    procedure menuTarefa1Click(Sender: TObject);
    procedure menuTarefa2Click(Sender: TObject);
    procedure menuTarefa3Click(Sender: TObject);
  private

  public
    function AbrirFormulario(pFormulario: TFormClass; AOwner: TForm): TForm;
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses
  ufTarefa1, ufTarefa2, ufTarefa3;

{$R *.dfm}

procedure TfPrincipal.menuTarefa1Click(Sender: TObject);
begin
  AbrirFormulario(TfTarefa1, nil);
end;

procedure TfPrincipal.menuTarefa2Click(Sender: TObject);
begin
  AbrirFormulario(TfTarefa2, nil);
end;

procedure TfPrincipal.menuTarefa3Click(Sender: TObject);
begin
  AbrirFormulario(TfTarefa3, nil);
end;

function TfPrincipal.AbrirFormulario(pFormulario: TFormClass; AOwner: TForm): TForm;
begin
  Result := pFormulario.Create(AOwner);
  Result.Show;
end;

end.
