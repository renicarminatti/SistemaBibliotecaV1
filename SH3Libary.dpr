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
  uCadUser in 'View\uCadUser.pas' {fCadUser},
  uCadLibrarian in 'View\uCadLibrarian.pas' {fCadLibrarian},
  Controller.Librarian in 'Controller\Controller.Librarian.pas',
  Controller.Student in 'Controller\Controller.Student.pas',
  Controller.Book in 'Controller\Controller.Book.pas',
  Controller.Loan in 'Controller\Controller.Loan.pas',
  Model.Loan in 'Model\Model.Loan.pas',
  uCadStudent in 'View\uCadStudent.pas' {fCadStudent},
  uCadBook in 'View\uCadBook.pas' {fCadBook},
  uConfig in 'View\uConfig.pas' {fConfig},
  Model.Config in 'Model\Model.Config.pas',
  Controller.Config in 'Controller\Controller.Config.pas',
  uMovimento in 'View\uMovimento.pas' {fMovimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfCadPadrao, fCadPadrao);
  Application.Run;
end.
