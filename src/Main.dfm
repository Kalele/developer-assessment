object FMain: TFMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 461
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 1124
    Height = 461
    Align = alClient
    AutoSize = True
    Caption = 'pnlMain'
    TabOrder = 0
    ExplicitWidth = 1114
    ExplicitHeight = 443
  end
  object MainMenu1: TMainMenu
    Left = 784
    Top = 1
    object mnCustomers: TMenuItem
      Caption = 'Customers'
      OnClick = mnCustomersClick
    end
    object mnTansactions: TMenuItem
      Caption = 'Transactions'
      OnClick = mnTansactionsClick
    end
    object mnEnquiries: TMenuItem
      Caption = 'Enquiries'
      OnClick = mnEnquiriesClick
    end
    object mnBulk: TMenuItem
      Caption = 'Bulk Transactions'
      OnClick = mnBulkClick
    end
  end
end
