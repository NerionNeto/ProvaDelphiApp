unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uspQuery,
  uCriarFormularioMDI;

type
  TfTarefa1 = class(TfCriarFormularioDMI)
    mmColunas: TMemo;
    mmTabelas: TMemo;
    mmCondicoes: TMemo;
    lblColunas: TLabel;
    lblTarefas: TLabel;
    lblCondicoes: TLabel;
    btnGerarSQL: TButton;
    mmSQLGerado: TMemo;
    lblSQLGerado: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LimparMemoFormulario;
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGerarSQLClick(Sender: TObject);
var
  sColunas, sTabelas, sCondicoes: TStringList;
  spQuery: TspQuery;
begin
  if (mmTabelas.Lines.Count > 1) then
    raise Exception.Create('É permitido informar apenas uma tabela para a geração do SQL');

  mmSQLGerado.Lines.Clear;

  spQuery := TspQuery.Create(mmSQLGerado);

  sColunas   := TStringList.Create;
  sTabelas   := TStringList.Create;
  sCondicoes := TStringList.Create;

  try
    sColunas.Assign(mmColunas.Lines);
    sTabelas.Assign(mmTabelas.Lines);
    sCondicoes.Assign(mmCondicoes.Lines);

    spQuery.GeraSQL(sColunas, sTabelas, sCondicoes);
  finally
    FreeAndNil(sColunas);
    FreeAndNil(sTabelas);
    FreeAndNil(sCondicoes);
  end;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fTarefa1);
end;

procedure TfTarefa1.LimparMemoFormulario;
begin
  mmColunas.Lines.Clear;
  mmTabelas.Lines.Clear;
  mmCondicoes.Lines.Clear;
  mmSQLGerado.Lines.Clear;

end;

end.
