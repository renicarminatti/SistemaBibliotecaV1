unit Model.Config;

interface

type
  TConfig = class
  private
    FID : Integer;
    FMAX_BOOK_STUDENT : Integer;
    FDELAY_FINE: Double;
    procedure SetId(const Value: Integer);
    procedure SetMax(const Value: Integer);
    procedure SetDelay(const Value: Double);
  public
    property Id: Integer read FID write SetId;
    property MaxBookStudent: Integer read FMAX_BOOK_STUDENT write SetMax;
    property Delay: Double read FDELAY_FINE write SetDelay;
  end;

implementation

procedure TConfig.SetId(const Value: Integer);
begin
  FID := Value;
end;

procedure TConfig.SetMax(const Value: Integer);
begin
  FMAX_BOOK_STUDENT := Value;
end;

procedure TConfig.SetDelay(const Value: Double);
begin
  FDELAY_FINE := Value;
end;
end.
