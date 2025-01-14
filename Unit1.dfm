object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'totalbattle search stuff'
  ClientHeight = 261
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 261
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitHeight = 288
    object Label1: TLabel
      Left = 8
      Top = 127
      Width = 67
      Height = 15
      Caption = 'Scan Interval'
    end
    object Image1: TImage
      Left = 8
      Top = 39
      Width = 50
      Height = 50
      Stretch = True
    end
    object Label2: TLabel
      Left = 143
      Top = 127
      Width = 63
      Height = 15
      Caption = 'miliseconds'
    end
    object Label3: TLabel
      Left = 28
      Top = 157
      Width = 47
      Height = 15
      Caption = 'Match %'
    end
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 227
      Height = 25
      Caption = 'Load image to search'
      TabOrder = 0
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 103
      Top = 39
      Width = 132
      Height = 31
      Caption = 'Auto Scan'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 95
      Width = 227
      Height = 23
      ReadOnly = True
      TabOrder = 2
    end
    object seInterval: TSpinEdit
      Left = 81
      Top = 124
      Width = 56
      Height = 24
      MaxValue = 5000
      MinValue = 10
      TabOrder = 3
      Value = 100
      OnChange = seIntervalChange
    end
    object Memo1: TMemo
      Left = 241
      Top = 9
      Width = 360
      Height = 248
      Lines.Strings = (
        '- zoom in to 25%'
        '- load a image to search'
        '- activate the '#39'AUTO SCAN'#39' checkbox'
        ''
        ''
        'TO capture any other image'
        ''
        '- zoom to 25%'
        '- use any capture image tool to capture the item you want, '
        'example a citadel'
        '- make sure it do not contain any tile/terrain border'
        '- keep only the pixels inside the object you want to capture'
        '- do not rezise or stretch the image'
        '- save it as PNG, JPG or BMP')
      ReadOnly = True
      ScrollBars = ssBoth
      TabOrder = 4
      WantReturns = False
    end
    object Button3: TButton
      Left = 4
      Top = 184
      Width = 71
      Height = 26
      Caption = 'Force scan'
      TabOrder = 5
      OnClick = Button3Click
    end
    object seThreshold: TSpinEdit
      Left = 81
      Top = 154
      Width = 57
      Height = 24
      MaxValue = 100
      MinValue = 40
      TabOrder = 6
      Value = 65
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'Image Files|*.bmp;*.jpg;*.jpeg;*.png|BMP Files|*.bmp|JPEG Files|' +
      '*.jpg;*.jpeg|PNG Files|*.png'
    Left = 24
    Top = 216
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 112
    Top = 240
  end
end
