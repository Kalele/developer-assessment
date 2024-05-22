object FEditCustomer: TFEditCustomer
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Edit Customer'
  ClientHeight = 136
  ClientWidth = 333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 35
    Height = 15
    Caption = 'Name:'
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 48
    Height = 15
    Caption = 'Account:'
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 44
    Height = 15
    Caption = 'Balance:'
  end
  object edtName: TDBEdit
    Left = 65
    Top = 5
    Width = 256
    Height = 23
    DataField = 'Name'
    TabOrder = 0
  end
  object edtAccount: TDBEdit
    Left = 65
    Top = 37
    Width = 256
    Height = 23
    DataField = 'Account'
    TabOrder = 1
  end
  object edtBalance: TDBEdit
    Left = 65
    Top = 69
    Width = 256
    Height = 23
    DataField = 'Balance'
    Enabled = False
    TabOrder = 2
  end
  object btnCancel: TButton
    Left = 165
    Top = 98
    Width = 75
    Height = 25
    Caption = 'Canclel'
    TabOrder = 3
    OnClick = btnCancelClick
  end
  object btnConfirm: TButton
    Left = 246
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Confirm'
    TabOrder = 4
    OnClick = btnConfirmClick
  end
end
