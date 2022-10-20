object fMovimento: TfMovimento
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fMovimento'
  ClientHeight = 634
  ClientWidth = 999
  Color = 2565927
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAll: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 28
    Width = 993
    Height = 603
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object btnFAluno: TSpeedButton
      AlignWithMargins = True
      Left = 231
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
    object edtFAluno: TLabeledEdit
      Left = 16
      Top = 32
      Width = 209
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
      Width = 233
      Height = 115
      DataSource = dsFAluno
      Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      Columns = <
        item
          Expanded = False
          FieldName = 'NAME'
          Width = 206
          Visible = True
        end>
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 999
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
      Left = 980
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
end