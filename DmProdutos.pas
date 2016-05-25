unit DmProdutos;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TdmdProdutos = class(TDataModule)
    sqlMain: TSQLConnection;
    sdsProdutos: TSQLDataSet;
    sdsProdutosCODIGO: TIntegerField;
    sdsProdutosDESCRICAO: TStringField;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    cdsProdutosCODIGO: TIntegerField;
    cdsProdutosDESCRICAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmdProdutos: TdmdProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
