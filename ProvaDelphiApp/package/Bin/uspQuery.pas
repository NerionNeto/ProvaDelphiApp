unit uspQuery;

interface

uses
  System.Classes, Data.DB, Vcl.StdCtrls, FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)

  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    FMemo: TMemo;
    procedure SetspCondicoes(const Value: TStringList);
    procedure SetspColunas(const Value: TStringList);
    procedure SetspTabelas(const Value: TStringList);

  public
    property spCondicoes: TStringList read FspCondicoes write SetspCondicoes;
    property spColunas: TStringList read FspColunas write SetspColunas;
    property spTabelas: TStringList read FspTabelas write SetspTabelas;

    constructor Create(pMemo: TMemo); reintroduce; overload;

    procedure GeraSQL(pColunas, pTabelas, pCondicoes: TStringList);
  end;

implementation

uses
  System.SysUtils;

{ TspQuery }

procedure TspQuery.SetspTabelas(const Value: TStringList);
begin
  FspTabelas := Value;
end;

constructor TspQuery.Create(pMemo: TMemo);
begin
  FMemo       := pMemo;

  spColunas   := TStringList.Create;
  spTabelas   := TStringList.Create;
  spCondicoes := TStringList.Create;
end;

procedure TspQuery.GeraSQL(pColunas, pTabelas, pCondicoes: TStringList);
begin
   FspColunas   := pColunas;
   FspTabelas   := pTabelas;
   FspCondicoes := pCondicoes;

   spColunas.Insert(0, 'SELECT');
   spTabelas.Insert(0, 'FROM');
   spCondicoes.Insert(0, 'WHERE');

   FMemo.Lines.AddStrings(FspColunas);
   FMemo.Lines.AddStrings(FspTabelas);
   FMemo.Lines.AddStrings(FspCondicoes);
end;

procedure TspQuery.SetspColunas(const Value: TStringList);
begin
  FspColunas := Value;
end;

procedure TspQuery.SetspCondicoes(const Value: TStringList);
begin
  FspCondicoes := Value;
end;

end.
