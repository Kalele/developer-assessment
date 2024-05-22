object FEnquiries: TFEnquiries
  Left = 0
  Top = 0
  Caption = 'Enquiries'
  ClientHeight = 349
  ClientWidth = 840
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    840
    349)
  TextHeight = 15
  object Label2: TLabel
    Left = 591
    Top = 19
    Width = 76
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Sort by name :'
    ExplicitLeft = 621
  end
  object Label1: TLabel
    Left = 8
    Top = 19
    Width = 102
    Height = 15
    Caption = 'Search by Account:'
  end
  object Label3: TLabel
    Left = 598
    Top = 144
    Width = 69
    Height = 15
    Anchors = [akTop, akRight]
    Caption = 'Sort by date :'
    ExplicitLeft = 638
  end
  object grdCustomers: TDBGrid
    Left = 0
    Top = 46
    Width = 810
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    OnCellClick = grdCustomersCellClick
    OnKeyUp = grdCustomersKeyUp
  end
  object grdTransactions: TDBGrid
    Left = 0
    Top = 171
    Width = 840
    Height = 178
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
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
  object btnDESCSort1: TButton
    Left = 722
    Top = 140
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'DESC'
    TabOrder = 7
    OnClick = btnDESCSort1Click
    ExplicitLeft = 712
  end
  object btnASCSort1: TButton
    Left = 685
    Top = 140
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'ASC'
    TabOrder = 6
    OnClick = btnASCSort1Click
    ExplicitLeft = 675
  end
  object btnCNCLSort1: TButton
    Left = 759
    Top = 140
    Width = 31
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'CNCL'
    TabOrder = 8
    OnClick = btnCNCLSort1Click
    ExplicitLeft = 749
  end
end
