unit uCadBook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Controller.Book, Model.Book,
  System.Actions, Vcl.ActnList;

type
  TfCadBook = class(TfCadPadrao)
    qrylistID: TFDAutoIncField;
    qrylistNAME: TStringField;
    qrylistAUTHOR: TStringField;
    qrylistPUBLISHER: TStringField;
    qrylistGENRE: TStringField;
    edtId: TLabeledEdit;
    edtName: TLabeledEdit;
    edtAuthor: TLabeledEdit;
    edtPublisher: TLabeledEdit;
    edtGenre: TLabeledEdit;
    qrylistAVAILABLE: TBooleanField;
    procedure btnNovoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbgrdListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    vAction : string;
  public
    { Public declarations }
  end;

var
  fCadBook: TfCadBook;

implementation

{$R *.dfm}

procedure TfCadBook.btEditarClick(Sender: TObject);
begin
  inherited;
  edtId.text         := qrylistID.AsString;
  edtName.text       := qrylistNAME.AsString;
  edtAuthor.text     := qrylistAUTHOR.AsString;
  edtPublisher.text  := qrylistPUBLISHER.AsString;
  edtGenre.text      := qrylistGENRE.AsString;
  vAction            := 'EDITAR';
end;

procedure TfCadBook.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtId.Clear;
  edtName.Clear;
  edtAuthor.Clear;
  edtPublisher.Clear;
  edtGenre.Clear;
  vAction := 'NOVO';
end;


procedure TfCadBook.btnSalvarClick(Sender: TObject);
var
 ControllerBook : TControllerBook;
 Book : TBook;
begin

  ControllerBook := TControllerBook.Create;
  Book := TBook.Create;
  try
    if vAction = 'NOVO' then
     begin
       Book.Name        := edtName.Text;
       Book.Author      := edtAuthor.Text;
       Book.Publisher   := edtPublisher.Text;
       Book.Genre       := edtGenre.Text;
       ControllerBook.Novo(Book);
     end;
    if vAction = 'EDITAR' then
     begin
       Book.Id          := qrylistId.Value;
       Book.Name        := edtName.Text;
       Book.Author      := edtAuthor.Text;
       Book.Publisher   := edtPublisher.Text;
       Book.Genre       := edtGenre.Text;
       ControllerBook.Editar(Book);
     end;
     qrylist.Refresh;
     inherited;
  finally
    FreeAndNil(ControllerBook);
    FreeAndNil(Book);
  end;

end;

procedure TfCadBook.dbgrdListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  If qrylistAVAILABLE.Value = False then
    dbgrdLista.Canvas.Font.Color := clRed;
     dbgrdLista.DefaultDrawDataCell(Rect, dbgrdLista.columns[datacol].field, State);
end;

end.
