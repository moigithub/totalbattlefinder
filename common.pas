unit common;

interface

uses Vcl.Imaging.jpeg, Vcl.Controls, Vcl.ExtCtrls,
  OPENCVWrapper, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.Graphics, Vcl.StdCtrls,
  System.Generics.Collections;

function LoadImage(const FileName: string): pCvMat_t;
  procedure CaptureDesktop(var Bitmap: TBitmap);

implementation

procedure CaptureDesktop(var Bitmap: TBitmap);
var
  ScreenDC: HDC;
  ScreenWidth, ScreenHeight: Integer;
begin
  ScreenWidth := GetSystemMetrics(SM_CXSCREEN);
  ScreenHeight := GetSystemMetrics(SM_CYSCREEN);

  // Bitmap.SetSize(ScreenWidth, ScreenHeight);
  Bitmap.Width := ScreenWidth;
  Bitmap.Height := ScreenHeight;
  Bitmap.PixelFormat := pf24bit;

  ScreenDC := GetDC(0);
  try
    BitBlt(Bitmap.Canvas.Handle, 0, 0, ScreenWidth, ScreenHeight, ScreenDC, 0, 0, SRCCOPY);
  finally
    ReleaseDC(0, ScreenDC);
  end;
end;

function LoadImage(const FileName: string): pCvMat_t;
var

  sfile: CvString_t;
begin
  sfile.pstr := PAnsiChar(AnsiString(FileName));

  Result := pCvimread(@sfile, ord(IMREAD_COLOR));
  if Result = nil then
    raise Exception.Create('Failed to load image: ' + FileName);
end;
end.
