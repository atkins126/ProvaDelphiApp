unit uFTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Gauges, Vcl.ExtCtrls;

type
  TfTarefa2 = class(TForm)
    edtTime1: TEdit;
    Label1: TLabel;
    edtTime2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnprocessar: TButton;
    Gauge1: TGauge;
    Gauge2: TGauge;

    procedure StartProcess;
    procedure btnprocessarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

  public
    FProgressBar: TArray<TGauge>;
    FTimeEdt: TArray<TEdit>;
    FLabelsPbar: TArray<TLabel>;

    { Public declarations }

  private
    { Private declarations }
    FProcessed: Boolean;
  end;

var
  fTarefa2: TfTarefa2;

implementation

uses
  System.Threading, uThreading_Controller;

{$R *.dfm}

procedure TfTarefa2.btnprocessarClick(Sender: TObject);
begin
  if (edtTime1.text = '') or (edtTime2.text = '') then
  begin
    ShowMessage('Informe o tempo em milisegundos!');
    Exit
  end;

  StartProcess;
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not FProcessed) then
  begin
    ShowMessage('Espere até o término dos processos.');
    Abort;
  end;

  FreeAndNil(fTarefa2);
end;

procedure TfTarefa2.FormCreate(Sender: TObject);
begin
  FProcessed := True;
end;

procedure TfTarefa2.FormShow(Sender: TObject);
begin
  FProcessed := True;
end;

procedure TfTarefa2.StartProcess;
var
  aTask: itask;
begin
  FProgressBar := [Gauge1, Gauge2];
  FTimeEdt := [edtTime1, edtTime2];

  FProcessed := False;

  aTask := TTask.Create(
  procedure
  begin

   TParallel.For(0, 1,
    procedure(ThreadIndex: Integer)
    begin
      TController_CallProcess.New
                             .SetThreadIndex(ThreadIndex)
                             .SetProcess;
    end);

    ShowMessage('Processo concluído!');
    Gauge1.Progress := 0;
    Gauge2.Progress := 0;
    FProcessed := True;
  end);
  aTask.Start;

end;

end.
