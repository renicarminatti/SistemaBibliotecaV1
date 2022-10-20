unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Model.User, dxGDIPlusClasses;

type
  TfMain = class(TForm)
    pnlMenu: TPanel;
    pnlAll: TPanel;
    btnCadastros: TSpeedButton;
    btnMenu: TSpeedButton;
    btnMovimento: TSpeedButton;
    pnlDiv1: TPanel;
    pnlTop: TPanel;
    lblEntity: TLabel;
    pnlSubMenuMovimento: TPanel;
    pnlSubMenuCadastro: TPanel;
    btnClose: TSpeedButton;
    btnMax: TSpeedButton;
    btnAluno: TSpeedButton;
    btnBlibliotecario: TSpeedButton;
    btnUsuario: TSpeedButton;
    btnLivro: TSpeedButton;
    btnEmprestimo: TSpeedButton;
    imglogo: TImage;
    procedure btnMenuClick(Sender: TObject);
    procedure btnMaxClick(Sender: TObject);
    procedure btnMovimentoClick(Sender: TObject);
    procedure pnlAllMouseEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrosClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure btnBlibliotecarioClick(Sender: TObject);
    procedure btnAlunoClick(Sender: TObject);
    procedure btnLivroClick(Sender: TObject);
    procedure btnEmprestimoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlTopMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    procedure SetLayout;
    procedure EscondeSubMenus;
    { Private declarations }
  public
    { Public declarations }
    User : TUser;
  end;

var
  fMain: TfMain;
  mExpandido : Boolean;


implementation

uses
  uLogin, uCadUser;

{$R *.dfm}

procedure TfMain.btnAlunoClick(Sender: TObject);
begin
 EscondeSubMenus;

end;

procedure TfMain.btnBlibliotecarioClick(Sender: TObject);
begin
 EscondeSubMenus;

end;

procedure TfMain.btnCadastrosClick(Sender: TObject);
begin
 pnlSubMenuCadastro.Left     := 0;
 pnlSubMenuCadastro.Visible  := not pnlSubMenuCadastro.Visible;
 pnlSubMenuMovimento.Visible := False;
end;

procedure TfMain.SetLayout;
begin
  pnlSubMenuMovimento.Top := btnMovimento.Top;
  pnlSubMenuCadastro.Top := btnCadastros.Top;
end;

procedure TfMain.EscondeSubMenus;
begin
  pnlSubMenuMovimento.Visible := False;
  pnlSubMenuCadastro.Visible := False;
end;

procedure TfMain.btnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfMain.btnEmprestimoClick(Sender: TObject);
begin
 User := TUser.Create;
 EscondeSubMenus;
end;

procedure TfMain.btnLivroClick(Sender: TObject);
begin
 EscondeSubMenus;

end;

procedure TfMain.btnMaxClick(Sender: TObject);
begin
 WindowState := wsMaximized;
end;

procedure TfMain.btnMenuClick(Sender: TObject);
begin
 if mExpandido then
  pnlMenu.Width := 140
  else
  pnlMenu.Width := 51;
 mExpandido := not mExpandido;
end;

procedure TfMain.btnMovimentoClick(Sender: TObject);
begin
 pnlSubMenuMovimento.Left    := 0;
 pnlSubMenuMovimento.Visible := not pnlSubMenuMovimento.Visible;
 pnlSubMenuCadastro.Visible := False;
end;

procedure TfMain.btnUsuarioClick(Sender: TObject);
begin
 EscondeSubMenus;
 if fCadUser = nil then
 begin
   fCadUser := TfCadUser.Create(Self);
   fCadUser.ShowModal;
   FreeAndNil(fCadUser);
 end;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  SetLayout;
end;

procedure TfMain.FormShow(Sender: TObject);
begin
  if fLogin = nil then
  begin
    fLogin := TfLogin.Create(Self);
    fLogin.ShowModal;
  end;
end;

procedure TfMain.pnlAllMouseEnter(Sender: TObject);
begin
  EscondeSubMenus;
end;

procedure TfMain.pnlTopMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

end.