unit uThreading_Controller;

interface

uses uThreading_Interface, System.Classes, Vcl.Forms, System.SysUtils,
  Vcl.ComCtrls;

Type
  TController_CallProcess = class(TInterfacedObject, iController_Threading)
  private
    FThreadIndex: Integer;

  public
    destructor Destroy; override;
    class function New: iController_Threading;
    function SetThreadIndex(ThreadIndex:Integer):iController_Threading;
    function SetProcess: String;
  end;

implementation

uses
  uMyThread_Controller;

{ TThreads }

destructor TController_CallProcess.Destroy;
begin

  inherited;
end;

class function TController_CallProcess.New: iController_Threading;
begin
  Result := Self.Create;
end;

function TController_CallProcess.SetProcess: String;
var
  MyThread: TThreadObject;
begin
  MyThread := TThreadObject.Create;
  try
    MyThread.ThreadIndex  := FThreadIndex;
    MyThread.Execute;
  finally
    FreeAndNil(MyThread);
  end;
end;

function TController_CallProcess.SetThreadIndex(
  ThreadIndex: Integer): iController_Threading;
begin
  Result:=self;
  FThreadIndex := ThreadIndex;
end;

end.
