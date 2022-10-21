unit uCadLibrarian;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Controller.Librarian, Model.Librarian, System.Actions, Vcl.ActnList;

type
  TfCadLibrarian = class(TfCadPadrao)
    qrylistID: TFDAutoIncField;
    qrylistNAME: TStringField;
    qrylistDOCUMENT: TStringField;
    qrylistADDRESS: TStringField;
    edtId: TLabeledEdit;
    edtName: TLabeledEdit;
    edtDocument: TLabeledEdit;
    edtAddress: TLabeledEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    vAction : string;
  public
    { Public declarations }
  end;

var
  fCadLibrarian: TfCadLibrarian;

implementation

{$R *.dfm}

procedure TfCadLibrarian.btEditarClick(Sender: TObject);
begin
  inherited;
  vAction           := 'EDITAR';
  edtId.Text        := qrylistId.AsString;
  edtName.Text      := qrylistNAME.AsString;
  edtDocument.Text  := qrylistDOCUMENT.AsString;
  edtAddress.Text   := qrylistADDRESS.AsString;
end;

procedure TfCadLibrarian.btnNovoClick(Sender: TObject);
begin
  inherited;
  vAction := 'NOVO';
  edtId.Clear;
  edtName.Clear;
  edtDocument.Clear;
  edtAddress.Clear;
end;

procedure TfCadLibrarian.btnSalvarClick(Sender: TObject);
var
 ControllerLibrarian : TControllerLibrarian;
 Librarian : TLibrarian;
begin
  ControllerLibrarian := TControllerLibrarian.Create;
  Librarian := TLibrarian.Create;
  try
    if vAction = 'NOVO' then
     begin
       Librarian.Name       := edtName.Text;
       Librarian.Document   := edtDocument.Text;
       Librarian.Address    := edtAddress.Text;
       ControllerLibrarian.Novo(Librarian);
     end;
    if vAction = 'EDITAR' then
     begin
       Librarian.Id        := qrylistId.Value;
       Librarian.Name      := edtName.Text;
       Librarian.Document  := edtDocument.Text;
       Librarian.Address   := edtAddress.Text;
       ControllerLibrarian.Editar(Librarian);
     end;
     qrylist.Refresh;
     inherited;
  finally
    FreeAndNil(ControllerLibrarian);
    FreeAndNil(Librarian);
  end;
end;

end.
