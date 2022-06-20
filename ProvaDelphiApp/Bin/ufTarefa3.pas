unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.DBClient, uCriarFormularioMDI;

type
  TfTarefa3 = class(TfCriarFormularioDMI)
    dbgrdProjetos: TDBGrid;
    lblValoresPorProjeto: TLabel;
    btnTotal: TButton;
    btnTotalDivisoes: TButton;
    edtTotal: TEdit;
    edtTotalDivisoes: TEdit;
    lblTotal: TLabel;
    lblTotalDivisoes: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnTotalClick(Sender: TObject);
    procedure btnTotalDivisoesClick(Sender: TObject);
  private
    procedure CriarDataSet;
    procedure CalcularValorTotal;
    procedure CalcularValorTotalDividido;
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;
  cdsRegistros: TClientDataSet;
  dsRegistros: TDataSource;

implementation

{$R *.dfm}

procedure TfTarefa3.btnTotalClick(Sender: TObject);
begin
  CalcularValorTotal;
end;

procedure TfTarefa3.btnTotalDivisoesClick(Sender: TObject);
begin
  CalcularValorTotalDividido;
end;

procedure TfTarefa3.CalcularValorTotal;
var
  cValor: Currency;
begin
  cValor := 0;

  cdsRegistros.First;
  while not cdsRegistros.Eof do
  begin
    cValor := cValor + cdsRegistros.FieldByName('Valor').AsCurrency;
    cdsRegistros.Next;
  end;

  edtTotal.Text := FormatFloat('#,,0.00', cValor);
end;

procedure TfTarefa3.CalcularValorTotalDividido;
var
  cValor, cValorDividido, cValorTotal: Currency;
begin
  cValor         := 0;
  cValorDividido := 0;
  cValorTotal    := 0;

  cdsRegistros.First;
  while not cdsRegistros.Eof do
  begin
    if cValor > 0 then
      cValorDividido := cdsRegistros.FieldByName('Valor').AsCurrency / cValor;

    cValor := cdsRegistros.FieldByName('Valor').AsCurrency;

    cValorTotal := cValorTotal + cValorDividido;
    cdsRegistros.Next;
  end;

  edtTotalDivisoes.Text := FormatFloat('#,,0.00', cValorTotal);
end;

procedure TfTarefa3.CriarDataSet;
begin
  cdsRegistros := TClientDataSet.Create(nil);
  dsRegistros  := TDataSource.Create(nil);

  cdsRegistros.FieldDefs.Add('IdProjeto', ftInteger, 0);
  cdsRegistros.FieldDefs.Add('NomeProjeto', ftString, 20);
  cdsRegistros.FieldDefs.Add('Valor', ftCurrency, 0);

  cdsRegistros.CreateDataSet;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 1;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 1';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 10;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 2;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 2';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 20;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 3;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 3';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 30;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 4;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 4';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 40;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 5;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 5';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 50;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 6;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 6';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 60;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 7;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 7';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 70;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 8;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 8';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 80;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 9;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 9';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 90;
  cdsRegistros.Post;

  cdsRegistros.Append;
  cdsRegistros.FieldByName('IdProjeto').AsInteger   := 10;
  cdsRegistros.FieldByName('NomeProjeto').AsString  := 'Projeto 10';
  cdsRegistros.FieldByName('Valor').AsCurrency      := 100;
  cdsRegistros.Post;

  dsRegistros.DataSet      := cdsRegistros;
  dbgrdProjetos.DataSource := dsRegistros;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(fTarefa3);
  FreeAndNil(cdsRegistros);
  FreeAndNil(dsRegistros);
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  CriarDataSet;
end;

end.
