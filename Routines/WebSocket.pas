unit WebSocket;

interface

uses
  Vcl.StdCtrls,
  System.SysUtils,
  System.JSON,
  System.StrUtils,
  sgcWebSocket,
  sgcWebSocket_Types,
  sgcWebSocket_Classes;

type
  TWebsocket = class(TObject)
  private
    procedure WSClientConnect(Connection: TsgcWSConnection);
    procedure WSClientDisconnect(Connection: TsgcWSConnection; Code: Integer);
    procedure WSClientError(Connection: TsgcWSConnection; const Error: string);
    procedure WSClientException(Connection: TsgcWSConnection; E: Exception);
    procedure WSClientMessage(Connection: TsgcWSConnection; const Text: string);
    procedure Log(Text: string);
    function StrToJson(Json: String): TJSONValue;
  protected
    WSClient: TsgcWebSocketClient;
    Memo: TMemo;
  public
    Host: string;
    Port: string;
    EnablePortCompressed: Boolean;

    PortSSL: string;
    EnableTLS: Boolean;

    TLSVersion: twsTLSVersions;
    ApiVersion: twsOpenSSLAPI;

    EnableProxy: Boolean;
    ProxyHost: string;
    ProxyPort: string;
    ProxyUserName: string;
    ProxyPassword: string;

    constructor create(AWSClient: TsgcWebSocketClient); overload;
    constructor create(AWSClient: TsgcWebSocketClient; AMemo: TMemo); overload;
    procedure connect();
    procedure disconnect();
    procedure sendMessage(Text: string);
  end;

implementation

uses
  Winapi.Windows,
  Vcl.Forms;

constructor TWebsocket.create(AWSClient: TsgcWebSocketClient);
begin
  WSClient := AWSClient;

  WSClient.OnConnect    := WSClientConnect;
  WSClient.OnDisconnect := WSClientDisconnect;
  WSClient.OnException  := WSClientException;
  WSClient.OnError      := WSClientError;
  WSClient.OnMessage    := WSClientMessage;
end;

function TWebSocket.StrToJson(Json: String): TJSONValue;
begin
  Result := TJSonObject.ParseJSONValue( Json );
end;

procedure TWebsocket.connect;
begin
  if EnableTLS then
    WSClient.Port := StrToInt(PortSSL)
  else
    WSClient.Port := StrToInt(Port);

  WSClient.Host := Host;

  WSClient.TLSOptions.OpenSSL_Options.APIVersion := ApiVersion;
  WSClient.TLSOptions.Version := TLSVersion;

  WSClient.TLS := EnableTLS;

  WSClient.Proxy.Enabled  := EnableProxy;
  WSClient.Proxy.Username := ProxyUserName;
  WSClient.Proxy.Password := ProxyPassword;
  WSClient.Proxy.Host     := ProxyHost;

  if ProxyPort <> '' then
    WSClient.Proxy.Port := StrToInt(ProxyPort);

  WSClient.Extensions.PerMessage_Deflate.Enabled := EnablePortCompressed;

  WSClient.Active := True;

  if WSClient.Active then
    Log('WSClient actived');
end;

constructor TWebsocket.create(AWSClient: TsgcWebSocketClient; AMemo: TMemo);
begin
  Memo := AMemo;

  self.create(AWSClient);
end;

procedure TWebsocket.disconnect;
begin
  WSClient.Active := False;

  if not WSClient.Active then
    Log('WSClient desactived');
end;

procedure TWebsocket.Log(Text: string);
begin
  if Assigned(Memo) then
    Memo.Lines.Add( DateTimeToStr(Now) + ' ' + Text);
end;

procedure TWebsocket.sendMessage(Text: string);
begin

  WSClient.WriteData(Text);

  Log('#sent: ' + Text);

end;

procedure TWebsocket.WSClientConnect(Connection: TsgcWSConnection);
begin
  Log('#connected');
end;

procedure TWebsocket.WSClientDisconnect(Connection: TsgcWSConnection;
  Code: Integer);
begin
  Log('#disconnected (' + IntToStr(Code) + ')');
end;

procedure TWebsocket.WSClientError(Connection: TsgcWSConnection; const
    Error: string);
begin
  Log('#error: ' + Error);
end;

procedure TWebsocket.WSClientException(Connection: TsgcWSConnection; E:
    Exception);
begin
  Log('#exception:' + E.Message);
end;

procedure TWebsocket.WSClientMessage(Connection: TsgcWSConnection; const
    Text: string);
begin

  Log('#received: ' + Text);

end;

end.
