object FTransactions: TFTransactions
  Left = 0
  Top = 0
  Caption = 'Transaction'
  ClientHeight = 177
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    840
    177)
  TextHeight = 15
  object Label2: TLabel
    Left = 598
    Top = 19
    Width = 69
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Sort by date :'
    ExplicitLeft = 638
  end
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 102
    Height = 15
    Caption = 'Search by Account:'
  end
  object grdTransactions: TDBGrid
    Left = 2
    Top = 46
    Width = 800
    Height = 92
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btnAdd: TButton
    Left = 553
    Top = 144
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    TabOrder = 6
    OnClick = btnAddClick
    ExplicitLeft = 543
    ExplicitTop = 126
  end
  object btnEdit: TButton
    Left = 634
    Top = 144
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Edit'
    TabOrder = 7
    OnClick = btnEditClick
    ExplicitLeft = 624
    ExplicitTop = 126
  end
  object btnDelete: TButton
    Left = 715
    Top = 144
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Delete'
    TabOrder = 8
    OnClick = btnDeleteClick
    ExplicitLeft = 705
    ExplicitTop = 126
  end
  object btnCNCLSort: TButton
    Left = 759
    Top = 15
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'CNCL'
    TabOrder = 4
    OnClick = btnCNCLSortClick
    ExplicitLeft = 749
  end
  object btnDESCSort: TButton
    Left = 722
    Top = 15
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'DESC'
    TabOrder = 3
    OnClick = btnDESCSortClick
    ExplicitLeft = 712
  end
  object btnASCSort: TButton
    Left = 685
    Top = 15
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'ASC'
    TabOrder = 2
    OnClick = btnASCSortClick
    ExplicitLeft = 675
  end
  object btnSearch: TButton
    Left = 463
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object edtSearch: TEdit
    Left = 116
    Top = 17
    Width = 341
    Height = 23
    TabOrder = 0
  end
end
