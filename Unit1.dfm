object Form1: TForm1
  Left = 374
  Top = 53
  Width = 931
  Height = 865
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
  Color = clSilver
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 288
    Width = 68
    Height = 22
    Caption = #1048#1079#1076#1077#1083#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 536
    Width = 73
    Height = 22
    Caption = ' '#1044#1077#1090#1072#1083#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 48
    Width = 873
    Height = 225
    DataSource = DataSource1
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
  end
  object DBGrid2: TDBGrid
    Left = 24
    Top = 312
    Width = 873
    Height = 217
    DataSource = DataSource2
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    OnCellClick = DBGrid2CellClick
    OnDblClick = DBGrid2DblClick
  end
  object DBGrid3: TDBGrid
    Left = 24
    Top = 568
    Width = 873
    Height = 225
    DataSource = DataSource3
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 2
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = []
    OnCellClick = DBGrid3CellClick
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 16
    Width = 217
    Height = 30
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ItemHeight = 22
    ParentFont = False
    TabOrder = 3
    Text = #1042#1099#1073#1088#1072#1090#1100
    OnChange = ComboBox1Change
    Items.Strings = (
      #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      #1060#1080#1079#1080#1095#1077#1089#1082#1086#1077' '#1083#1080#1094#1086)
  end
  object Button1: TButton
    Left = 248
    Top = 16
    Width = 161
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 800
    Top = 280
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 800
    Top = 536
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 800
    Top = 800
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 696
    Top = 280
    Width = 97
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 696
    Top = 536
    Width = 97
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 696
    Top = 800
    Width = 97
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsItalic]
    ParentFont = False
    TabOrder = 10
    OnClick = Button7Click
  end
  object IBDatabase1: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 824
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 568
    Top = 88
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 600
    Top = 88
  end
  object DataSource1: TDataSource
    DataSet = IBQuery1
    Left = 632
    Top = 88
  end
  object IBTransaction2: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 576
    Top = 344
  end
  object IBQuery2: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    Left = 608
    Top = 344
  end
  object DataSource2: TDataSource
    DataSet = IBQuery2
    Left = 640
    Top = 344
  end
  object IBTransaction3: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 552
    Top = 632
  end
  object IBQuery3: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction3
    BufferChunks = 1000
    CachedUpdates = False
    Left = 584
    Top = 632
  end
  object DataSource3: TDataSource
    DataSet = IBQuery3
    Left = 616
    Top = 632
  end
end
