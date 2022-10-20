unit Model.Student;

interface

type
  TStudent = class
  private
    FID: Integer;
    FNAME: string;
    FBIRTHDATE: Tdate;
    FCLASS: string;
    FENABLED: Boolean;
    procedure SetId(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetBirthdate(const Value: TDate);
    procedure SetClass(const Value: string);
    procedure SetEnabled(const Value: Boolean);
  public
    property Id: Integer read FID write SetId;
    property Name: string read FNAME write SetName;
    property BirthDate: Tdate read FBIRTHDATE write SetBirthdate;
    property Class_: string read FCLASS write SetClass;
    property Enabled: Boolean read FENABLED write SetEnabled;
  end;

implementation

procedure TStudent.SetId(const Value: Integer);
begin
  FID := Value;
end;

procedure TStudent.SetName(const Value: string);
begin
  FNAME := Value;
end;

procedure TStudent.SetBirthdate(const Value: TDate);
begin
  FBIRTHDATE := Value;
end;

procedure TStudent.SetClass(const Value: string);
begin
  FCLASS := Value;
end;

procedure TStudent.SetEnabled(const Value: Boolean);
begin
  FENABLED := Value;
end;

end.
