unit Controller.Loan;

interface

uses Model.Loan, uDM, SysUtils, Data.DB, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TControllerLoan = class
  private

  public

    procedure Novo(mLoan: TLoan) overload;
    procedure Editar(mLoan: TLoan) overload;
  end;

implementation


procedure TControllerLoan.Novo( mLoan: TLoan);
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
      SQL.Add(' INSERT INTO LOAN (           ');
      SQL.Add('     DATE,                    ');
      SQL.Add('     STUDENT_ID,              ');
      SQL.Add('     BOOK_ID                  ');
      SQL.Add('      ) VALUES (              ');
      SQL.Add('       :DATE,                 ');
      SQL.Add('       :STUDENT_ID,           ');
      SQL.Add('       :BOOK_ID               ');
      SQL.Add(');                            ');
      ParamByName('DATE').AsDate := mLoan.Date;
      ParamByName('STUDENT_ID').AsInteger := mLoan.StudentId;
      ParamByName('BOOK_ID').AsInteger := mLoan.BookId;
    end;
    try
      Query.ExecSQL;
      MessageDlg('Gravado com sucesso!', mtConfirmation, [mbOK], 0, mbOK);
      except
      on E: Exception do
      begin
        Erro := 'Falha ao gravar emprestimo ';
        Erro := Erro + sLineBreak + E.Message;
        raise Exception.Create(Erro);
      end;
    end;
  finally
    FreeAndNil(Query);
  end;
end;

procedure TControllerLoan.Editar( mLoan: TLoan);
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
      SQL.Add('  UPDATE LOAN                      ');
      SQL.Add('     SET                           ');
      SQL.Add('     DATE = :DATE,                 ');
      SQL.Add('     STUDENT_ID = :STUDENT_ID,             ');
      SQL.Add('     BOOK_ID = :BOOK_ID           ');
      SQL.Add('     WHERE ID = :ID;               ');
      ParamByName('ID').AsInteger := mLoan.Id;
      ParamByName('DATE').AsDate := mLoan.Date;
      ParamByName('STUDENT_ID').AsInteger := mLoan.StudentId;
      ParamByName('BOOK_ID').AsInteger := mLoan.BookId;
    end;
    try
      Query.ExecSQL;
      MessageDlg('Editado com sucesso!', mtConfirmation, [mbOK], 0, mbOK);
    except
        on E: Exception do
        begin
          Erro := 'Falha ao editar emprestimo ';
          Erro := Erro + sLineBreak + E.Message;
          raise Exception.Create(Erro);
        end;
    end;
  finally
    FreeAndNil(Query);
  end;
end;

end.
