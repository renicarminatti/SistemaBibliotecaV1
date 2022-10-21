unit Model.Loan;

interface

type
  TLoan = class
  private
    FID: Integer;
    FDATE: TDate;
    FSTUDENTID: Integer;
    FBOOKID: Integer;
    procedure SetId(const Value: Integer);
    procedure SetDate(const Value: TDate);
    procedure setStudentId(const Value: Integer);
    procedure SetBookId(const Value: Integer);
  public
    property Id: Integer read FID write SetId;
    property Date: TDate read FDATE write SetDate;
    property StudentId: Integer read FSTUDENTID write setStudentId;
    property BookId: Integer read FBOOKID write SetBookId;
  end;

implementation

procedure TLoan.SetId(const Value: Integer);
begin
  FID := Value;
end;

procedure TLoan.SetDate(const Value: TDate);
begin
  FDATE := Value;
end;

procedure TLoan.setStudentId(const Value: Integer);
begin
  FSTUDENTID := Value;
end;

procedure TLoan.SetBookId(const Value: Integer);
begin
  FBOOKID := Value;
end;

end.
