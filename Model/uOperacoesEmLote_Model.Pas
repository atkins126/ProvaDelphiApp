unit uOperacoesEmLote_Model;

interface

uses uOperacoesEmLote_Interface, Datasnap.DBClient, Data.DB, System.SysUtils,
  ufTarefa3;

type
  TModel_OperacoesEmlote = class(TInterfacedObject, iModel_OperacoesEmLote)
  public
    FDataSet: TClientDataSet;
    FDataSource: TDataSource;

    class function New: iModel_OperacoesEmLote;
    function PopulateDataSet: TDataSource;
    function CreateDataSet: TClientDataSet;
    function CreateDataSource :TDataSource;

  end;

implementation

{ TOperacoesEmlote }

function TModel_OperacoesEmlote.CreateDataSource: TDataSource;
begin
  Result:= TDataSource.Create(nil);
end;

function TModel_OperacoesEmlote.CreateDataSet: TClientDataSet;
begin
  Result := TClientDataSet.Create(nil);
  Result.FieldDefs.Add('IdProjeto', ftInteger);
  Result.FieldDefs.Add('NomeProjeto', ftString, 75);
  Result.FieldDefs.Add('Valor', ftFloat);
  Result.CreateDataSet;
end;

class function TModel_OperacoesEmlote.New: iModel_OperacoesEmLote;
begin
  Result := Self.Create;
end;

function TModel_OperacoesEmlote.PopulateDataSet: TDataSource;
var
  i, Valor: integer;
begin

  FDataSet    := CreateDataSet;
  FDataSource := CreateDataSource;
  try
    Valor := 10;

    for i := 1 to 10 do
    begin
      FDataSet.Append;
      FDataSet.FieldByName('IdProjeto').AsInteger := i;
      FDataSet.FieldByName('NomeProjeto').AsString := 'Projeto ' + i.ToString;
      FDataSet.FieldByName('Valor').AsFloat := Valor;
      FDataSet.Post;

      Valor := Valor + 10;
    end;

    FDataSource.DataSet := FDataSet;
    Result              := FDataSource;

  finally
  {desligado por enquanto, está apagando os dados (vai gerar MemoryLeak!)}
//    FDataSet.Free;
//    FDataSource.Free;
  end;

end;

end.
