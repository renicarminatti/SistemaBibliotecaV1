unit uCadStudent;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadPadrao, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Controller.Student, Model.Student,
  System.Actions, Vcl.ActnList;

type
  TfCadStudent = class(TfCadPadrao)
    qrylistID: TFDAutoIncField;
    qrylistNAME: TStringField;
    qrylistCLASS: TStringField;
    qrylistENABLED: TBooleanField;
    edtId: TLabeledEdit;
    edtName: TLabeledEdit;
    lblPerfil: TLabel;
    dtpBirthDate: TDateTimePicker;
    edtClass: TLabeledEdit;
    chkEnabled: TCheckBox;
    qrylistBIRTHDATE: TDateField;
    qrylistAGE: TFloatField;
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
  fCadStudent: TfCadStudent;

implementation

{$R *.dfm}

procedure TfCadStudent.btEditarClick(Sender: TObject);
begin
  inherited;
  vAction               := 'EDITAR';
  edtId.Text            := qrylistId.AsString;
  edtName.Text          := qrylistNAME.AsString;
  dtpBirthDate.date     := qrylistBIRTHDATE.Value;
  edtClass.Text         := qrylistCLASS.AsString;
  chkEnabled.Checked    := qrylistENABLED.Value;
end;

procedure TfCadStudent.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtpBirthDate.Date     := Now;
  chkEnabled.Checked    := True;
  edtId.Clear;
  edtName.Clear;
  edtClass.Clear;
  vAction := 'NOVO';

end;

procedure TfCadStudent.btnSalvarClick(Sender: TObject);
var
 ControllerStudent : TControllerStudend;
 Student : TStudent;
begin
  ControllerStudent := TControllerStudend.Create;
  Student := TStudent.Create;
  try
    if vAction = 'NOVO' then
     begin
       Student.Name        := edtName.Text;
       Student.BirthDate   := dtpBirthDate.Date;
       Student.Class_      := edtClass.Text;
       ControllerStudent.Novo(Student);
     end;
    if vAction = 'EDITAR' then
     begin
       Student.Id          := qrylistId.Value;
       Student.Name        := edtName.Text;
       Student.BirthDate   := dtpBirthDate.Date;
       Student.Class_      := edtClass.Text;
       Student.Enabled     := chkEnabled.Checked;
       ControllerStudent.Editar(Student);
     end;
     qrylist.Refresh;
     inherited;
  finally
    FreeAndNil(ControllerStudent);
    FreeAndNil(Student);
  end;

end;

procedure TfCadStudent.dbgrdListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
   If qrylistENABLED.Value = False then
    dbgrdLista.Canvas.Font.Color:= clRed;
     dbgrdLista.DefaultDrawDataCell(Rect, dbgrdLista.columns[datacol].field, State);
end;

end.
