object fMovimento: TfMovimento
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fMovimento'
  ClientHeight = 634
  ClientWidth = 1039
  Color = 2565927
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAll: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 28
    Width = 1033
    Height = 603
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object btnFAluno: TSpeedButton
      AlignWithMargins = True
      Left = 439
      Top = 32
      Width = 18
      Height = 21
      Hint = 'Fechar'
      Margins.Top = 5
      Margins.Bottom = 5
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000023232394353535E01A1A1A7000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
        0000000000000000000000000000000000000000000000000000000000001E1E
        1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
        165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
        3CFF292929AD0000000000000000000000000000000000000000000000002828
        28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
        3CFF282828AB0000000000000000000000000000000000000000000000003636
        36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
        3CFF363636E60000000000000000000000000000000000000000000000003636
        36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
        3CFF363636E60000000000000000000000000000000000000000000000002828
        28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
        3CFF282828AB0000000000000000000000000000000000000000000000001616
        165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
        3CFF1616165C0000000000000000000000000000000000000000000000000000
        00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E80000000010000000000000000000000000000000000000000000000000000
        0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFAlunoClick
    end
    object btnFBook: TSpeedButton
      AlignWithMargins = True
      Left = 998
      Top = 32
      Width = 18
      Height = 21
      Hint = 'Fechar'
      Margins.Top = 5
      Margins.Bottom = 5
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000023232394353535E01A1A1A7000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF353535E000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2323239400000000000000000000
        0000000000000000000000000000000000000000000000000000000000001E1E
        1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        0000000000011616165C282828AB363636E6363636E6282828AB292929AE3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000001616
        165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F3C3C3CFF3C3C
        3CFF292929AD0000000000000000000000000000000000000000000000002828
        28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
        3CFF282828AB0000000000000000000000000000000000000000000000003636
        36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
        3CFF363636E60000000000000000000000000000000000000000000000003636
        36E63C3C3CFF0A0A0A2A000000000000000000000000000000000A0A0A2A3C3C
        3CFF363636E60000000000000000000000000000000000000000000000002828
        28AB3C3C3CFF1E1E1E7F000000000000000000000000000000001E1E1E7F3C3C
        3CFF282828AB0000000000000000000000000000000000000000000000001616
        165C3C3C3CFF363636E51E1E1E7F0A0A0A2A0A0A0A2A1E1E1E7F363636E53C3C
        3CFF1616165C0000000000000000000000000000000000000000000000000000
        00011E1E1E803C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E80000000010000000000000000000000000000000000000000000000000000
        0000000000011616165C282828AB363636E6363636E6282828AB1616165C0000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnFBookClick
    end
    object dbgrdLoanList: TDBGrid
      Left = 16
      Top = 61
      Width = 441
      Height = 524
      DataSource = dsLoan
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnCellClick = dbgrdLoanListCellClick
      OnDrawColumnCell = dbgrdLoanListDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DATE'
          Title.Caption = 'Retirada'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_RETURN'
          Title.Caption = 'Prev. Retorno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Caption = 'Livro'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 166
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTHOR'
          Title.Caption = 'Autor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 115
          Visible = True
        end>
    end
    object edtFAluno: TLabeledEdit
      Left = 16
      Top = 32
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = 'Pesquisa Aluno'
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
      TabOrder = 0
      OnKeyPress = edtFAlunoKeyPress
    end
    object dbgrdFAluno: TDBGrid
      Left = 16
      Top = 54
      Width = 441
      Height = 12
      DataSource = dsFAluno
      Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Visible = False
      OnCellClick = dbgrdFAlunoCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NAME'
          Width = 417
          Visible = True
        end>
    end
    object edtFBook: TLabeledEdit
      Left = 575
      Top = 32
      Width = 417
      Height = 21
      CharCase = ecUpperCase
      EditLabel.Width = 75
      EditLabel.Height = 13
      EditLabel.Caption = 'Pesquisa Livro'
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
      OnKeyPress = edtFBookKeyPress
    end
    object pnlLivroAll: TPanel
      Left = 575
      Top = 61
      Width = 417
      Height = 524
      BevelOuter = bvNone
      Color = clGrayText
      ParentBackground = False
      TabOrder = 5
      object pnlLivroDetalhe: TPanel
        Left = 0
        Top = 488
        Width = 417
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        Visible = False
        object lblDetalhe: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 411
          Height = 33
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Date'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
          ExplicitWidth = 24
          ExplicitHeight = 13
        end
      end
      object dbgrdBookList: TDBGrid
        Left = 0
        Top = 0
        Width = 417
        Height = 488
        Align = alClient
        DataSource = dsBook
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = dbgrdBookListCellClick
        OnDrawColumnCell = dbgrdBookListDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NAME'
            Title.Caption = 'Livro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 187
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AUTHOR'
            Title.Caption = 'Autor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GENRE'
            Title.Caption = 'G'#234'nero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PUBLISHER'
            Title.Caption = 'Editora'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AVAILABLE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = [fsBold]
            Visible = False
          end>
      end
    end
    object pnlFuncoes: TPanel
      Left = 457
      Top = 61
      Width = 118
      Height = 524
      BevelOuter = bvNone
      Color = clCream
      ParentBackground = False
      TabOrder = 4
      object pnlDevolucao: TPanel
        Left = 0
        Top = 261
        Width = 118
        Height = 261
        Align = alTop
        BevelOuter = bvNone
        Color = clCream
        ParentBackground = False
        TabOrder = 0
        Visible = False
        object btnDevolucao: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 112
          Height = 32
          Align = alTop
          Caption = 'Devolver'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000001E1E1E81000000000000000000000000000000001E1E1E810000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000003C3C3CFF1E1E1E810000000000000000000000003C3C3CFF1E1E
            1E81000000000000000000000000000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF1E1E1E8100000000000000003C3C3CFF3C3C
            3CFF1E1E1E810000000000000000000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E81000000003C3C3CFF3C3C
            3CFF3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000003C3C3CFF3C3C
            3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
            0000000000003C3C3CFF3C3C3CFF1E1E1E7E00000000000000003C3C3CFF3C3C
            3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
            0000000000003C3C3CFF1E1E1E7E0000000000000000000000003C3C3CFF1E1E
            1E7E000000000000000000000000000000000000000000000000000000000000
            0000000000001E1E1E7E000000000000000000000000000000001E1E1E7E0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Layout = blGlyphRight
          Margin = 10
          ParentFont = False
          Spacing = 10
          OnClick = btnDevolucaoClick
          ExplicitLeft = 0
          ExplicitTop = 8
          ExplicitWidth = 118
        end
        object lblMulta: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 41
          Width = 112
          Height = 13
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4737096
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 31
        end
        object edtMulta: TLabeledEdit
          Left = 3
          Top = 100
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          EditLabel.Width = 87
          EditLabel.Height = 13
          EditLabel.Caption = 'Multa por atraso'
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
          TabOrder = 0
        end
        object cbbMulta: TComboBox
          AlignWithMargins = True
          Left = 3
          Top = 57
          Width = 112
          Height = 22
          Align = alTop
          Style = csOwnerDrawFixed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ItemIndex = 0
          ParentFont = False
          TabOrder = 1
          Text = 'Cumulativa'
          OnChange = cbbMultaChange
          Items.Strings = (
            'Cumulativa'
            'N'#227'o cumulativa')
        end
      end
      object pnlRetirada: TPanel
        Left = 0
        Top = 0
        Width = 118
        Height = 261
        Align = alTop
        BevelOuter = bvNone
        Color = clCream
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object btnRetirada: TSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 112
          Height = 32
          Align = alTop
          Caption = 'Retirada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000001E1E1E8100000000000000000000
            0000000000001E1E1E8100000000000000000000000000000000000000000000
            00000000000000000000000000001E1E1E813C3C3CFF00000000000000000000
            00001E1E1E813C3C3CFF00000000000000000000000000000000000000000000
            000000000000000000001E1E1E813C3C3CFF3C3C3CFF00000000000000001E1E
            1E813C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF000000001E1E1E813C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000001E1E
            1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000001E1E
            1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF000000001E1E1E7E3C3C
            3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF00000000000000001E1E
            1E7E3C3C3CFF3C3C3CFF00000000000000000000000000000000000000000000
            00000000000000000000000000001E1E1E7E3C3C3CFF00000000000000000000
            00001E1E1E7E3C3C3CFF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000001E1E1E7E00000000000000000000
            0000000000001E1E1E7E00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          Margin = 10
          ParentFont = False
          Spacing = 10
          OnClick = btnRetiradaClick
          ExplicitLeft = 6
        end
        object lblDatadevolucao: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 39
          Width = 112
          Height = 13
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alTop
          Caption = 'Data Devolu'#231#227'o'
          ExplicitWidth = 81
        end
        object dtpDataDevolucao: TDateTimePicker
          AlignWithMargins = True
          Left = 3
          Top = 55
          Width = 112
          Height = 21
          Align = alTop
          Date = 44855.000000000000000000
          Time = 0.368794768517545900
          TabOrder = 0
        end
        object pnlIncrementDate: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 82
          Width = 112
          Height = 23
          Align = alTop
          BevelOuter = bvNone
          Color = 14152959
          ParentBackground = False
          TabOrder = 1
          object btnADD5: TSpeedButton
            Left = 0
            Top = 0
            Width = 28
            Height = 23
            Align = alLeft
            Caption = '+5'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Margin = 5
            ParentFont = False
            Spacing = 0
            OnClick = btnADD5Click
          end
          object btnADD30: TSpeedButton
            Left = 84
            Top = 0
            Width = 28
            Height = 23
            Align = alRight
            Caption = '+30'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Margin = 5
            ParentFont = False
            Spacing = 0
            OnClick = btnADD30Click
            ExplicitLeft = 75
          end
          object btnADD10: TSpeedButton
            Left = 28
            Top = 0
            Width = 28
            Height = 23
            Align = alLeft
            Caption = '+10'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Margin = 5
            ParentFont = False
            Spacing = 0
            OnClick = btnADD10Click
          end
          object btnADD20: TSpeedButton
            Left = 56
            Top = 0
            Width = 28
            Height = 23
            Align = alRight
            Caption = '+20'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Margin = 5
            ParentFont = False
            Spacing = 0
            OnClick = btnADD20Click
            ExplicitLeft = 28
          end
        end
      end
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1039
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object lblEntity: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 165
      Height = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Movimento / Emprestimos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 17
    end
    object btnClose: TSpeedButton
      AlignWithMargins = True
      Left = 1020
      Top = 5
      Width = 16
      Height = 15
      Hint = 'Fechar'
      Margins.Top = 5
      Margins.Bottom = 5
      Align = alRight
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF31479CB82638798F4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2536758A31479CB84463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF31479CB802030809000000002536778C4463D8FF4463D8FF4463D8FF4463
        D8FF24357388000000000203070831479CB84463D8FF4463D8FF4463D8FF4463
        D8FF233370840000000000000000000000002536778C4463D8FF4463D8FF2435
        7388000000000000000000000000233471854463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF22326C800000000000000000000000002536778C243573880000
        0000000000000000000022326D814463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF22326C80000000000000000000000000000000000000
        00000000000022326D814463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF22326C800000000000000000000000000000
        000022326D814463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF243573880000000000000000000000000000
        00002536768B4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF24357388000000000000000000000000000000000000
        0000000000002536768B4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2435738800000000000000000000000022326D8122326C800000
        000000000000000000002536768B4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF2536758A00000000000000000000000023326E824463D8FF4463D8FF2232
        6C800000000000000000000000002637778D4463D8FF4463D8FF4463D8FF4463
        D8FF2F4597B2020205060000000023326E824463D8FF4463D8FF4463D8FF4463
        D8FF22326C8000000000020205062F4596B14463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2F4597B2233471854463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF233370842F4597B24463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCloseClick
      ExplicitLeft = 632
    end
  end
  object qryFAluno: TFDQuery
    Connection = DM.con
    SQL.Strings = (
      'select '
      ' ID,'
      ' NAME'
      'from '
      ' STUDENT'
      '')
    Left = 88
    Top = 128
    object qryFAlunoID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryFAlunoNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 32767
    end
  end
  object dsFAluno: TDataSource
    DataSet = qryFAluno
    Left = 144
    Top = 128
  end
  object dsLoan: TDataSource
    DataSet = qryLoan
    Left = 144
    Top = 192
  end
  object qryLoan: TFDQuery
    Connection = DM.con
    SQL.Strings = (
      'select '
      ' loan.id,'
      ' loan.date,'
      ' loan.date_return,'
      ' loan.book_id,'
      ' book.name,'
      ' book.author'
      'from'
      ' loan'
      'inner join '
      ' book'
      'on'
      '(loan.book_id=book.id)'
      'where'
      ' loan.student_id = :student_id'
      'and'
      ' loan.return = 0')
    Left = 88
    Top = 192
    ParamData = <
      item
        Name = 'STUDENT_ID'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryLoanid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryLoanDATE: TDateField
      FieldName = 'DATE'
      Origin = 'DATE'
      Required = True
    end
    object qryLoanDATE_RETURN: TDateField
      FieldName = 'DATE_RETURN'
      Origin = 'DATE_RETURN'
    end
    object qryLoanNAME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NAME'
      Origin = 'NAME'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryLoanAUTHOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AUTHOR'
      Origin = 'AUTHOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object qryLoanBOOK_ID: TIntegerField
      FieldName = 'BOOK_ID'
      Origin = 'BOOK_ID'
      Required = True
    end
  end
  object qryFBook: TFDQuery
    Connection = DM.con
    SQL.Strings = (
      'select '
      '*'
      'from'
      'book'
      '')
    Left = 736
    Top = 128
    object qryFBookID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryFBookNAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      Size = 32767
    end
    object qryFBookAUTHOR: TStringField
      FieldName = 'AUTHOR'
      Origin = 'AUTHOR'
      Size = 32767
    end
    object qryFBookPUBLISHER: TStringField
      FieldName = 'PUBLISHER'
      Origin = 'PUBLISHER'
      Size = 32767
    end
    object qryFBookGENRE: TStringField
      FieldName = 'GENRE'
      Origin = 'GENRE'
      Size = 32767
    end
    object qryFBookAVAILABLE: TBooleanField
      FieldName = 'AVAILABLE'
      Origin = 'AVAILABLE'
    end
  end
  object dsBook: TDataSource
    DataSet = qryFBook
    Left = 792
    Top = 128
  end
end
