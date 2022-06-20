object fTarefa2: TfTarefa2
  Left = 0
  Top = 0
  Caption = 'Tarefa 2'
  ClientHeight = 170
  ClientWidth = 237
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblMilisegundos: TLabel
    Left = 16
    Top = 11
    Width = 105
    Height = 13
    Caption = 'Informe Milisegundos:'
  end
  object btnThread: TButton
    Left = 147
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Thread'
    TabOrder = 0
    OnClick = btnThreadClick
  end
  object pbProgresso2: TProgressBar
    Left = 40
    Top = 119
    Width = 150
    Height = 17
    TabOrder = 1
  end
  object pbProgresso1: TProgressBar
    Left = 40
    Top = 79
    Width = 150
    Height = 17
    TabOrder = 2
  end
  object edtMilisegundos: TEdit
    Left = 16
    Top = 26
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = edtMilisegundosKeyPress
  end
end
