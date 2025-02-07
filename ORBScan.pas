unit ORBScan;

interface

uses Vcl.Imaging.jpeg, Vcl.Controls, Vcl.ExtCtrls,
  OPENCVWrapper, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.Graphics, Vcl.StdCtrls,
  System.Generics.Collections, common;

function PerformTemplateMatching(FileName: string; threshold: single): double;

implementation

uses unit1;

type
  TDetection = class
    confidence: double;
    classId: Integer;
    box: TRect;
    nsmValid: Boolean;
  end;

var
  NMS_THRES: single = 0.5;



function MatchTemplate(const SourceImg, TemplateImg: pCvMat_t): pCvMat_t;
var
  ResultImg: pCvMat_t;
  ResultWidth, ResultHeight: Integer;
begin

  // pCvCvtColor(internImage, colorImg, Ord(COLOR_GRAY2BGR));
  // MatImage2Bitmap(colorImg, bmp);
  // pCvMatDelete(colorImg);

  ResultWidth := pCvMatGetWidth(SourceImg) - pCvMatGetWidth(TemplateImg) + 1;
  ResultHeight := pCvMatGetHeight(SourceImg) - pCvMatGetHeight(TemplateImg) + 1;

  ResultImg := pCvMatImageCreate(ResultWidth, ResultHeight, CV_8UC3); // CV_32FC1

  pcvmatchTemplate(SourceImg, TemplateImg, ResultImg, ord(TM_CCOEFF_NORMED),TemplateImg);
  Result := ResultImg;
end;

function DrawRectangleOnMatch(const SourceImg, ResultImg: pCvMat_t; const TemplateImg: pCvMat_t;
  threshold: single): double;
var
  MinVal, MaxVal: double;
  MinLoc, MaxLoc: pCvPoint_t;
  ppts: pCvPoint_t;
  pts: CvPointS;
  windowName: string;
  cvstr: CvString_t;
  Bitmap: TBitmap;
begin
  result:=0;

  MinLoc := pCvPointCreate();
  MaxLoc := pCvPointCreate();
  pcvminMaxLoc(ResultImg, @MinVal, @MaxVal, MinLoc, MaxLoc, nil);
  Result := MaxVal;
//  if MaxVal > threshold then
//  begin
//    pCvPointToStruct(MaxLoc, @pts);
//    ppts := cvPoint_(pts.x + pCvMatGetWidth(TemplateImg), pts.y + pCvMatGetHeight(TemplateImg));
//    pcvrectangle(SourceImg, MaxLoc, ppts, cvScalar_(0, 255, 0, 0), 4, 8, 0);

//    Bitmap := TBitmap.Create;
//    try
//      Bitmap.Width := pCvMatGetWidth(SourceImg);
//      Bitmap.Height := pCvMatGetHeight(SourceImg);
//      Bitmap.PixelFormat := pf24bit;

//      MatImage2Bitmap(SourceImg, Bitmap);
//      image.Picture.Assign(Bitmap);

//    finally
//      Bitmap.Free;
//    end;

//  end;
end;



function PerformTemplateMatching(FileName: string;   threshold: single): double;
var
  DesktopBitmap: TBitmap;
  SourceImg, TemplateImg, ResultImg: pCvMat_t;
  TemplateFileName: string;
begin
  result:=0;

  if FileName = '' then
    exit;

  DesktopBitmap := TBitmap.Create;
  try
    // Capture the desktop image
    CaptureDesktop(DesktopBitmap);

    // Convert the captured image to OpenCV Mat
    // SourceImg:=pCvMatCreateEmpty();
    // pCvMatConvertTo(SourceImg, SourceImg, CV_8U);
    SourceImg := pCvMatImageCreate(DesktopBitmap.Width, DesktopBitmap.Height, CV_8UC3);
    Bitmap2MatImage(SourceImg, DesktopBitmap);

    // Load the template image
    TemplateFileName := FileName;
    TemplateImg := LoadImage(TemplateFileName);

    // Perform template matching
    ResultImg := MatchTemplate(SourceImg, TemplateImg);

    // Draw rectangle on match and display result
    Result := DrawRectangleOnMatch(SourceImg, ResultImg, TemplateImg,  threshold);



    // Release images

    pCvMatDelete(SourceImg);
    pCvMatDelete(TemplateImg);
    pCvMatDelete(ResultImg);
  finally
    DesktopBitmap.Free;
  end;
end;

end.
