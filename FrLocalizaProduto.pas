unit FrLocalizaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmLocalizaProduto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bbtOk: TButton;
    Label1: TLabel;
    edtDescricao: TEdit;
    bbtLocalizar: TButton;
    dbgProduto: TDBGrid;
    procedure edtDescricaoChange(Sender: TObject);
    procedure bbtLocalizarClick(Sender: TObject);
    procedure bbtOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizaProduto: TfrmLocalizaProduto;

implementation

{$R *.dfm}

uses CdProduto, DmProdutos;


procedure TfrmLocalizaProduto.bbtOkClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLocalizaProduto.bbtLocalizarClick(Sender: TObject);
begin
  dmdProdutos.cdsProdutos.Active := False;
  dmdProdutos.cdsProdutos.CommandText := '';
  dmdProdutos.cdsProdutos.CommandText := 'Select Codigo, Descricao ' +
    ' from Produtos ' +
    ' where Upper(Descricao) like :Descricao ';
  dmdProdutos.cdsProdutos.ParamByName('Descricao').AsString := '%' + UpperCase(edtDescricao.Text) + '%';
  dmdProdutos.cdsProdutos.Active := True;
  bbtOk.Enabled := not dmdProdutos.cdsProdutos.IsEmpty;

  if dmdProdutos.cdsProdutos.IsEmpty then
    ShowMessage('Nenhum registro encontrado!');
end;

procedure TfrmLocalizaProduto.edtDescricaoChange(Sender: TObject);
begin
  if edtDescricao.Text <> '' then
    bbtLocalizar.Enabled := True
  else
    bbtLocalizar.Enabled := False;
end;

end.
