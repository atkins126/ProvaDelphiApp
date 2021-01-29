object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    635
    299)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 304
    Top = 70
    Width = 26
    Height = 13
    Anchors = []
    Caption = 'Timer'
  end
  object Label3: TLabel
    Left = 216
    Top = 92
    Width = 43
    Height = 13
    Anchors = []
    Caption = 'Thread 1'
  end
  object Label2: TLabel
    Left = 216
    Top = 119
    Width = 43
    Height = 13
    Anchors = []
    Caption = 'Thread 2'
  end
  object Gauge1: TGauge
    AlignWithMargins = True
    Left = 9
    Top = 238
    Width = 617
    Height = 26
    Margins.Left = 9
    Margins.Right = 9
    Align = alBottom
    ForeColor = clSkyBlue
    Progress = 0
    ExplicitLeft = 4
  end
  object Gauge2: TGauge
    AlignWithMargins = True
    Left = 9
    Top = 270
    Width = 617
    Height = 26
    Margins.Left = 9
    Margins.Right = 9
    Align = alBottom
    ForeColor = clSkyBlue
    Progress = 0
    ExplicitLeft = 4
  end
  object btnprocessar: TButton
    Left = 282
    Top = 159
    Width = 75
    Height = 25
    Anchors = []
    Caption = 'Processar'
    TabOrder = 2
    OnClick = btnprocessarClick
  end
  object edtTime2: TEdit
    Left = 268
    Top = 116
    Width = 100
    Height = 21
    Anchors = []
    TabOrder = 1
  end
  object edtTime1: TEdit
    Left = 268
    Top = 89
    Width = 100
    Height = 21
    Anchors = []
    TabOrder = 0
  end
end
