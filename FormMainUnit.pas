unit FormMainUnit;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.DateUtils,
  System.Variants,
  System.Classes,
  System.JSON,
  System.ImageList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.StdCtrls,
  Vcl.ImgList,
  Vcl.AppEvnts,
  Vcl.ExtCtrls,
  Vcl.ComCtrls,
  sgcBase_Classes,
  sgcSocket_Classes,
  sgcTCP_Classes,
  sgcWebSocket_Types,
  sgcWebSocket_Classes,
  sgcWebSocket_Classes_Indy,
  sgcWebSocket_Client,
  sgcWebSocket;

type
  TFormVendanaPrinter = class(TForm)
    PgCtrl: TPageControl;
    TabSheetWebsocket: TTabSheet;
    TabSheetProxy: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    WebsocketHost: TEdit;
    Label5: TLabel;
    Panel2: TPanel;
    WebsocketEnableCompressed: TCheckBox;
    WebsocketPort: TEdit;
    Label8: TLabel;
    Panel3: TPanel;
    WebsocketEnableTLS: TCheckBox;
    WebsocketPortSSL: TEdit;
    Label10: TLabel;
    WebsocketComboOpenSSLAPI: TComboBox;
    WebsocketComboTLSVersion: TComboBox;
    Label9: TLabel;
    ProxyEnableProxy: TCheckBox;
    Label11: TLabel;
    ProxyHost: TEdit;
    Label12: TLabel;
    ProxyUsername: TEdit;
    Label13: TLabel;
    ProxyPort: TEdit;
    Label14: TLabel;
    ProxyPassword: TEdit;
    Panel1: TPanel;
    BtnConnectWs: TButton;
    BtnDisconnectWs: TButton;
    sgcWebSocketClient1: TsgcWebSocketClient;
    Shape1: TShape;
    TimerShape: TTimer;
    TabSheetLog: TTabSheet;
    Memo1: TMemo;
    Panel4: TPanel;
    BtnEnviarMensagem: TButton;
    Panel5: TPanel;
    Label1: TLabel;
    EditMensagem: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnConnectWsClick(Sender: TObject);
    procedure BtnDisconnectWsClick(Sender: TObject);
    procedure TimerShapeTimer(Sender: TObject);
    procedure BtnEnviarMensagemClick(Sender: TObject);
  private
    { Private declarations }
    function Connect: boolean;
    function Disconnect: boolean;
  public
    { Public declarations }
  end;

var
  FormVendanaPrinter: TFormVendanaPrinter;

implementation

uses
  System.StrUtils,
  Winapi.CommDlg,
  WebSocket;

var
  WS: TWebsocket;

{$R *.dfm}


function TFormVendanaPrinter.Connect: boolean;
begin

  WS.Host                 := WebsocketHost.Text;
  WS.Port                 := WebsocketPort.Text;
  WS.EnablePortCompressed := WebsocketEnableCompressed.Checked;

  WS.PortSSL := WebsocketPortSSL.Text;
  WS.EnableTLS := WebsocketEnableTLS.Checked;

  case WebsocketComboOpenSSLAPI.ItemIndex of
    0: WS.ApiVersion := oslAPI_1_0;
    1: WS.ApiVersion := oslAPI_1_1;
  end;

  case WebsocketComboTLSVersion.ItemIndex of
    0: WS.TLSVersion := tlsUndefined;
    1: WS.TLSVersion := tls1_0;
    2: WS.TLSVersion := tls1_1;
    3: WS.TLSVersion := tls1_2;
    4: WS.TLSVersion := tls1_3;
  end;

  WS.EnableProxy   := ProxyEnableProxy.Checked;

  WS.ProxyHost     := ProxyHost.Text;
  WS.ProxyPort     := ProxyPort.Text;
  WS.ProxyUserName := ProxyUsername.Text;
  WS.ProxyPassword := ProxyPassword.Text;

  WS.connect;

  Result := sgcWebSocketClient1.Active;




end;

procedure TFormVendanaPrinter.BtnConnectWsClick(Sender: TObject);
begin

  if Connect then begin
    Shape1.Brush.Color := clGreen;
    TabSheetLog.Show;
  end;

end;

procedure TFormVendanaPrinter.BtnDisconnectWsClick(Sender: TObject);
begin

  if Disconnect then
    Shape1.Brush.Color := clRed;

end;

procedure TFormVendanaPrinter.BtnEnviarMensagemClick(Sender: TObject);
begin
  WS.SendMessage(EditMensagem.Text);
end;

function TFormVendanaPrinter.Disconnect: boolean;
begin

  WS.disconnect;

  Result := not sgcWebSocketClient1.Active;

end;

procedure TFormVendanaPrinter.FormCreate(Sender: TObject);
begin

  PgCtrl.TabIndex := 0;

  WS := TWebsocket.create(sgcWebSocketClient1,Memo1);

end;

procedure TFormVendanaPrinter.TimerShapeTimer(Sender: TObject);
begin
  Shape1.Visible := not Shape1.Visible;
end;

end.

//https://png2icojs.com/pt/
