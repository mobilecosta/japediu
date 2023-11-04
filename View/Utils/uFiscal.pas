unit uFiscal;

interface

uses
 System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TFiscal = class
  private
    FCodinterno: string;
    FEan: string;
    FDescricao: string;
    FNcm: string;
    FIcms: Double;
    FPis: Double;
    FCofins: Double;
    FIdSegmento: Integer;
  published
    property Codinterno: string read FCodinterno write FCodinterno;
    property Ean: string read FEan write FEan;
    property Descricao: string read FDescricao write FDescricao;
    property Ncm: string read FNcm write FNcm;
    property Icms: Double read FIcms write FIcms;
    property Pis: Double read FPis write FPis;
    property Cofins: Double read FCofins write FCofins;
    property IdSegmento: integer read FIdSegmento write FIdSegmento;
  end;
implementation
end.
