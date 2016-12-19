object Form5: TForm5
  Left = 529
  Top = 226
  Width = 629
  Height = 141
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
    Width = 45
    Height = 22
    Caption = #1060#1048#1054
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 152
    Top = 8
    Width = 178
    Height = 22
    Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 360
    Top = 8
    Width = 48
    Height = 22
    Caption = #1040#1076#1088#1077#1089
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 488
    Top = 8
    Width = 71
    Height = 22
    Caption = #1058#1077#1083#1077#1092#1086#1085
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
    Left = 152
    Top = 32
    Width = 185
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 360
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 488
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object Button1: TButton
    Left = 536
    Top = 72
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 456
    Top = 72
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object IBQuery1: TIBQuery
    Database = Form1.IBDatabase1
    Transaction = Form1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 24
    Top = 64
  end
end
