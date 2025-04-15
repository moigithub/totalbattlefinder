object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'totalbattle search stuff'
  ClientHeight = 292
  ClientWidth = 612
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 649
    Height = 292
    Align = alLeft
    Caption = 'Panel1'
    TabOrder = 0
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
    object imgTemplate: TImage
      Left = 536
      Top = 327
      Width = 65
      Height = 66
      Proportional = True
      Stretch = True
    end
    object imgDesktop: TImage
      Left = 8
      Top = 327
      Width = 297
      Height = 189
      Proportional = True
      Stretch = True
    end
    object imgResult: TImage
      Left = 496
      Top = 432
      Width = 105
      Height = 105
      Proportional = True
      Stretch = True
    end
    object Label4: TLabel
      Left = 464
      Top = 327
      Width = 47
      Height = 15
      Caption = 'template'
    end
    object Label5: TLabel
      Left = 8
      Top = 522
      Width = 85
      Height = 15
      Caption = 'desktop capture'
    end
    object Label6: TLabel
      Left = 448
      Top = 522
      Width = 29
      Height = 15
      Caption = 'result'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
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
      MinValue = 100
      TabOrder = 3
      Value = 300
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
      MinValue = 30
      TabOrder = 6
      Value = 65
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 304
      Width = 97
      Height = 17
      Caption = 'show capture'
      TabOrder = 7
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
    Enabled = False
    Interval = 300
    OnTimer = Timer1Timer
    Left = 112
    Top = 240
  end
end
