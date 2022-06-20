object fPrincipal: TfPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = Tarefas
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Tarefas: TMainMenu
    Left = 80
    Top = 32
    object menuTarefas: TMenuItem
      Caption = 'Tarefas'
      object menuTarefa1: TMenuItem
        Caption = 'Tarefa 1'
        OnClick = menuTarefa1Click
      end
      object menuTarefa2: TMenuItem
        Caption = 'Tarefa 2'
        OnClick = menuTarefa2Click
      end
      object menuTarefa3: TMenuItem
        Caption = 'Tarefa 3'
        OnClick = menuTarefa3Click
      end
    end
  end
end
