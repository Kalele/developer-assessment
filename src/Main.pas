unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  ShowCustomers, ShowTransaction, ShowEnquiries, BulkTransactions;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    mnCustomers: TMenuItem;
    mnEnquiries: TMenuItem;
    pnlMain: TPanel;
    mnBulk: TMenuItem;
    procedure mnCustomersClick(Sender: TObject);
    procedure mnEnquiriesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnBulkClick(Sender: TObject);
    procedure mnTansactionsClick(Sender: TObject);
  private
    CurrentForm: TForm;
    procedure ShowForm(AFormClass: TFormClass);
  public
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.FormCreate(Sender: TObject);
begin
  WindowState := wsMaximized;
  Position := poScreenCenter;
end;

procedure TFMain.FormShow(Sender: TObject);
begin
  ShowForm(TFCustomers);
end;

procedure TFMain.mnBulkClick(Sender: TObject);
begin
  ShowForm(TFBulk);
end;

procedure TFMain.mnCustomersClick(Sender: TObject);
begin
  ShowForm(TFCustomers);
end;

procedure TFMain.mnEnquiriesClick(Sender: TObject);
begin
  ShowForm(TFEnquiries);
end;

procedure TFMain.mnTansactionsClick(Sender: TObject);
begin
   ShowForm(TFTransactions);
end;

procedure TFMain.ShowForm(AFormClass: TFormClass);
begin
  if Assigned(CurrentForm) then
  begin
    CurrentForm.Free;
    CurrentForm := nil;
  end;

  try
    CurrentForm := AFormClass.Create(Self);
    CurrentForm.Parent := pnlMain;
    CurrentForm.Align := alClient;
    CurrentForm.BorderStyle := bsNone;
    CurrentForm.Visible := True;
  except
    on E: Exception do
    begin
      ShowMessage('Error creating form: ' + E.Message);
      CurrentForm := nil;
    end;
  end;
end;

end.
