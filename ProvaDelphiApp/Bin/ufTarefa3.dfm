object fTarefa3: TfTarefa3
  Left = 0
  Top = 0
  Caption = 'Tarefa 3'
  ClientHeight = 366
  ClientWidth = 532
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
  object lblValoresPorProjeto: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 13
    Caption = 'Valores Por Projeto:'
  end
  object lblTotal: TLabel
    Left = 399
    Top = 262
    Width = 40
    Height = 13
    Caption = 'Total R$'
  end
  object lblTotalDivisoes: TLabel
    Left = 399
    Top = 309
    Width = 86
    Height = 13
    Caption = 'Total Divis'#245'es R$:'
  end
  object dbgrdProjetos: TDBGrid
    Left = 8
    Top = 23
    Width = 516
    Height = 233
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnTotal: TButton
    Left = 318
    Top = 277
    Width = 75
    Height = 25
    Caption = 'Obter Total'
    TabOrder = 1
    OnClick = btnTotalClick
  end
  object btnTotalDivisoes: TButton
    Left = 288
    Top = 325
    Width = 105
    Height = 25
    Caption = 'Obter Total Divis'#245'es'
    TabOrder = 2
    OnClick = btnTotalDivisoesClick
  end
  object edtTotal: TEdit
    Left = 399
    Top = 279
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtTotalDivisoes: TEdit
    Left = 399
    Top = 327
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
