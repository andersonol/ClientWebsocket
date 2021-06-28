object FormVendanaPrinter: TFormVendanaPrinter
  Left = 0
  Top = 0
  Caption = 'Vendana - Servidor de impress'#227'o'
  ClientHeight = 377
  ClientWidth = 332
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PgCtrl: TPageControl
    Left = 0
    Top = 0
    Width = 332
    Height = 328
    ActivePage = TabSheetLog
    Align = alClient
    Constraints.MinWidth = 250
    MultiLine = True
    TabOrder = 0
    object TabSheetWebsocket: TTabSheet
      Caption = 'Websocket'
      ImageIndex = 1
      ExplicitLeft = 8
      ExplicitTop = 22
      object Label6: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 304
        Height = 25
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Caption = 'Websocket'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 100
      end
      object Label7: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 55
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Host:'
        ExplicitWidth = 26
      end
      object Label5: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 101
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Porta padr'#227'o'
        ExplicitWidth = 63
      end
      object Label8: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 147
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Porta SSL'
        ExplicitWidth = 46
      end
      object Label10: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 193
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Seguran'#231'a'
        ExplicitWidth = 51
      end
      object WebsocketHost: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 70
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 0
        Text = 'echo.websocket.org'
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 116
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel2'
        Color = clHighlightText
        ParentBackground = False
        ShowCaption = False
        TabOrder = 1
        object WebsocketEnableCompressed: TCheckBox
          Left = 223
          Top = 0
          Width = 81
          Height = 21
          Align = alRight
          Caption = 'Compressed'
          TabOrder = 0
        end
        object WebsocketPort: TEdit
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 213
          Height = 21
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alClient
          TabOrder = 1
          Text = '80'
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 162
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel2'
        Color = clHighlightText
        ParentBackground = False
        ShowCaption = False
        TabOrder = 2
        object WebsocketEnableTLS: TCheckBox
          Left = 223
          Top = 0
          Width = 81
          Height = 21
          Align = alRight
          Caption = 'TLS'
          TabOrder = 0
        end
        object WebsocketPortSSL: TEdit
          AlignWithMargins = True
          Left = 0
          Top = 0
          Width = 213
          Height = 21
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 10
          Margins.Bottom = 0
          Align = alClient
          TabOrder = 1
          Text = '443'
        end
      end
      object WebsocketComboOpenSSLAPI: TComboBox
        AlignWithMargins = True
        Left = 10
        Top = 216
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 3
        Text = 'OpenSSL 1.0'
        Items.Strings = (
          'OpenSSL 1.0'
          'OpenSSL 1.1')
      end
      object WebsocketComboTLSVersion: TComboBox
        AlignWithMargins = True
        Left = 10
        Top = 247
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 4
        Text = 'Default'
        Items.Strings = (
          'Default'
          'TLS 1.0'
          'TLS 1.1'
          'TLS 1.2'
          'TLS 1.3')
      end
    end
    object TabSheetProxy: TTabSheet
      Caption = 'Proxy'
      ImageIndex = 2
      object Label9: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 304
        Height = 25
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        Caption = 'Proxy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 51
      end
      object Label11: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 82
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Host:'
        ExplicitWidth = 26
      end
      object Label12: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 174
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Username:'
        ExplicitWidth = 52
      end
      object Label13: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 128
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Port:'
        ExplicitWidth = 24
      end
      object Label14: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 220
        Width = 304
        Height = 13
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Password:'
        ExplicitWidth = 50
      end
      object ProxyEnableProxy: TCheckBox
        AlignWithMargins = True
        Left = 10
        Top = 55
        Width = 304
        Height = 17
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Proxy'
        TabOrder = 0
      end
      object ProxyHost: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 97
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 1
      end
      object ProxyUsername: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 189
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 2
      end
      object ProxyPort: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 143
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 3
      end
      object ProxyPassword: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 235
        Width = 304
        Height = 21
        Margins.Left = 10
        Margins.Top = 2
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alTop
        TabOrder = 4
      end
    end
    object TabSheetLog: TTabSheet
      Caption = 'Log'
      ImageIndex = 4
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 324
        Height = 248
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
        ExplicitHeight = 233
      end
      object Panel4: TPanel
        Left = 0
        Top = 248
        Width = 324
        Height = 52
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel4'
        ShowCaption = False
        TabOrder = 1
        object BtnEnviarMensagem: TButton
          AlignWithMargins = True
          Left = 241
          Top = 8
          Width = 75
          Height = 36
          Margins.Left = 8
          Margins.Top = 8
          Margins.Right = 8
          Margins.Bottom = 8
          Align = alRight
          Caption = 'Enviar'
          TabOrder = 0
          OnClick = BtnEnviarMensagemClick
          ExplicitTop = 9
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 233
          Height = 52
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel5'
          ShowCaption = False
          TabOrder = 1
          ExplicitLeft = 72
          ExplicitWidth = 185
          ExplicitHeight = 41
          object Label1: TLabel
            AlignWithMargins = True
            Left = 8
            Top = 4
            Width = 217
            Height = 13
            Margins.Left = 8
            Margins.Top = 4
            Margins.Right = 8
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Mensagem'
            ExplicitWidth = 51
          end
          object EditMensagem: TEdit
            AlignWithMargins = True
            Left = 8
            Top = 21
            Width = 217
            Height = 21
            Margins.Left = 8
            Margins.Top = 4
            Margins.Right = 8
            Margins.Bottom = 0
            Align = alTop
            TabOrder = 0
            Text = 'Mensagem de teste'
            ExplicitLeft = 64
            ExplicitTop = 8
            ExplicitWidth = 121
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 332
    Height = 49
    Align = alBottom
    TabOrder = 1
    object Shape1: TShape
      AlignWithMargins = True
      Left = 299
      Top = 19
      Width = 22
      Height = 11
      Margins.Left = 20
      Margins.Top = 18
      Margins.Right = 10
      Margins.Bottom = 18
      Align = alRight
      Brush.Color = clRed
      Shape = stCircle
      ExplicitLeft = 1168
      ExplicitTop = 21
      ExplicitHeight = 13
    end
    object BtnConnectWs: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 75
      Height = 27
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Connectar'
      TabOrder = 0
      OnClick = BtnConnectWsClick
      ExplicitTop = 9
    end
    object BtnDisconnectWs: TButton
      AlignWithMargins = True
      Left = 96
      Top = 11
      Width = 75
      Height = 27
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Desconectar'
      TabOrder = 1
      OnClick = BtnDisconnectWsClick
    end
  end
  object sgcWebSocketClient1: TsgcWebSocketClient
    Port = 80
    ConnectTimeout = 0
    ReadTimeout = -1
    WriteTimeout = 0
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = False
    Authentication.Basic.Enabled = False
    Authentication.Token.Enabled = False
    Authentication.Token.AuthName = 'Bearer'
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 9
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.CleanDisconnect = False
    Options.FragmentedMessages = frgOnlyBuffer
    Options.Parameters = '/'
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = False
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    QueueOptions.Binary.Level = qmNone
    QueueOptions.Ping.Level = qmNone
    QueueOptions.Text.Level = qmNone
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    TLSOptions.VerifyCertificate = False
    TLSOptions.VerifyDepth = 0
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    TLSOptions.OpenSSL_Options.LibPath = oslpNone
    TLSOptions.SChannel_Options.CertStoreName = scsnMY
    TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    Left = 80
    Top = 40
  end
  object TimerShape: TTimer
    Interval = 500
    OnTimer = TimerShapeTimer
    Left = 16
    Top = 48
  end
end
