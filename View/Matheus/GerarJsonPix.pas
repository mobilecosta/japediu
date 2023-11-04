unit GerarJsonPix;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TIdentification = class;

  TIdentification = class
  private
    FNumber: string;
    FType: string;
  published
    property Number: string read FNumber write FNumber;
    property &Type: string read FType write FType;
  end;
  
  TPayer = class
  private
    FEmail: string;
    [JSONName('first_name')]
    FFirstName: string;
    FIdentification: TIdentification;
    [JSONName('last_name')]
    FLastName: string;
  published
    property Email: string read FEmail write FEmail;
    property FirstName: string read FFirstName write FFirstName;
    property Identification: TIdentification read FIdentification;
    property LastName: string read FLastName write FLastName;
  public
    constructor Create;
    destructor Destroy; override;
  end;
  
  TRoot = class(TJsonDTO)
  private
    [JSONName('date_of_expiration')]
    FDateOfExpiration: string;
    FDescription: string;
    FPayer: TPayer;
    [JSONName('payment_method_id')]
    FPaymentMethodId: string;
    [JSONName('transaction_amount')]
    FTransactionAmount: Real;
  published
    property DateOfExpiration: string read FDateOfExpiration write FDateOfExpiration;
    property Description: string read FDescription write FDescription;
    property Payer: TPayer read FPayer;
    property PaymentMethodId: string read FPaymentMethodId write FPaymentMethodId;
    property TransactionAmount: Real read FTransactionAmount write FTransactionAmount;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;
  
implementation

{ TPayer }

constructor TPayer.Create;
begin
  inherited;
  FIdentification := TIdentification.Create;
end;

destructor TPayer.Destroy;
begin
  FIdentification.Free;
  inherited;
end;

{ TRoot }

constructor TRoot.Create;
begin
  inherited;
  FPayer := TPayer.Create;
end;

destructor TRoot.Destroy;
begin
  FPayer.Free;
  inherited;
end;

end.
