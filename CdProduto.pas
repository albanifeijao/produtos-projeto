unit CdProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  Data.DB, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  FrLocalizaProduto, UITypes;

type
  TfrmCdProduto = class(TForm)
    pnlBotoes: TPanel;
    bbtExcluir: TButton;
    bbtIncluir: TButton;
    bbtAlterar: TButton;
    dscProdutos: TDataSource;
    dbtDescricao: TDBEdit;
    Label2: TLabel;
    bbtGravar: TButton;
    Button2: TButton;
    bbtCancelar: TButton;
    procedure bbtIncluirClick(Sender: TObject);
    procedure bbtGravarClick(Sender: TObject);
    procedure bbtExcluirClick(Sender: TObject);
    procedure bbtCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    FrLocaliza: TfrmLocalizaProduto;
  public
    { Public declarations }
  end;

var
  frmCdProduto: TfrmCdProduto;

implementation

{$R *.dfm}

uses DmProdutos;

procedure TfrmCdProduto.bbtExcluirClick(Sender: TObject);
begin
  if dscProdutos.DataSet.State in [dsBrowse, dsEdit] then
  begin
    If MessageDlg('Tem certeza que deseja excluir o registro?',mtConfirmation,[mbyes,mbno],0)=mryes then
    begin
      dmdProdutos.cdsProdutos.Delete;
      dmdProdutos.cdsProdutos.ApplyUpdates(-1);
      dmdProdutos.cdsProdutos.Close;
    end;
  end
  else
    ShowMessage('Localize um registro para executar a exclusão!');
end;

procedure TfrmCdProduto.bbtIncluirClick(Sender: TObject);
begin
  dmdProdutos.cdsProdutos.Open;
  dmdProdutos.cdsProdutos.Append;
  dbtDescricao.SetFocus;
end;

procedure TfrmCdProduto.Button2Click(Sender: TObject);
begin
  FrLocaliza.Show;
end;

procedure TfrmCdProduto.FormShow(Sender: TObject);
begin
  FrLocaliza := TfrmLocalizaProduto.Create(Self);
end;

procedure TfrmCdProduto.bbtGravarClick(Sender: TObject);
begin
  if dscProdutos.DataSet.State in [dsBrowse, dsEdit, dsInsert] then
  begin
    dmdProdutos.cdsProdutos.Post;
    dmdProdutos.cdsProdutos.ApplyUpdates(-1);
    dmdProdutos.cdsProdutos.Close;
  end
  else
    ShowMessage('Execute uma operação!');
  bbtIncluir.SetFocus;
end;

procedure TfrmCdProduto.bbtCancelarClick(Sender: TObject);
begin
  if dscProdutos.DataSet.State in [dsBrowse, dsEdit, dsInsert] then
  begin
    dmdProdutos.cdsProdutos.Cancel;
    dmdProdutos.cdsProdutos.ApplyUpdates(-1);
    dmdProdutos.cdsProdutos.Open;
    dmdProdutos.cdsProdutos.Close;
  end
  else
    ShowMessage('Execute uma operação!');
end;

end.
