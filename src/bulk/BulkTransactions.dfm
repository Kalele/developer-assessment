object FBulk: TFBulk
  Left = 0
  Top = 0
  Caption = 'FBulk'
  ClientHeight = 250
  ClientWidth = 838
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    838
    250)
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 21
    Width = 109
    Height = 15
    Caption = 'Import CSV file path:'
  end
  object edtImport: TEdit
    Left = 123
    Top = 18
    Width = 626
    Height = 23
    TabOrder = 0
    OnDblClick = edtImportDblClick
  end
  object btnImport: TButton
    Left = 755
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Import'
    TabOrder = 1
    OnClick = btnImportClick
  end
  object mmImport: TMemo
    Left = 0
    Top = 47
    Width = 790
    Height = 195
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    ExplicitWidth = 780
  end
  object OpenDialog1: TOpenDialog
    Left = 400
    Top = 120
  end
end
