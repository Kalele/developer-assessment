unit EditTransaction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Datamodule, Vcl.DBCtrls, Data.DB, Vcl.ComCtrls;

type
  TFEditTransactions = class(TForm)
    edtReference: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtAmount: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    dtpDate: TDateTimePicker;
    cbType: TComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FIsAddMode: Boolean;
    procedure UpdateCustomerBalance(const AccountNumber: string);
  public
    procedure Initialize(AddMode: Boolean);
  end;

var
  FEditTransactions: TFEditTransactions;

implementation

{$R *.dfm}

procedure TFEditTransactions.FormCreate(Sender: TObject);
begin
  Position := poScreenCenter;
end;

procedure TFEditTransactions.FormShow(Sender: TObject);
begin
  if DataModule1.FdsTransactions.DataSet.FieldByName('DC').AsString = 'C' then
    cbType.Text := 'Credit'
  else
    cbType.Text := 'Debit';
end;

procedure TFEditTransactions.Initialize(AddMode: Boolean);
begin
  FIsAddMode := AddMode;
  edtAmount.DataSource := DataModule1.FdsTransactions;
  edtAmount.DataField := 'Amount';
  edtReference.DataSource := DataModule1.FdsTransactions;
  edtReference.DataField := 'Account';

  if FIsAddMode then
    DataModule1.FTransactions.Append
  else
    DataModule1.FTransactions.Edit;

  dtpDate.Date := DataModule1.FdsTransactions.DataSet.FieldByName('Date').AsDateTime;
end;

procedure TFEditTransactions.btnCancelClick(Sender: TObject);
begin
  DataModule1.FTransactions.Cancel;
  Close;
end;

procedure TFEditTransactions.btnConfirmClick(Sender: TObject);
var
  DCValue: string;
  AccountNumber: string;
begin
  DataModule1.FdsTransactions.DataSet.Edit;
  DataModule1.FdsTransactions.DataSet.FieldByName('Date').AsDateTime := dtpDate.Date;

  if cbType.Text = 'Credit' then
    DCValue := 'C'
  else
    DCValue := 'D';

  DataModule1.FdsTransactions.DataSet.FieldByName('DC').AsString := DCValue;
  AccountNumber := DataModule1.FdsTransactions.DataSet.FieldByName('Account').AsString;
  DataModule1.FTransactions.Post;

  UpdateCustomerBalance(AccountNumber);
  Close;
end;

procedure TFEditTransactions.UpdateCustomerBalance(const AccountNumber: string);
var
  Balance: Double;
begin
  Balance := 0.0;

  with DataModule1.ExecuteQuery('SELECT SUM(CASE WHEN DC = ''D'' THEN Amount ELSE -Amount END) AS Balance FROM Transactions WHERE Account = ' + QuotedStr(AccountNumber)) do
  begin
    Open;
    Balance := FieldByName('Balance').AsFloat;
    Close;
  end;

  with DataModule1.ExecuteQuery('SELECT * FROM Customers WHERE Account = ' + QuotedStr(AccountNumber)) do
  begin
    Open;
    if not Eof then
    begin
      Edit;
      FieldByName('Balance').AsFloat := Balance;
      Post;
    end;
    Close;
  end;
end;

end.

