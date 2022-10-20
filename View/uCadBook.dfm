inherited fCadBook: TfCadBook
  Caption = 'fCadBook'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    ExplicitWidth = 724
    ExplicitHeight = 546
    inherited tsLista: TTabSheet
      ExplicitWidth = 716
      ExplicitHeight = 518
      inherited dbgrdLista: TDBGrid
        OnDrawColumnCell = dbgrdListaDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Caption = 'Id'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = 'Nome'
            Width = 304
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTHOR'
            Title.Caption = 'Autor'
            Width = 234
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PUBLISHER'
            Title.Caption = 'Editora'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GENRE'
            Title.Caption = 'G'#234'nero'
            Width = 98
            Visible = True
          end>
      end
      inherited pnlListaTop: TPanel
        ExplicitWidth = 716
        inherited btnNovo: TSpeedButton
          ExplicitLeft = 516
        end
        inherited btEditar: TSpeedButton
          ExplicitLeft = 616
        end
      end
    end
    inherited tsCad: TTabSheet
      ExplicitWidth = 716
      inherited pnlCadTop: TPanel
        ExplicitWidth = 716
        inherited btnSalvar: TSpeedButton
          ExplicitLeft = 516
        end
        inherited btnCancelar: TSpeedButton
          ExplicitLeft = 616
        end
      end
      object edtId: TLabeledEdit
        Left = 16
        Top = 32
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 10
        EditLabel.Height = 13
        EditLabel.Caption = 'Id'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = 4737096
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtName: TLabeledEdit
        Left = 16
        Top = 72
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = 4737096
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edtAuthor: TLabeledEdit
        Left = 16
        Top = 112
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 30
        EditLabel.Height = 13
        EditLabel.Caption = 'Autor'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = 4737096
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object edtPublisher: TLabeledEdit
        Left = 16
        Top = 152
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = 'Editora'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = 4737096
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object edtGenre: TLabeledEdit
        Left = 16
        Top = 192
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'Genre'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = 4737096
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'Segoe UI'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  inherited pnlTop: TPanel
    ExplicitWidth = 730
    inherited lblEntity: TLabel
      Width = 114
      Caption = 'Cadastro de Livros'
      ExplicitWidth = 114
    end
    inherited btnClose: TSpeedButton
      ExplicitLeft = 711
    end
  end
  inherited qrylist: TFDQuery
    SQL.Strings = (
      'select * from book')
    object qrylistID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrylistNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 32767
    end
    object qrylistAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Origin = 'AUTHOR'
      Size = 32767
    end
    object qrylistPUBLISHER: TStringField
      FieldName = 'PUBLISHER'
      Origin = 'PUBLISHER'
      Size = 32767
    end
    object qrylistGENRE: TStringField
      FieldName = 'GENRE'
      Origin = 'GENRE'
      Size = 32767
    end
    object qrylistAVAILABLE: TBooleanField
      FieldName = 'AVAILABLE'
      Origin = 'AVAILABLE'
    end
  end
end
