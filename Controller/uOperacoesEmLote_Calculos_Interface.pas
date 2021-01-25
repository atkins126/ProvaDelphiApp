unit uOperacoesEmLote_Calculos_Interface;

interface

uses
  Data.DB;

Type
 iController_OperacoesEmLote_Calculos = interface
 ['{30B532C8-AB8E-4AD2-89BD-8EE6CA51A926}']
 function SetDataSet(DataSet:TDataSet):iController_OperacoesEmLote_Calculos;
 function SumValues:Double;
 function DivideValues:Double;
 end;

implementation

end.

