object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 360
  ClientWidth = 642
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
  PixelsPerInch = 96
  TextHeight = 13
  object lblslqgerado: TLabel
    Left = 8
    Top = 179
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object Label1: TLabel
    Left = 8
    Top = 18
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 185
    Top = 18
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object Label3: TLabel
    Left = 361
    Top = 18
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object mColunas: TMemo
    Left = 8
    Top = 37
    Width = 161
    Height = 97
    TabOrder = 0
  end
  object mTabelas: TMemo
    Left = 185
    Top = 37
    Width = 161
    Height = 97
    TabOrder = 1
  end
  object mSqlGerado: TMemo
    AlignWithMargins = True
    Left = 8
    Top = 198
    Width = 626
    Height = 147
    Margins.Left = 8
    Margins.Right = 8
    Margins.Bottom = 15
    Align = alBottom
    TabOrder = 2
  end
  object btnGerarSql: TButton
    Left = 542
    Top = 28
    Width = 81
    Height = 40
    Caption = 'Gerar SQL'
    TabOrder = 3
    OnClick = btnGerarSqlClick
  end
  object btnLimpar: TButton
    Left = 542
    Top = 74
    Width = 81
    Height = 40
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
  object mCondicoes: TMemo
    Left = 361
    Top = 37
    Width = 161
    Height = 97
    TabOrder = 5
  end
end
