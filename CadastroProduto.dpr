program CadastroProduto;

uses
  Vcl.Forms,
  PrCadastroProduto in 'PrCadastroProduto.pas' {frmMain},
  CdProduto in 'CdProduto.pas' {frmCdProduto},
  DmProdutos in 'DmProdutos.pas' {dmdProdutos: TDataModule},
  FrLocalizaProduto in 'FrLocalizaProduto.pas' {frmLocalizaProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmdProdutos, dmdProdutos);
  Application.Run;
end.
