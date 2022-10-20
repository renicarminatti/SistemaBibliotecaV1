unit Model.Librarian;

interface

type
  TLibrarian = class
  private
    FID: Integer;
    FNAME: string;
    FDOCUMENT: string;
    FADDRESS: string;
    procedure SetId(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetDocument(const Value: string);
    procedure SetAddress(const Value: string);
  public
    property Id: Integer read FID write SetId;
    property Name: string read FNAME write SetName;
    property Document: string read FDOCUMENT write SetDocument;
    property Address: string read FADDRESS write SetAddress;
  end;

implementation

procedure TLibrarian.SetId(const Value: Integer);
begin
  FID := Value;
end;

procedure TLibrarian.SetName(const Value: string);
begin
  FNAME := Value;
end;

procedure TLibrarian.SetDocument(const Value: string);
begin
  FDOCUMENT := Value;
end;

procedure TLibrarian.SetAddress(const Value: string);
begin
  FADDRESS := Value;
end;

end.
