unit Model.User;

interface

type
  TUser = class
  private
    FID: Integer;
    FUSER: string;
    FPASSWORD: string;
    FROLE: Integer;
    procedure SetId(const Value: Integer);
    procedure SetUser(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetRole(const Value: Integer);
  public
    property Id: Integer read FID write SetId;
    property User: string read FUSER write SetUser;
    property Password: string read FPASSWORD write SetPassword;
    property Role: Integer read FROLE write SetRole;
  end;

implementation

procedure TUser.SetId(const Value: Integer);
begin
  FID := Value;
end;

procedure TUser.SetUser(const Value: string);
begin
  FUSER := Value;
end;

procedure TUser.SetPassword(const Value: string);
begin
  FPASSWORD := Value;
end;

procedure TUser.SetRole(const Value: Integer);
begin
  FROLE := Value;
end;

end.
