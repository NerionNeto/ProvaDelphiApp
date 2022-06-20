object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 1'
  ClientHeight = 286
  ClientWidth = 491
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblColunas: TLabel
    Left = 16
    Top = 13
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblTarefas: TLabel
    Left = 152
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lblCondicoes: TLabel
    Left = 287
    Top = 13
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lblSQLGerado: TLabel
    Left = 16
    Top = 138
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object mmColunas: TMemo
    Left = 16
    Top = 32
    Width = 113
    Height = 89
    TabOrder = 0
  end
  object mmTabelas: TMemo
    Left = 152
    Top = 32
    Width = 113
    Height = 89
    TabOrder = 1
  end
  object mmCondicoes: TMemo
    Left = 287
    Top = 32
    Width = 113
    Height = 89
    TabOrder = 2
  end
  object btnGerarSQL: TButton
    Left = 408
    Top = 96
    Width = 75
    Height = 25
    Caption = 'GeraSQL'
    TabOrder = 3
    OnClick = btnGerarSQLClick
  end
  object mmSQLGerado: TMemo
    Left = 16
    Top = 157
    Width = 467
    Height = 121
    TabOrder = 4
  end
end
