unit ShowTransaction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Datamodule, EditTransaction, Vcl.DBGrids;

type
  TFTransactions = class(TForm)
    grdTransactions: TDBGrid;
    btnAdd: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnCNCLSort: TButton;
    btnDESCSort: TButton;
    btnASCSort: TButton;
    Label2: TLabel;
    btnSearch: TButton;
    edtSearch: TEdit;
    Label1: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnASCSortClick(Sender: TObject);
    procedure btnDESCSortClick(Sender: TObject);
    procedure btnCNCLSortClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
  public
  end;

var
  FTransactions: TFTransactions;

implementation

{$R *.dfm}

procedure TFTransactions.FormCreate(Sender: TObject);
begin
  grdTransactions.DataSource := DataModule1.FdsTransactions;
end;

procedure TFTransactions.FormShow(Sender: TObject);
begin
  DataModule1.FTransactions.Filtered := False;
end;

procedure TFTransactions.btnASCSortClick(Sender: TObject);
begin
  DataModule1.FTransactions.Sort := 'Date ASC';
end;

procedure TFTransactions.btnCNCLSortClick(Sender: TObject);
begin
  DataModule1.FTransactions.Sort := '';
end;

procedure TFTransactions.btnDeleteClick(Sender: TObject);
begin
  if DataModule1.FTransactions.RecordCount > 0 then
  begin
    if MessageDlg('Are you sure you want to delete this transaction?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DataModule1.FTransactions.Delete;
      DataModule1.FTransactions.Refresh;
    end;
  end;
end;

procedure TFTransactions.btnDESCSortClick(Sender: TObject);
begin
  DataModule1.FTransactions.Sort := 'Date DESC';
end;

procedure TFTransactions.btnEditClick(Sender: TObject);
begin
  if DataModule1.FTransactions.RecordCount > 0 then
  begin
    FEditTransactions := TFEditTransactions.Create(nil);
    try
      FEditTransactions.Initialize(False);
      if FEditTransactions.ShowModal = mrOk then
      begin
        DataModule1.FTransactions.Refresh;
      end;
    finally
      FEditTransactions.Free;
    end;
  end;
end;

procedure TFTransactions.btnSearchClick(Sender: TObject);
begin
  DataModule1.FTransactions.Close;
  if edtSearch.Text <> '' then
    DataModule1.FTransactions.Filter := 'Account =' + QuotedStr(edtSearch.Text)
  else
    DataModule1.FTransactions.Filter := '';

  DataModule1.FTransactions.Filtered := True;
  DataModule1.FTransactions.Open;
end;

procedure TFTransactions.btnAddClick(Sender: TObject);
begin
  FEditTransactions := TFEditTransactions.Create(nil);
  try
    FEditTransactions.Initialize(True);
    if FEditTransactions.ShowModal = mrOk then
    begin
      DataModule1.FTransactions.Refresh;
    end;
  finally
    FEditTransactions.Free;
  end;
end;

end.

