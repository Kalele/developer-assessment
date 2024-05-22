object FCustomers: TFCustomers
  Left = 0
  Top = 0
  Caption = 'Customers'
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
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 102
    Height = 15
    Caption = 'Search by Account:'
  end
  object Label2: TLabel
    Left = 588
    Top = 19
    Width = 76
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Sort by name :'
    ExplicitLeft = 648
  end
  object btnAdd: TButton
    Left = 543
    Top = 144
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Add'
    TabOrder = 0
    OnClick = btnAddClick
    ExplicitLeft = 533
    ExplicitTop = 126
  end
  object btnEdit: TButton
    Left = 624
    Top = 144
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Edit'
    TabOrder = 1
    OnClick = btnEditClick
    ExplicitLeft = 614
    ExplicitTop = 126
  end
  object btnDelete: TButton
    Left = 705
    Top = 144
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Delete'
    TabOrder = 2
    OnClick = btnDeleteClick
    ExplicitLeft = 695
    ExplicitTop = 126
  end
  object grdCustomers: TDBGrid
    Left = 0
    Top = 46
    Width = 790
    Height = 92
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object edtSearch: TEdit
    Left = 116
    Top = 17
    Width = 341
    Height = 23
    TabOrder = 4
  end
  object btnASCSort: TButton
    Left = 675
    Top = 15
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'ASC'
    TabOrder = 5
    OnClick = btnASCSortClick
    ExplicitLeft = 665
  end
  object btnDESCSort: TButton
    Left = 712
    Top = 15
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'DESC'
    TabOrder = 6
    OnClick = btnDESCSortClick
    ExplicitLeft = 702
  end
  object btnCNCLSort: TButton
    Left = 749
    Top = 15
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'CNCL'
    TabOrder = 7
    OnClick = btnCNCLSortClick
    ExplicitLeft = 739
  end
  object btnSearch: TButton
    Left = 463
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 8
    OnClick = btnSearchClick
  end
end
