unit Unit1;

interface

uses
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,

  System.Math,

  MMSystem, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.ExtCtrls, Vcl.StdCtrls,
  unit3, Vcl.Samples.Spin, syncobjs, OPENCVWrapper, common;

type
  TForm1 = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    Timer1: TTimer;
    Panel1: TPanel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    seInterval: TSpinEdit;
    Label1: TLabel;
    Memo1: TMemo;
    Image1: TImage;
    Label2: TLabel;
    Button3: TButton;
    seThreshold: TSpinEdit;
    Label3: TLabel;
    CheckBox2: TCheckBox;
    imgTemplate: TImage;
    imgDesktop: TImage;
    imgResult: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure seIntervalChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    templateFileName: string;

    TemplateImg: pCvMat_t;
    // TemplateImg: TOCVMat;
  public
    { Public declarations }
  end;

const
  FileName = 'beep.m4a';

var
  ProcessingLock: TCriticalSection; // Global critical section for thread safety
  Form1: TForm1;

implementation

{$R *.dfm}

procedure playBeep();

begin

  Winapi.Windows.Beep(800, 100);
  // windows.sysutils.beep; // no funciona

end;

procedure CaptureDesktopToBitmap(Bitmap: TBitmap);
var
  DC: HDC;
  ScreenWidth, ScreenHeight: integer;
begin
  ScreenWidth := Screen.Width div 2;
  ScreenHeight := Screen.Height div 2;

  Bitmap.Width := ScreenWidth;
  Bitmap.Height := ScreenHeight;
  Bitmap.PixelFormat := pf24bit;

  DC := GetDC(0); // Get the device context of the entire screen
  try
    BitBlt(Bitmap.Canvas.Handle, 0, 0, ScreenWidth, ScreenHeight, DC, 0, 0, SRCCOPY);
  finally
    ReleaseDC(0, DC);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  sfile, tmp: CvString_t;
  Image: TGraphic;
begin

  if OpenPictureDialog1.Execute then
  begin
    if LowerCase(ExtractFileExt(OpenPictureDialog1.FileName)) = '.bmp' then
      Image := TBitmap.Create
    else if (LowerCase(ExtractFileExt(OpenPictureDialog1.FileName)) = '.jpg') or
      (LowerCase(ExtractFileExt(OpenPictureDialog1.FileName)) = '.jpeg') then
      Image := TJPEGImage.Create
    else if LowerCase(ExtractFileExt(OpenPictureDialog1.FileName)) = '.png' then
      Image := TPngImage.Create
    else
      Image := nil;

    if Assigned(Image) then
    begin
      try
        Image.LoadFromFile(OpenPictureDialog1.FileName);
        Image1.Picture.Graphic := Image;

        // Image1.Picture.Assign(Image);

        templateFileName := OpenPictureDialog1.FileName;
        Edit1.Text := templateFileName;

        // Load the template image
        // TemplateFileName := FileName;
        // self.TemplateImg := LoadImage(templateFileName  );

        sfile.pstr := PAnsiChar(AnsiString(templateFileName));

        TemplateImg := pCvimread(@sfile, ord(IMREAD_COLOR));

        if (pCvMatGetWidth(TemplateImg) = 0) then
        begin
          ShowMessage('Error: image not exists');
          Exit;
        end;

        // tmp.pstr:= PAnsiChar(AnsiString('template'));
        //
        //
        // pCvimshow(@tmp, TemplateImg );

      finally
        Image.Free;
      end;
    end;
  end;

end;

procedure RunInThread(const AProc: TProc);
begin
  TThread.CreateAnonymousThread(AProc).Start;
end;

procedure TForm1.Button3Click(Sender: TObject);
var

  matchCount: double;
  threshold: single;
  tmp: CvString_t;
begin
  if TemplateImg = nil then
  begin
    Button1.Click;
    Exit;
  end;

  // tmp.pstr:= PAnsiChar(AnsiString('template'));
  //
  //
  // pCvimshow(@tmp, TemplateImg );

  ProcessingLock.Enter; // Acquire the lock
  try
    // outputdebugstring('btn3.click');

    threshold := seThreshold.Value / 100;
    matchCount := PerformTemplateMatching(TemplateImg, threshold);

    if not isInfinite(matchCount) then
    begin
      Form1.Caption := floatTostr(matchCount);

      if matchCount > threshold then
      begin
        playBeep();

      end;
    end;

  finally
    ProcessingLock.Leave; // Release the lock when done
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if TemplateImg = nil then
  begin
    Button1.Click;
    CheckBox1.Checked := false;
    Exit;
  end;

  Timer1.Enabled := CheckBox1.Checked;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ProcessingLock := TCriticalSection.Create; // Initialize the critical section on form creation
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  ProcessingLock.Free; // Free the critical section on form destruction
end;

procedure TForm1.seIntervalChange(Sender: TObject);
begin
  Timer1.Interval := seInterval.Value;
end;

function IsAppFocused: Boolean;
var
  ForegroundWindow: HWND;
  ForegroundProcessID: DWORD;
  CurrentProcessID: DWORD;
begin
  ForegroundWindow := GetForegroundWindow;
  GetWindowThreadProcessId(ForegroundWindow, @ForegroundProcessID);
  CurrentProcessID := GetCurrentProcessId;
  Result := (ForegroundProcessID = CurrentProcessID);

  // or(GetForegroundWindow = Application.Handle) or (GetActiveWindow = Application.Handle);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

  if IsAppFocused then
    Exit;

  Button3.Click;
end;

end.
