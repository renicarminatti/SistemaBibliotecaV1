unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  dxGDIPlusClasses, Controller.User, Controller.Config, Model.Config, Model.User;

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
 ControllerUser      : TControllerUser;
 ControllerConfig    : TControllerConfig;
begin
 ControllerUser      := TControllerUser.Create;
 ControllerConfig    := TControllerConfig.Create;
 fMain.Config              := TConfig.create;
 fMain.User                := TUser.Create;
 try
  ControllerUser.Login(edtUser.Text, edtPass.Text, fMain.User);
  if fMain.User.Id <> 0 then
  begin
   ControllerConfig.CarregaConfig(fMain.Config);

   Close;
  end;
 finally
  FreeAndNil(ControllerUser);
  FreeAndNil(ControllerConfig);
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
