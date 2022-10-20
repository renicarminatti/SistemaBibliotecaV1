unit Controller.User;

interface

uses Model.User, uDM, SysUtils, Data.DB, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TControllerUser = class
  private

  public
    procedure Login(vUser: String; vPassword: String; mUser: TUser) overload;
    procedure Novo(mUser: TUser) overload;
    procedure Editar(mUser: TUser) overload;
  end;

implementation


procedure TControllerUser.Login(vUser: String; vPassword: String; mUser: TUser);
var
  Erro: string;
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try

    with Query do
    begin
      Connection := DM.con;
      Close;
      SQL.Clear;
      SQL.Add('          SELECT * FROM                ');
      SQL.Add('           USER                        ');
      SQL.Add('          WHERE                        ');
      SQL.Add('          USER = :USER                 ');
      SQL.Add('           AND                         ');
      SQL.Add('          PASSWORD = :PASSWORD;        ');
      ParamByName('USER').AsString := vUser;
      ParamByName('PASSWORD').AsString := vPassword;
    end;
    try
     Query.Open;
      if Query.RecordCount = 1 then
      begin
        mUser.Id := Query.FieldByName('ID').AsInteger;;
        mUser.User := Query.FieldByName('USER').AsString;
        mUser.Password := Query.FieldByName('PASSWORD').AsString;
        mUser.Role := Query.FieldByName('ROLE').AsInteger;
      end
       else
        begin
          MessageDlg('Usu�rio ou senha invalido!', mtWarning, [mbOK], 0, mbOK);
        end;

      except
      on E: Exception do
      begin
        Erro := 'Falha ao Carregar Usu�rio ';
        Erro := Erro + sLineBreak + E.Message;
        raise Exception.Create(Erro);
      end;
    end;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TControllerUser.Novo( mUser: TUser);
var
  Erro: string;
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    if Trim(mUser.User) = '' then
    begin
      MessageDlg('Campo usu�rio � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mUser.User) < 4 then
    begin
      MessageDlg('O usu�rio deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Trim(mUser.Password) = '' then
    begin
      MessageDlg('Campo senha � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mUser.Password) < 4 then
    begin
      MessageDlg('O senha deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    with Query do
    begin
      Connection := DM.con;
      Close;
      SQL.Add(' INSERT INTO USER (      ');
      SQL.Add('     USER,               ');
      SQL.Add('     PASSWORD,           ');
      SQL.Add('     ROLE                ');
      SQL.Add('      ) VALUES (         ');
      SQL.Add('       :USER,            ');
      SQL.Add('       :PASSWORD,        ');
      SQL.Add('       :ROLE             ');
      SQL.Add(');                       ');
      ParamByName('USER').AsString := mUser.User;
      ParamByName('PASSWORD').AsString := mUser.Password;
      ParamByName('ROLE').AsInteger := mUser.Role;
    end;
    try
      Query.ExecSQL;
      MessageDlg('Gravado com sucesso!', mtConfirmation, [mbOK], 0, mbOK);
      except
      on E: Exception do
      begin
        Erro := 'Falha ao gravar Usu�rio ';
        Erro := Erro + sLineBreak + E.Message;
        raise Exception.Create(Erro);
      end;
    end;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TControllerUser.Editar( mUser: TUser);
var
  Erro: string;
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    if Trim(mUser.User) = '' then
    begin
      MessageDlg('Campo usu�rio � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mUser.User) < 4 then
    begin
      MessageDlg('O usu�rio deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Trim(mUser.Password) = '' then
    begin
      MessageDlg('Campo senha � obrigat�rio!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    if Length(mUser.Password) < 4 then
    begin
      MessageDlg('O senha deve ter no minimo 4 caract�res!', mtConfirmation, [mbOK], 0, mbOK);
      Abort;
    end;

    with Query do
    begin
      Connection := DM.con;
      Close;
      SQL.Add('  UPDATE USER                 ');
      SQL.Add('     SET                      ');
      SQL.Add('     USER = :USER,            ');
      SQL.Add('     PASSWORD = :PASSWORD,     ');
      SQL.Add('     ROLE = :ROLE             ');
      SQL.Add('     WHERE ID = :ID;           ');
      ParamByName('ID').AsInteger := mUser.Id;
      ParamByName('USER').AsString := mUser.User;
      ParamByName('PASSWORD').AsString := mUser.Password;
      ParamByName('ROLE').AsInteger := mUser.Role;
    end;
    try
      Query.ExecSQL;
      MessageDlg('Editado com sucesso!', mtConfirmation, [mbOK], 0, mbOK);
      except
      on E: Exception do
      begin
        Erro := 'Falha ao editar Usu�rio ';
        Erro := Erro + sLineBreak + E.Message;
        raise Exception.Create(Erro);
      end;
    end;
  finally
    FreeAndNil(Query);
  end;
end;

end.
