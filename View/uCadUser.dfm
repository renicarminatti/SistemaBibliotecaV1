inherited fCadUser: TfCadUser
  Caption = 'fCadUser'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgc1: TPageControl
    inherited tsLista: TTabSheet
      ExplicitWidth = 637
      ExplicitHeight = 360
      inherited dbgrdLista: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'Id'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Login'
            Width = 555
            Visible = True
          end>
      end
      inherited pnlListaTop: TPanel
        ExplicitWidth = 637
      end
    end
    inherited tsCad: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 24
      ExplicitWidth = 637
      ExplicitHeight = 360
      object lblPerfil: TLabel [0]
        Left = 16
        Top = 139
        Width = 27
        Height = 13
        Caption = 'Perfil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4737096
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited pnlCadTop: TPanel
        ExplicitTop = 0
        ExplicitWidth = 637
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
      object edtUser: TLabeledEdit
        Left = 16
        Top = 72
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Usu'#225'rio'
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
      object edtPassword: TLabeledEdit
        Left = 16
        Top = 112
        Width = 209
        Height = 21
        CharCase = ecUpperCase
        EditLabel.Width = 32
        EditLabel.Height = 13
        EditLabel.Caption = 'Senha'
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
      object cbbPerfil: TComboBox
        Left = 16
        Top = 158
        Width = 209
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = 'Administrador'
        Items.Strings = (
          'Administrador'
          'Operador/Bibliotec'#225'rio'
          'Consultor/Aluno')
      end
    end
  end
  inherited pnlTop: TPanel
    ExplicitTop = 0
    inherited lblEntity: TLabel
      Width = 130
      Caption = 'Cadastro de Usu'#225'rios'
      ExplicitWidth = 130
    end
  end
  inherited qrylist: TFDQuery
    SQL.Strings = (
      'select '
      ' ID as Id,'
      ' USER as Login'
      'from user')
    object qrylistId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrylistLogin: TStringField
      FieldName = 'Login'
      Origin = 'USER'
      Size = 32767
    end
  end
end
