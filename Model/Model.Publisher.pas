unit Model.Publisher;

interface

type
  TBook = class
  private
    FID: Integer;
    FNAME: string;
    FAUTHOR: string;
    FPUBLISHER: string;
    FGENRE: string;
    procedure SetId(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetAuthor(const Value: string);
    procedure SetPublisher(const Value: string);
    procedure SetGenre(const Value: string);
  public
    property Id: Integer read FID write SetId;
    property Name: string read FNAME write SetName;
    property Author: string read FAUTHOR write SetAuthor;
    property Publisher: string read FPUBLISHER write SetPublisher;
    property Genre: string read FGENRE write SetGenre;
  end;

implementation

procedure TBook.SetId(const Value: Integer);
begin
  FID := Value;
end;

procedure TBook.SetName(const Value: string);
begin
  FNAME := Value;
end;

procedure TBook.SetAuthor(const Value: string);
begin
  FAUTHOR := Value;
end;

procedure TBook.SetPublisher(const Value: string);
begin
  FPUBLISHER := Value;
end;

procedure TBook.SetGenre(const Value: string);
begin
  FGENRE := Value;
end;

end.
