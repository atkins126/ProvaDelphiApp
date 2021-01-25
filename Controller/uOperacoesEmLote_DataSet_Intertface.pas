unit uOperacoesEmLote_DataSet_Intertface;

interface

uses
  Data.DB;

 Type
  iController_OperacoesEmlote = interface
    ['{3B8AD050-2DE8-4756-9479-3692BB0AB363}']
   function PopulateDataSet : TDataSource;
  end;

implementation

end.
