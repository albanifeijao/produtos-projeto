object frmCdProduto: TfrmCdProduto
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 501
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 47
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 785
    Height = 41
    Align = alTop
    TabOrder = 0
    object bbtExcluir: TButton
      Left = 250
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Excluir'
      TabOrder = 2
      OnClick = bbtExcluirClick
    end
    object bbtIncluir: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = bbtIncluirClick
    end
    object bbtAlterar: TButton
      Left = 169
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Alterar'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Localizar'
      TabOrder = 3
      OnClick = Button2Click
    end
    object bbtCancelar: TButton
      Left = 330
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 4
      OnClick = bbtCancelarClick
    end
  end
  object dbtDescricao: TDBEdit
    Left = 8
    Top = 66
    Width = 400
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dscProdutos
    TabOrder = 1
  end
  object bbtGravar: TButton
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Gravar'
    TabOrder = 2
    OnClick = bbtGravarClick
  end
  object dscProdutos: TDataSource
    DataSet = dmdProdutos.cdsProdutos
    Left = 368
    Top = 136
  end
end
