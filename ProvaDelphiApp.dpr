program ProvaDelphiApp;

uses
  Vcl.Forms,
  ufMain in 'View\ufMain.pas' {fMain},
  ufTarefa1 in 'View\ufTarefa1.pas' {fTarefa1},
  uThreading_Interface in 'Controller\uThreading_Interface.pas',
  uThreading_Controller in 'Controller\uThreading_Controller.pas',
  uMyThread_Controller in 'Controller\uMyThread_Controller.pas',
  ufTarefa3 in 'View\ufTarefa3.pas' {fTarefa3},
  uOperacoesEmLote_Interface in 'Model\uOperacoesEmLote_Interface.pas',
  uOperacoesEmLote_Model in 'Model\uOperacoesEmLote_Model.Pas',
  uCheckException_Controller in 'Controller\uCheckException_Controller.pas',
  uOperacoesEmLote_DataSet_Intertface in 'Controller\uOperacoesEmLote_DataSet_Intertface.pas',
  uOperacoesEmLote_DataSet_Controller in 'Controller\uOperacoesEmLote_DataSet_Controller.pas',
  uOperacoesEmLote_Calculos_Controller in 'Controller\uOperacoesEmLote_Calculos_Controller.pas',
  uOperacoesEmLote_Calculos_Interface in 'Controller\uOperacoesEmLote_Calculos_Interface.pas',
  uFTarefa2 in 'View\uFTarefa2.pas' {fTarefa2},
  uspQuery in 'Componentes\uspQuery.pas',
  uGeraSQL_Interface in 'Controller\uGeraSQL_Interface.pas',
  uGeraSQL_Controller in 'Controller\uGeraSQL_Controller.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
