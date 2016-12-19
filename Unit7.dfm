object Form7: TForm7
  Left = 566
  Top = 149
  Width = 629
  Height = 100
  Caption = #1048#1079#1084#1077#1085#1080#1090#1100
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 8
    Top = 8
    Width = 121
    Height = 22
    Caption = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 144
    Top = 8
    Width = 47
    Height = 22
    Caption = #1062#1074#1077#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 8
    Width = 29
    Height = 22
    Caption = #1042#1077#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 32
    Width = 129
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 144
    Top = 32
    Width = 105
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 256
    Top = 32
    Width = 105
    Height = 23
    TabOrder = 2
  end
  object Button1: TButton
    Left = 488
    Top = 32
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 408
    Top = 32
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 576
    Top = 32
  end
end
