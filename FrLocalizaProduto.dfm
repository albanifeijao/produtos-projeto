object frmLocalizaProduto: TfrmLocalizaProduto
  Left = 0
  Top = 0
  Caption = 'Localiza Produto'
  ClientHeight = 238
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 194
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 102
      Height = 13
      Caption = 'Descri'#231#227'o do Produto'
    end
    object edtDescricao: TEdit
      Left = 8
      Top = 27
      Width = 346
      Height = 21
      TabOrder = 0
      OnChange = edtDescricaoChange
    end
    object bbtLocalizar: TButton
      Left = 360
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Localizar'
      Enabled = False
      TabOrder = 1
      OnClick = bbtLocalizarClick
    end
    object dbgProduto: TDBGrid
      Left = 8
      Top = 54
      Width = 427
      Height = 132
      DataSource = frmCdProduto.dscProdutos
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 194
    Width = 447
    Height = 44
    Align = alBottom
    TabOrder = 1
    object bbtOk: TButton
      Left = 360
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = bbtOkClick
    end
  end
end
