object Form1: TForm1
  Left = 209
  Top = 264
  Width = 916
  Height = 556
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -40
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 46
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 900
    Height = 500
    Caption = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 25
      Top = 23
      Width = 850
      Height = 218
      AutoSize = False
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      WordWrap = True
    end
    object Button1: TButton
      Left = 0
      Top = 248
      Width = 900
      Height = 100
      Caption = #1044#1072
      TabOrder = 0
      OnClick = ButtonYes
    end
    object Button2: TButton
      Left = 0
      Top = 344
      Width = 900
      Height = 100
      Caption = #1053#1077#1090
      TabOrder = 1
      OnClick = ButtonNo
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 900
    Height = 500
    Caption = #1050#1086#1085#1077#1094
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 25
      Top = 40
      Width = 850
      Height = 73
      AutoSize = False
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 25
      Top = 120
      Width = 850
      Height = 73
      AutoSize = False
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label4: TLabel
      Left = 25
      Top = 208
      Width = 850
      Height = 73
      AutoSize = False
      Caption = 'Label2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Edit1: TEdit
      Left = 25
      Top = 320
      Width = 850
      Height = 49
      AutoSize = False
      TabOrder = 0
      Text = #1042#1072#1096#1077' '#1080#1084#1103'?'
    end
    object Button3: TButton
      Left = 304
      Top = 376
      Width = 297
      Height = 73
      Caption = 'Save and exit'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
end
