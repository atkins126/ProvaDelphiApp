unit uThreading_Interface;

interface

uses
  Vcl.ComCtrls;
 type
   iController_Threading = interface
     ['{2BC38DAA-E29D-489E-8526-A8462488AE1B}']
     function SetThreadIndex(ThreadIndex:Integer):iController_Threading;
     function SetProcess :string;
 end;

implementation

end.
