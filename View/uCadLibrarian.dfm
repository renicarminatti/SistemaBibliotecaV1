inherited fCadLibrarian: TfCadLibrarian
  Caption = 'fCadLibrarian'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    ExplicitWidth = 848
    ExplicitHeight = 546
    inherited tsLista: TTabSheet
      ExplicitWidth = 840
      ExplicitHeight = 518
      inherited dbgrdLista: TDBGrid
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
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DOCUMENT'
            Title.Caption = 'Documento'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADDRESS'
            Title.Caption = 'Endere'#231'o'
            Width = 347
            Visible = True
          end>
      end
      inherited pnlListaTop: TPanel
        ExplicitWidth = 840
      end
    end
    inherited tsCad: TTabSheet
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
      object edtDocument: TLabeledEdit
        Left = 16
        Top = 112
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 61
        EditLabel.Height = 13
        EditLabel.Caption = 'Documento'
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
      object edtAddress: TLabeledEdit
        Left = 16
        Top = 152
        Width = 425
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 48
        EditLabel.Height = 13
        EditLabel.Caption = 'Endere'#231'o'
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
    end
  end
  inherited pnlTop: TPanel
    ExplicitWidth = 854
    inherited lblEntity: TLabel
      Width = 155
      Caption = 'Cadastro de Bibliotec'#225'rio'
      ExplicitWidth = 155
    end
  end
  inherited qrylist: TFDQuery
    SQL.Strings = (
      'select * from librarian')
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
    object qrylistDOCUMENT: TStringField
      FieldName = 'DOCUMENT'
      Origin = 'DOCUMENT'
      Required = True
      Size = 32767
    end
    object qrylistADDRESS: TStringField
      FieldName = 'ADDRESS'
      Origin = 'ADDRESS'
      Size = 32767
    end
  end
end
