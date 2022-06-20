unit uCriarFormularioMDI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfCriarFormularioDMI = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCriarFormularioDMI: TfCriarFormularioDMI;

implementation

{$R *.dfm}

procedure TfCriarFormularioDMI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfCriarFormularioDMI.FormCreate(Sender: TObject);
begin
  if Assigned(owner) and TForm(owner).active then
    FormStyle := fsMDIChild;
end;

end.
