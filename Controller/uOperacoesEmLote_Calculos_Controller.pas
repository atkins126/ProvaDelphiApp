unit uOperacoesEmLote_Calculos_Controller;

interface

uses
  uOperacoesEmLote_Calculos_Interface, Data.DB;
type
 TController_OperacoesEmLote_Calculos = class(TInterfacedObject, iController_OperacoesEmLote_Calculos)
 FDataSet :TDataSet;

 class function New : iController_OperacoesEmLote_Calculos;
 function SetDataSet(DataSet:TDataSet):iController_OperacoesEmLote_Calculos;
 function SumValues:Double;
 function DivideValues:Double;
end;

implementation

{ TController_OperacoesEmLote_Soma }

function TController_OperacoesEmLote_Calculos.DivideValues: Double;
 var ValorRegistro, Total :Double;
  I: Integer;
begin
 {Calculos de Divisão}

  Total :=0;

  FDataSet.First;

 for I := 1 to FDataSet.RecordCount -1 do
  begin
    ValorRegistro := FDataSet.FieldByName('Valor').AsFloat;
    Total := Total + ((ValorRegistro+10)/ValorRegistro);

    FDataSet.Next;
  end;

  Result := Total;
end;

class function TController_OperacoesEmLote_Calculos.New: iController_OperacoesEmLote_Calculos;
begin
 Result := Self.Create;
end;

function TController_OperacoesEmLote_Calculos.SetDataSet(DataSet:TDataSet): iController_OperacoesEmLote_Calculos;
begin
 Result   := Self;
 FDataSet := DataSet;
end;

function TController_OperacoesEmLote_Calculos.SumValues: Double;
Var Total :Double;
begin
 {Calculos de soma}

 Total :=0;

 FDataSet.First;

 while not FDataSet.Eof do
  begin
    Total := Total + FDataSet.FieldByName('Valor').AsFloat;
    FDataSet.Next;
  end;

 Result := Total;
end;

end.
