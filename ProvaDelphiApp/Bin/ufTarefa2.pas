unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  uCriarFormularioMDI;

type
  TProgressoThread = class(TThread)
  private
    FProgressBar: TProgressBar;
    FValorMilisegundos: integer;
    procedure SetValorMilisegundos(const Value: integer);
    procedure SetProgressBar(const Value: TProgressBar);
  protected
    procedure Execute; override;
  public
    property valorMilisegundos: integer read FValorMilisegundos write SetValorMilisegundos;
    property progressBar: TProgressBar read FProgressBar write SetProgressBar;
  end;

type
  TfTarefa2 = class(TfCriarFormularioDMI)
    btnThread: TButton;
    pbProgresso2: TProgressBar;
    pbProgresso1: TProgressBar;
    edtMilisegundos: TEdit;
    lblMilisegundos: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnThreadClick(Sender: TObject);
    procedure edtMilisegundosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

{$R *.dfm}

procedure TfTarefa2.btnThreadClick(Sender: TObject);
var
  aThread: TProgressoThread;
begin
  if (Trim(edtMilisegundos.Text) <> '') and (StrToInt(edtMilisegundos.Text) > 0) then
  begin
    aThread := TProgressoThread.Create(True);

    if pbProgresso1.Position = 0 then
      aThread.progressBar     := pbProgresso1
    else
      aThread.progressBar     := pbProgresso2;

    aThread.valorMilisegundos := StrToInt(edtMilisegundos.Text);
    aThread.FreeOnTerminate   := True;
    aThread.Start;
  end;
end;

procedure TfTarefa2.edtMilisegundosKeyPress(Sender: TObject; var Key: Char);
var
  CharSet: TSysCharSet;
begin
  CharSet :=  ['0'..'9', #8];
  if not(CharInSet(key, CharSet)) then
    key := #0;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fTarefa2);
end;

procedure TfTarefa2.FormCreate(Sender: TObject);
begin
  edtMilisegundos.Text := '0';
end;

{ TProgressoThread }

procedure TProgressoThread.Execute;
var
  i: integer;
begin
  inherited;

  for i := 0 to 100 do
  begin
    Sleep(FValorMilisegundos);
    FProgressBar.Position := i
  end;
end;

procedure TProgressoThread.SetProgressBar(const Value: TProgressBar);
begin
  FProgressBar := Value;
end;

procedure TProgressoThread.SetValorMilisegundos(const Value: integer);
begin
  FValorMilisegundos := Value;
end;

end.
