unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  dxGDIPlusClasses, Controller.User, Model.User;

type
  TfLogin = class(TForm)
    pnlAll: TPanel;
    pnlDados: TPanel;
    pnlTop: TPanel;
    lblLogin: TLabel;
    edtUser: TLabeledEdit;
    edtPass: TLabeledEdit;
    imglogo: TImage;
    btnLogin: TSpeedButton;
    btnClose: TSpeedButton;
    procedure btnCloseClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure edtPassKeyPress(Sender: TObject; var Key: Char);
    procedure edtUserKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

uses
  uMain;

{$R *.dfm}

procedure TfLogin.btnCloseClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TfLogin.btnLoginClick(Sender: TObject);
var
 ControllerUser : TControllerUser;
 User : TUser;
begin
 ControllerUser := TControllerUser.Create;
 User := TUser.Create;
 try
  ControllerUser.Login(edtUser.Text, edtPass.Text, User);
  if User.Id <> 0 then Close;
  fMain.User := User;
 finally
  FreeAndNil(ControllerUser);
  FreeAndNil(User);
 end;
end;

procedure TfLogin.edtPassKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then btnLogin.Click;

end;

procedure TfLogin.edtUserKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then edtPass.SetFocus;
end;

end.
