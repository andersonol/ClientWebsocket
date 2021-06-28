program ClientWebSocket;

uses
  Vcl.Forms,
  FormMainUnit in 'FormMainUnit.pas' {FormVendanaPrinter},
  WebSocket in 'Routines\WebSocket.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormVendanaPrinter, FormVendanaPrinter);
  Application.Run;
end.



