unit uOperacoesEmLote_Interface;

interface

uses
  Data.DB;

type
 iModel_OperacoesEmLote = interface
   ['{49E494F1-96C4-4C1E-A708-83F399DE4FD0}']
   function PopulateDataSet : TDataSource;
 end;

implementation

end.
