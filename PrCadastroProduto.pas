unit PrCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.ComCtrls, IBX.IBDatabase,
  Data.DBXFirebird, Data.SqlExpr, frxClass, frxDBSet;

type
  TfrmMain = class(TForm)
    pnlBotoes: TPanel;
    bbtCdProduto: TButton;
    bbtListagemProdutos: TButton;
    frxProdutos: TfrxReport;
    frxDBProdutos: TfrxDBDataset;
    procedure bbtCdProdutoClick(Sender: TObject);
    procedure bbtListagemProdutosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses CdProduto, DmProdutos;

procedure TfrmMain.bbtCdProdutoClick(Sender: TObject);
var
   CdProduto: TfrmCdProduto;
begin
  CdProduto := TfrmCdProduto.Create(Self);
  CdProduto.ShowModal;
end;

procedure TfrmMain.bbtListagemProdutosClick(Sender: TObject);
var
  Path: string;
begin
  Path := ExtractFilePath(Application.ExeName);
  frxProdutos.LoadFromFile(Path + 'ListagemProdutos.fr3');
  frxProdutos.ShowReport;
end;

end.
