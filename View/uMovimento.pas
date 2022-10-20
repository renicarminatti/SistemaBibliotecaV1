unit uMovimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Controller.Student;

type
  TfMovimento = class(TForm)
    pnlAll: TPanel;
    edtFAluno: TLabeledEdit;
    pnlTop: TPanel;
    lblEntity: TLabel;
    btnClose: TSpeedButton;
    btnFAluno: TSpeedButton;
    dbgrdFAluno: TDBGrid;
    qryFAluno: TFDQuery;
    dsFAluno: TDataSource;
    qryFAlunoID: TFDAutoIncField;
    qryFAlunoNAME: TStringField;
    procedure btnCloseClick(Sender: TObject);
    procedure btnFAlunoClick(Sender: TObject);
    procedure edtFAlunoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMovimento: TfMovimento;

implementation

uses
  uDM, uMain;

{$R *.dfm}

procedure TfMovimento.btnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TfMovimento.btnFAlunoClick(Sender: TObject);
begin
 With qryFAluno do
  begin
    Close;
    SQL.Clear;;
    SQL.Add('SELECT');
    SQL.Add('ID,');
    SQL.Add('NAME');
    SQL.Add('FROM');
    SQL.Add('STUDENT');
    if Trim(edtFAluno.Text) <> '' then
    begin
      SQL.Add('WHERE');
      SQL.Add('NAME LIKE :NAME');
      ParamByName('NAME').AsString := '%'+edtFAluno.Text+'%';
    end;
    Open();
    dbgrdFAluno.Height := 200;
    dbgrdFAluno.Visible := True;
  end;

end;

procedure TfMovimento.edtFAlunoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then btnFAluno.Click;

end;

end.
