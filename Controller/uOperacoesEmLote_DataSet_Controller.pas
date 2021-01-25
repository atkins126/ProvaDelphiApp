unit uOperacoesEmLote_DataSet_Controller;

interface
uses uOperacoesEmLote_DataSet_Intertface, Data.DB;

 Type
  TController_OperacoesEmLote = class(TinterfacedObject, iController_OperacoesEmlote)
   public
   destructor Destroy; override;

   class function New :iController_OperacoesEmlote;
   function PopulateDataSet : TDataSource;
  end;

implementation

uses
  uOperacoesEmLote_Model;

{ TController_OperacoesEmLote }

destructor TController_OperacoesEmLote.Destroy;
begin

  inherited;
end;

class function TController_OperacoesEmLote.New: iController_OperacoesEmlote;
begin
  Result := Self.Create;
end;

function TController_OperacoesEmLote.PopulateDataSet: TDataSource;
begin
  Result := TModel_OperacoesEmlote.New
                                  .PopulateDataSet;
end;
end.
