unit uConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Controller.Config;

type
  TfConfig = class(TForm)
    pnlTop: TPanel;
    lblEntity: TLabel;
    btnClose: TSpeedButton;
    pnlAll: TPanel;
    pnlListaTop: TPanel;
    btnSalvar: TSpeedButton;
    edtMax: TLabeledEdit;
    edtDelay: TLabeledEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDelayKeyPress(Sender: TObject; var Key: Char);
    procedure edtMaxKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfig: TfConfig;

implementation

uses
  uMain;

{$R *.dfm}

procedure TfConfig.btnCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TfConfig.btnSalvarClick(Sender: TObject);
var
 ControllerConfig : TControllerConfig;
begin
  ControllerConfig := TControllerConfig.Create;

  try
   fMain.Config.MaxBookStudent     := StrToInt(edtMax.Text);
   fMain.Config.Delay              := StrToFloat(edtDelay.Text);
   ControllerConfig.EditaConfig(fMain.Config);
   Close;
  finally
   FreeAndNil(ControllerConfig);
  end;
end;

procedure TfConfig.edtDelayKeyPress(Sender: TObject; var Key: Char);
begin
 if  (key in ['.']) then key                   := #44;
 if not (key in ['0'..'9',',',#8]) then key    :=#0;
end;

procedure TfConfig.edtMaxKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9']) then key    :=#0;
end;

procedure TfConfig.FormCreate(Sender: TObject);
var
 ControllerConfig : TControllerConfig;
begin
  ControllerConfig     := TControllerConfig.Create;

  try
   edtMax.Text         := IntToStr(fMain.Config.MaxBookStudent);
   edtDelay.Text       := FloatToStr(fMain.Config.Delay);
  finally
   FreeAndNil(ControllerConfig);
  end;

end;

end.
