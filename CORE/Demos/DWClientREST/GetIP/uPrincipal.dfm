object fClientREST: TfClientREST
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Client REST'
  ClientHeight = 310
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Button1: TButton
    Left = 192
    Top = 19
    Width = 107
    Height = 25
    Caption = 'Get for Events'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 321
    Top = 19
    Width = 107
    Height = 25
    Caption = 'Get for Command'
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 50
    Width = 698
    Height = 260
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edCNPJ: TEdit
    Left = 55
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '00000000000191'
  end
  object DWClientREST1: TDWClientREST
    UseSSL = False
    SSLVersions = []
    UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    ContentType = 'application/json'
    RequestCharset = esUtf8
    ProxyOptions.BasicAuthentication = False
    ProxyOptions.ProxyPort = 0
    RequestTimeOut = 10000
    AllowCookies = False
    HandleRedirects = False
    VerifyCert = False
    AuthOptions.HasAuthentication = False
    OnBeforeGet = DWClientREST1BeforeGet
    Left = 80
    Top = 96
  end
  object DWResponseTranslator1: TDWResponseTranslator
    ElementAutoReadRootIndex = True
    ElementRootBaseIndex = -1
    RequestOpen = rtGet
    RequestInsert = rtPost
    RequestEdit = rtPost
    RequestDelete = rtDelete
    FieldDefs = <>
    ClientREST = DWClientREST1
    Left = 112
    Top = 96
  end
  object RESTDWClientSQL1: TRESTDWClientSQL
    FieldDefs = <>
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    DWResponseTranslator = DWResponseTranslator1
    Left = 144
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = RESTDWClientSQL1
    Left = 176
    Top = 96
  end
end
