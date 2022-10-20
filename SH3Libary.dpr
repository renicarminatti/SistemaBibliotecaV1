program SH3Libary;

uses
  Vcl.Forms,
  uMain in 'View\uMain.pas' {fMain},
  Model.User in 'Model\Model.User.pas',
  Model.Librarian in 'Model\Model.Librarian.pas',
  Model.Student in 'Model\Model.Student.pas',
  Model.Book in 'Model\Model.Book.pas',
  Controller.User in 'Controller\Controller.User.pas',
  uDM in 'DataModule\uDM.pas' {DM: TDataModule},
  uLogin in 'View\uLogin.pas' {fLogin},
  uCadPadrao in 'View\uCadPadrao.pas' {fCadPadrao},
  uCadUser in 'View\uCadUser.pas' {fCadUser};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfCadPadrao, fCadPadrao);
  Application.Run;
end.
