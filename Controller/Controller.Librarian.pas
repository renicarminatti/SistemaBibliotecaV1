unit Controller.Librarian;

interface

uses Model.Librarian, uDM, SysUtils, Data.DB, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TControllerLibrarian = class
  private

  public

    procedure Novo(mLibrarian: TLibrarian) overload;
    procedure Editar(mLibrarian: TLibrarian) overload;
  end;

implementation


procedure TControllerLibrarian.Novo( mLibrarian: TLibrarian);
var
  Erro: string;
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    if Trim(mLibrarian.Name) = '' then
    begin
      MessageDlg('Campo nome � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mLibrarian.Name) < 4 then
    begin
      MessageDlg('Nome deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Trim(mLibrarian.Document) = '' then
    begin
      MessageDlg('Campo documento � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mLibrarian.Document) < 4 then
    begin
      MessageDlg('documento deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    with Query do
    begin
      Connection := DM.con;
      Close;
      SQL.Add(' INSERT INTO LIBRARIAN (      ');
      SQL.Add('     NAME,                    ');
      SQL.Add('     DOCUMENT,                ');
      SQL.Add('     ADDRESS                  ');
      SQL.Add('      ) VALUES (              ');
      SQL.Add('       :NAME,                 ');
      SQL.Add('       :DOCUMENT,             ');
      SQL.Add('       :ADDRESS               ');
      SQL.Add(');                            ');
      ParamByName('NAME').AsString := mLibrarian.Name;
      ParamByName('DOCUMENT').AsString := mLibrarian.Document;
      ParamByName('ADDRESS').AsString := mLibrarian.Address;
    end;
    try
      Query.ExecSQL;
      MessageDlg('Gravado com sucesso!', mtConfirmation, [mbOK], 0, mbOK);
      except
      on E: Exception do
      begin
        Erro := 'Falha ao gravar bibliotec�rio ';
        Erro := Erro + sLineBreak + E.Message;
        raise Exception.Create(Erro);
      end;
    end;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TControllerLibrarian.Editar( mLibrarian: TLibrarian);
var
  Erro: string;
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    if Trim(mLibrarian.Name) = '' then
    begin
      MessageDlg('Campo nome � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mLibrarian.Name) < 4 then
    begin
      MessageDlg('Nome deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Trim(mLibrarian.Document) = '' then
    begin
      MessageDlg('Campo documento � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mLibrarian.Document) < 4 then
    begin
      MessageDlg('documento deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    with Query do
    begin
      Connection := DM.con;
      Close;
      SQL.Add('  UPDATE LIBRARIAN                 ');
      SQL.Add('     SET                           ');
      SQL.Add('     NAME = :NAME,                 ');
      SQL.Add('     DOCUMENT = :DOCUMENT,          ');
      SQL.Add('     ADDRESS = :ADDRESS            ');
      SQL.Add('     WHERE ID = :ID;               ');
      ParamByName('ID').AsInteger := mLibrarian.Id;
      ParamByName('NAME').AsString := mLibrarian.Name;
      ParamByName('DOCUMENT').AsString := mLibrarian.Document;
      ParamByName('ADDRESS').AsString := mLibrarian.Address;
    end;
    try
      Query.ExecSQL;
      MessageDlg('Editado com sucesso!', mtConfirmation, [mbOK], 0, mbOK);
      except
      on E: Exception do
      begin
        Erro := 'Falha ao editar bibliotec�rio ';
        Erro := Erro + sLineBreak + E.Message;
        raise Exception.Create(Erro);
      end;
    end;
  finally
    FreeAndNil(Query);
  end;
end;

end.
