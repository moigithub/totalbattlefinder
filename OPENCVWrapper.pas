{
  Copyright (C) 2023 Giandomenico De Sanctis gidesay@yahoo.com

  This source is free software; you can redistribute it and/or modify it under
  the terms of the GNU General Public License as published by the Free
  Software Foundation; either version 2 of the License, or (at your option)
  any later version.

  This code is distributed in the hope that it will be useful, but WITHOUT ANY
  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
  details.

  A copy of the GNU General Public License is available on the World Wide Web
  at <http://www.gnu.org/copyleft/gpl.html>. You can also obtain it by writing
  to the Free Software Foundation, Inc., 51 Franklin Street - Fifth Floor,
  Boston, MA 02110-1335, USA.
}
{** OpencvWrapper: wrapper for Opencv C++ API interface

Current Opencv version supported is 4.6}
unit OPENCVWrapper;
{$WARN SYMBOL_PLATFORM OFF}

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}
interface
uses
{$ifdef MSWINDOWS}
   Windows,
{$endif}
{$ifdef FPC}
     Math{$ifdef LCL},Graphics, FPImage, IntfGraphics{$endif};
{$else}
  System.Math, Vcl.Graphics;
{$endif}


const


{ If you want to debug the C++ library from Visual Studio,
  define DEBUGDLL, and the program will load the debug dll
  Note: only for Delphi }

{...$DEFINE DEBUGDLL}


{ Conditionals for Lazarus/FPC on MacOS}
{$IFDEF FPC}
{$IFDEF DARWIN}
   {$linklib libocvCPPWrapper46.dylib}
{$ENDIF}
{$ENDIF}


{$IFDEF  DEBUG}
  {$IFDEF DEBUGDLL}
     {$INCLUDE 'debug_DLL_dir.inc'}
  {$ELSE}
     DLL_DIR = '';
  {$ENDIF}
{$ELSE}
  DLL_DIR = '';
{$ENDIF}

{$IFDEF WIN64}
ocvWrapper = DLL_DIR + 'ocvCPPWrapper46x64';
{$ELSE}
ocvWrapper = DLL_DIR + 'ocvCPPWrapper46';
{$ENDIF}

{$INCLUDE 'unOcvWrapper_const.pas'}


type

__intern__1 = record  end;
__intern__2 = record  end;
__intern__3 = record  end;
__intern__4 = record  end;
__intern__5 = record  end;
__intern__6 = record  end;
__intern__7 = record  end;
__intern__8 = record  end;
__intern__9 = record  end;
__intern__10 = record  end;
__intern__11 = record  end;
__intern__12 = record  end;
__intern__13 = record  end;
__intern__14 = record  end;
__intern__15 = record  end;
__intern__16 = record  end;
__intern__17 = record  end;
__intern__18 = record  end;
__intern__19 = record  end;
__intern__20 = record  end;
__intern__21 = record  end;
__intern__22 = record  end;
__intern__23 = record  end;
__intern__24 = record  end;
__intern__25 = record  end;
__intern__26 = record  end;
__intern__27 = record  end;
__intern__28 = record  end;
__intern__29 = record  end;


__intern__30 = record  end;
__intern__31 = record  end;
__intern__32 = record  end;
__intern__33 = record  end;
__intern__34 = record  end;
__intern__35 = record  end;
__intern__36 = record  end;
__intern__37 = record  end;
__intern__38 = record  end;
__intern__39 = record  end;
__intern__40 = record  end;
__intern__41 = record  end;
__intern__42 = record  end;
__intern__43 = record  end;
__intern__44 = record  end;
__intern__45 = record  end;
__intern__46 = record  end;
__intern__47 = record  end;
__intern__48 = record  end;
__intern__49 = record  end;
__intern__50 = record  end;
__intern__51 = record  end;
__intern__52 = record  end;
__intern__53 = record  end;
__intern__54 = record  end;
__intern__55 = record  end;
__intern__56 = record  end;
__intern__57 = record  end;
__intern__58 = record  end;
__intern__59 = record  end;
__intern__60 = record  end;
__intern__61 = record  end;


__intern__70 = record  end;
__intern__71 = record  end;
__intern__72 = record  end;
__intern__73 = record  end;
__intern__74 = record  end;
__intern__75 = record  end;
__intern__76 = record  end;
__intern__77 = record  end;
__intern__78 = record  end;
__intern__79 = record  end;
__intern__80 = record  end;
__intern__81 = record  end;
__intern__82 = record  end;
__intern__83 = record  end;
__intern__84 = record  end;
__intern__85 = record  end;
__intern__86 = record  end;
__intern__87 = record  end;
__intern__88 = record  end;
__intern__89 = record  end;
__intern__90 = record  end;
__intern__91 = record  end;
__intern__92 = record  end;
__intern__93 = record  end;
__intern__94 = record  end;
__intern__95 = record  end;
__intern__96 = record  end;
__intern__97 = record  end;
__intern__98 = record  end;
__intern__99 = record  end;
__intern__100 = record  end;
__intern__101 = record  end;
__intern__102 = record  end;
__intern__103 = record  end;
__intern__104 = record  end;
__intern__105 = record  end;
__intern__106 = record  end;
__intern__107 = record  end;
__intern__108 = record  end;
__intern__109 = record  end;
__intern__110 = record  end;
__intern__111 = record  end;
__intern__112 = record  end;
__intern__113 = record  end;
__intern__114 = record  end;
__intern__115 = record  end;
__intern__116 = record  end;
__intern__117 = record  end;
__intern__118 = record  end;
__intern__119 = record  end;
__intern__120 = record  end;
__intern__121 = record  end;
__intern__122 = record  end;
__intern__123 = record  end;
__intern__124 = record  end;
__intern__125 = record  end;
__intern__126 = record  end;
__intern__127 = record  end;
__intern__128 = record  end;
__intern__129 = record  end;
__intern__130 = record  end;
__intern__131 = record  end;
__intern__132 = record  end;
__intern__133 = record  end;
__intern__134 = record  end;
__intern__135 = record  end;
__intern__136 = record  end;
__intern__137 = record  end;
__intern__138 = record  end;
__intern__139 = record  end;




const
IPL_ORIGIN_TL  = 0;
IPL_ORIGIN_BL  = 1;


type
  TIplROI = record
    Coi     : Integer;
    XOffset : Integer;
    YOffset : Integer;
    Width   : Integer;
    Height  : Integer;
  end;
  PIplROI = ^TIplROI;

  //** IplImage structure from old Opencv C API
  //** Retained for compatibility for some functions.
  PIplImage = ^TIplImage;
  TIplImage = record
    NSize           : Integer;                 // size of iplImage struct
    ID              : Integer;                 // version
    NChannels       : Integer;
    AlphaChannel    : Integer;
    Depth           : Integer;                 // pixel depth in bits
    ColorModel      : array [0..3] of AnsiChar;
    ChannelSeq      : array [0..3] of AnsiChar;
    DataOrder       : Integer;
    Origin          : Integer;
    Align           : Integer;                 // 4 or 8 byte align
    Width           : Integer;
    Height          : Integer;
    Roi             : PIplROI;
    MaskROI         : PIplImage;               // pointer to maskROI if any
    ImageId         : Pointer;                 // use of the application
    TileInfo        : Pointer;                 // contains information on tiling
    ImageSize       : Integer;                 // useful size in bytes
    ImageData       : PByte;                   // pointer to aligned image
    WidthStep       : Integer;                 // size of aligned line in bytes
    BorderMode      : array [0..3] of Integer;
    BorderConst     : array [0..3] of Integer;
    ImageDataOrigin : PByte;                   // ptr to full, nonaligned image
  end;





{ Opencv and C++ native classes, vectors, pointers type }
PCvMat_t = ^__intern__1;
PCvVec2d_t = ^__intern__2;
PCvVec3d_t = ^__intern__3;
PCvVec3b_t = ^__intern__4;
PCvVec4f_t = ^__intern__5;
PCvVec6f_t = ^__intern__6;
PCvSize_t = ^__intern__7;
PCvRect_t = ^__intern__8;
PCvRotatedRect_t = ^__intern__9;
PCvPoint_t = ^__intern__10;
PCvPoint2d_t = ^__intern__11;
PCvPoint2f_t = ^__intern__12;
PCvScalar_t = ^__intern__13;
PCvTermCriteria_t = ^__intern__14;
PCvCvTermCriteria_t = ^__intern__15;
PCvRange_t = ^__intern__16;
PCvCvSlice_t = ^__intern__17;
PCvIndexParams_t = ^__intern__18;
PCvSearchParams_t = ^__intern__19;
PCvLayerId_t = ^__intern__20;
PCvRNG_t = ^__intern__21;
PCvSize2f_t = ^__intern__22;
PCvVec2i_t = ^__intern__23;
PCvVec3i_t = ^__intern__24;
PCvRect2d_t = ^__intern__25;
PCvdnn_Target_t = ^__intern__26;
PCvStream_t = ^__intern__27;
PCvDescriptorExtractor_t = ^__intern__28;
PCvFeatureDetector_t = ^__intern__29;


PCvvector_CameraParams = ^__intern__30;
PCvvector_DMatch = ^__intern__31;
PCvvector_ImageFeatures = ^__intern__32;
PCvvector_KeyPoint = ^__intern__33;
PCvvector_Mat = ^__intern__34;
PCvvector_MatShape = ^__intern__35;
PCvvector_MatchesInfo = ^__intern__36;
PCvvector_Point = ^__intern__37;
PCvvector_Point2f = ^__intern__38;
PCvvector_Range = ^__intern__39;
PCvvector_Rect = ^__intern__40;
PCvvector_Rect2d = ^__intern__41;
PCvvector_RotatedRect = ^__intern__42;
PCvvector_Size = ^__intern__43;
PCvvector_String = ^__intern__44;
PCvvector_Target = ^__intern__45;
PCvvector_UMat = ^__intern__46;
PCvvector_Vec4f = ^__intern__47;
PCvvector_Vec6f = ^__intern__48;
PCvvector_char = ^__intern__49;
PCvvector_double = ^__intern__50;
PCvvector_float = ^__intern__51;
PCvvector_int = ^__intern__52;
PCvvector__string = ^__intern__53;
PCvvector_uchar = ^__intern__54;
PCvvector_vector_DMatch = ^__intern__55;
PCvvector_vector_KeyPoint = ^__intern__56;
PCvvector_vector_Mat = ^__intern__57;
PCvvector_vector_MatShape = ^__intern__58;
PCvvector_vector_Point = ^__intern__59;
PCvvector_vector_Point2f = ^__intern__60;
PCvvector_vector_char = ^__intern__61;

{ alias of PCvvector_int }
PCvMatShape =  PCvvector_int;

PCvPtr_AKAZE = ^__intern__70;
PCvPtr_ANN_MLP = ^__intern__71;
PCvPtr_AffineFeature = ^__intern__72;
PCvPtr_AgastFeatureDetector = ^__intern__73;
PCvPtr_AlignMTB = ^__intern__74;
PCvPtr_BRISK = ^__intern__75;
PCvPtr_BackgroundSubtractorKNN = ^__intern__76;
PCvPtr_BackgroundSubtractorMOG2 = ^__intern__77;
PCvPtr_BestOf2NearestMatcher = ^__intern__78;
PCvPtr_Blender = ^__intern__79;
PCvPtr_CLAHE = ^__intern__80;
PCvPtr_CalibrateDebevec = ^__intern__81;
PCvPtr_CalibrateRobertson = ^__intern__82;
PCvPtr_DISOpticalFlow = ^__intern__83;
PCvPtr_DTrees = ^__intern__84;
PCvPtr_DescriptorExtractor = ^__intern__85;
PCvPtr_DescriptorMatcher = ^__intern__86;
PCvPtr_EM = ^__intern__87;
PCvPtr_ExposureCompensator = ^__intern__88;
PCvPtr_FaceDetectorYN = ^__intern__89;
PCvPtr_FaceRecognizerSF = ^__intern__90;
PCvPtr_FarnebackOpticalFlow = ^__intern__91;
PCvPtr_FastFeatureDetector = ^__intern__92;
PCvPtr_Feature2D = ^__intern__93;
PCvPtr_FeatureDetector = ^__intern__94;
PCvPtr_FileStorage = ^__intern__95;
PCvPtr_GFTTDetector = ^__intern__96;
PCvPtr_GeneralizedHoughBallard = ^__intern__97;
PCvPtr_GeneralizedHoughGuil = ^__intern__98;
PCvPtr_GpuMat_Allocator = ^__intern__99;
PCvPtr_KAZE = ^__intern__100;
PCvPtr_KNearest = ^__intern__101;
PCvPtr_Layer = ^__intern__102;
PCvPtr_LineSegmentDetector = ^__intern__103;
PCvPtr_LogisticRegression = ^__intern__104;
PCvPtr_MSER = ^__intern__105;
PCvPtr_MergeDebevec = ^__intern__106;
PCvPtr_MergeMertens = ^__intern__107;
PCvPtr_MergeRobertson = ^__intern__108;
PCvPtr_NormalBayesClassifier = ^__intern__109;
PCvPtr_ORB = ^__intern__110;
PCvPtr_OriginalClassName = ^__intern__111;
PCvPtr_ParamGrid = ^__intern__112;
PCvPtr_QRCodeEncoder = ^__intern__113;
PCvPtr_SIFT = ^__intern__114;
PCvPtr_SVM = ^__intern__115;
PCvPtr_SVMSGD = ^__intern__116;
PCvPtr_SeamFinder = ^__intern__117;
PCvPtr_SimpleBlobDetector = ^__intern__118;
PCvPtr_SparsePyrLKOpticalFlow = ^__intern__119;
PCvPtr_StereoBM = ^__intern__120;
PCvPtr_StereoSGBM = ^__intern__121;
PCvPtr_Stitcher = ^__intern__122;
PCvPtr_Timelapser = ^__intern__123;
PCvPtr_Tonemap = ^__intern__124;
PCvPtr_TonemapDrago = ^__intern__125;
PCvPtr_TonemapMantiuk = ^__intern__126;
PCvPtr_TonemapReinhard = ^__intern__127;
PCvPtr_TrackerDaSiamRPN = ^__intern__128;
PCvPtr_TrackerGOTURN = ^__intern__129;
PCvPtr_TrackerMIL = ^__intern__130;
PCvPtr_TrainData = ^__intern__131;
PCvPtr_VariationalRefinement = ^__intern__132;
PCvPtr_flann_IndexParams = ^__intern__133;
PCvPtr_flann_SearchParams = ^__intern__134;
PCvPtr_float = ^__intern__135;
PCvPtr_BFMatcher = ^__intern__136;
PCvPtr_FlannBasedMatcher = ^__intern__137;
PCvPtr_RTrees = ^__intern__138;
PCvPtr_Boost = ^__intern__139;




{ helper records for some simple Opencv classes }

//** Struct to encapsulate strings passed as input/ouput parameters
//** to C wrapper functions
  CvString_t   = record
      pstr: PAnsiChar;
      nrchar: Integer;
  end;
  PCvString_t = ^CvString_t;


  CvPoint2fS = record
    x: Single;
    y: Single;
  end {CvPoint2fS};

  CvPoint2dS = record
    x: Double;
    y: Double;
  end {CvPoint2dS};

  CvPointS = record
    x: Integer;
    y: Integer;
  end {CvPointS};

  CvSizeS = record
    width: Integer;
    height: Integer;
  end {CvSizeS};

  CvSize2fS = record
    width: Single;
    height: Single;
  end {CvSize2fS};


  CvRectS = record
    x: Integer;
    y: Integer;
    width: Integer;
    height: Integer;
  end {CvRectS};

  CvRect2dS = record
    x: Double;
    y: Double;
    width: Double;
    height: Double;
  end {CvRect2dS};


  CvRangeS = record
    _start: Integer;
    _end: Integer;
  end {CvRangeS};

  CvSliceS = record
    _start: Integer;
    _end: Integer;
  end {CvSliceS};

  CvVec2dS = record
    v0: Double;
    v1: Double;
  end {CvVec2dS};

  CvVec3dS = record
    v0: Double;
    v1: Double;
    v2: Double;
  end {CvVec3dS};


  CvVec3bS = record
    v0: byte;
    v1: byte;
    v2: byte;
  end {CvVec3bS};


  CvVec4fS = record
    v0: Double;
    v1: Double;
    v2: Double;
    v3: Double;
  end {CvVec4fS};

  CvVec6fS = record
    v0: Double;
    v1: Double;
    v2: Double;
    v3: Double;
    v4: Double;
    v5: Double;
  end {CvVec6fS};

  CvScalarS = record
    v0: Double;
    v1: Double;
    v2: Double;
    v3: Double;
  end {CvScalarS};

  CvVec2iS = record
    v0: Integer;
    v1: Integer;
  end {CvVec2iS};


  CvVec3iS = record
      v0: Integer;
      v1: Integer;
      v2: Integer;
  end {CvVec3iS};



  CvRotatedRectS = record
    center: CVPOINT2FS;
    size: CVSIZES;
    angle: Single;
  end {CvRotatedRectS};

  CvFileNodeS = record
    tag: Integer;
    info: Pointer;
{-  information }
{=(only for user-defined object, for others it is 0) }
    f: Double;
{= scalar floating-point number }
    i: Integer;
{= scalar integer number }
    strlen: Integer;
{= text string }
    str: PChar;
    seq: Pointer;
{= sequence (ordered collection of file nodes) }
    map: Pointer;
{= map (collection of named file nodes) }
  end {CvFileNodeS};


  CvTermCriteriaS = record
    _type: Integer;
{- may be combination of }
{-CV_TERMCRIT_ITER }
{=CV_TERMCRIT_EPS }
    max_iter: Integer;
    epsilon: Double;
  end {CvTermCriteriaS};

  CvMomentsS = record
    m00, m10, m01, m20, m11, m30, m21, m12, m03: Double;
{= spatial moments }
    mu20, mu11, mu02, mu30, mu21, mu12, mu03: Double;
{= central moments }
    nu20, nu11, nu02, nu30, nu21, nu12, nu03: Double;
  end {CvMomentsS};

PCvPoint2fS = ^CvPoint2fS;
PCvPoint2dS = ^CvPoint2dS;
PCvPointS   = ^CvPointS;
PCvSizeS    = ^CvSizeS;
PCvSize2fS  = ^CvSize2fS;
PCvRectS    = ^CvRectS;
PCvRect2dS  = ^CvRect2dS;
PCvRangeS = ^CvRangeS;
PCvSliceS = ^CvSliceS;
PCvVec2dS = ^CvVec2dS;
PCvVec3bS = ^CvVec3bS;
PCvVec3dS = ^CvVec3dS;
PCvVec4fS = ^CvVec4fS;
PCvVec6fS = ^CvVec6fS;
PCvVec2iS  = ^CvVec2iS;
PCvVec3iS  = ^CvVec3iS;
PCvScalarS = ^CvScalarS;
PCvRotatedRectS = ^CvRotatedRectS;
PCvFileNodeS = ^CvFileNodeS;
PCvTermCriteriaS = ^CvTermCriteriaS;
PCvMomentsS = ^CvMomentsS;


{$INCLUDE   'unOcvWrapper_types.pas'}


{------------- Pascal helpers ---------------}
  //** Create an Opencv Size object with passed parameters. If pcvsize is not null,
  //**    simply overwrite/update object properties.
  function  CvSize_(width, height: Integer; pcvsize: PCvSize_t = nil): PCvSize_t;
  //** Create an Opencv Scalar object with passed parameters. If pcvscalar is not null,
  //** simply overwrite/update object properties.
  function  CvScalar_(v0, v1, v2, v3: Double; pcvscalar: PCvScalar_t = nil): PCvScalar_t;
  //** Create an Opencv Point object with passed integer parameters. If pcpoint is not null,
  //** simply overwrite/update object properties.
  function  CvPoint_(x, y: Integer; pcvpoint: PCvPoint_t = nil): PCvPoint_t;
  //** Create an Opencv Vec3b object with passed byte parameters. If pcvec3b is not null,
  //** simply overwrite/update object properties.
  function  CvVec3b_(v0, v1, v2: byte; pcvvec3b: PCvVec3b_t = nil): PCvVec3b_t;
  //** Create an Opencv TermCriteria object with passed  parameters. If pcvtermcrit is not null,
  //** simply overwrite/update object properties.
  function  CvTermCriteria_(tcType: integer; max_iter: Integer; epsilon: Double;
                           pcvtermcrit: PCvTermCriteria_t = nil): PCvTermCriteria_t;
  //** Create an Opencv Rect2d object with passed  parameters. If pcvrect2d is not null,
  //** simply overwrite/update object properties.
  function  CvRect2d_(x, y, width, height: Double; pcvrect2d: PCvRect2d_t = nil): PCvRect2d_t;
  //** Create an Opencv MorphologyDefaultBordeValue object with passed  parameters.
  function  pCvMorphologyDefaultBorderValue(): PCvScalar_t;
  //** Convert an Opencv Mat image to TBitmap object
  procedure MatImage2Bitmap(matImg: PCvMat_t; var bitmap: TBitmap);
  //** Convert a TBitmap object to an Opencv Mat image
  procedure Bitmap2MatImage(matImage: PCvMat_t;  bitmap: TBitmap);
  //** Decode to a printable value the type of a Mat object
  procedure  CvMatTypeDecode(const mat: PCvMat_t; var dataType: string; var nchans: Integer);
  //** Redirect C++ exception to the procedure passed as a parameter.
  //** Signature of procedure must be: procedure(msg: PCvString_t); cdecl;
  function  pCvRedirectException(const proc: Pointer): Boolean; cdecl;
{--------------------------------------------}
{ --------------- Opencv User functions ------------}
// nothing
{---------------------------------------------------}
{ C++ string class }
  function   pCvStringCreate(const nrchar: Integer): PCvString_t;   cdecl;
  procedure  pCvStringDelete(const cvstr: PCvString_t);  cdecl;

{ Opencv Mat class }
  function   pCvMatCreate(const ndims: Integer; const dims: PInteger; const mtype: integer; dataptr: UInt64 = 0; const sizes: PUInt64 = 0): PCvMat_t; cdecl;
  function   pCvMatCreateEmpty (): PCvMat_t  ; cdecl;
  function   pCvMat2dCreate (const rows: Integer; const cols: Integer; const mtype: integer): PCvMat_t ; cdecl;
  function   pCvMatImageCreate(const width: Integer; height: Integer; const mtype: Integer): PCvMat_t; cdecl;
  procedure  pCvMatDelete (const mat: PCvMat_t); cdecl;
  function   pCvMatROI(const mat: PCvMat_t; const roi: PCvRectS): PCvMat_t; cdecl;
  procedure  pCvMatFill(const wrapper: PCvMat_t; const val: PCvScalar_t; const mask: PCvMat_t = nil); cdecl;
  //** Operations between a Mat and a scalar value. Possible op codes: '+', '-', '*', '/'
  procedure  pCvMatScalarOp(const wrapper: PCvMat_t; const op: AnsiChar; val: Double); cdecl;
  function   pCvMatGetRow (const mat: PCvMat_t; const rowind: integer): PCvMat_t; cdecl;
  procedure  pCvMatCopy(const src: PCvMat_t; const dst: PCvMat_t; const mask: PCvMat_t { default: Mat() } = nil); cdecl;
  function   pCvMatClone (const mat: PCvMat_t): PCvMat_t; cdecl;
  procedure  pCvMatConvertTo(const src: PCvMat_t; const dst: PCvMat_t; dstType: Integer; alpha: Double = 1.0; beta: Double = 0); cdecl;
  procedure  pCvMatExtractChannel(const src: PCvMat_t; const dst: PCvMat_t; channelId: integer); cdecl;
  procedure  pCvMatCopyToUmat (const mat: PCvMat_t; const dest: PCvUMat_t); cdecl;
  function   pCvMatToUmat (const mat: PCvMat_t): PCvUMat_t; cdecl;
  function   pCvMatFromUmat (const mat: PCvUMat_t): PCvMat_t; cdecl;
  function   pCvMatSetByte(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: Byte; const channel: Integer = 0): Byte; cdecl;
  function   pCvMatGetByte(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; channel: Integer = 0): Byte; cdecl;

  function   pCvMatSetInt8(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: Int8; const channel: Integer = 0): Int8; cdecl;
  function   pCvMatGetInt8(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; channel: Integer = 0): Int8; cdecl;
  function   pCvMatSetSmallint(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: SmallInt; const channel: Integer = 0): SmallInt; cdecl;
  function   pCvMatGetSmallint(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; channel: Integer = 0): SmallInt; cdecl;
  function   pCvMatSetWord(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: Word; const channel: Integer = 0): Word; cdecl;
  function   pCvMatGetWord(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; channel: Integer = 0): Word; cdecl;

  function   pCvMatSetInt(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: Integer; const channel: Integer = 0): Integer; cdecl;
  function   pCvMatGetInt(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const channel: Integer = 0): Integer; cdecl;
  function   pCvMatSetFloat(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: Single; const channel: Integer = 0): Single; cdecl;
  function   pCvMatGetFloat(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const channel: Integer = 0): Single; cdecl;
  function   pCvMatSetFloatMultidim(const mat: PCvMat_t; const indexes: PInteger; const val: Single): Single; cdecl;
  function   pCvMatGetFloatMultidim(const mat: PCvMat_t; const indexes: PInteger): Single; cdecl;
  function   pCvMatSetDouble(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: Double; const channel: Integer = 0): Double; cdecl;
  function   pCvMatGetDouble(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const channel: Integer = 0): Double; cdecl;
  function   pCvMatSetPixelC3(const mat: PCvMat_t; const rowind: Integer; const colind: Integer; const val: PCvVec3b_t ): PCvVec3b_t; cdecl;
  function   pCvMatGetPixelC3(const mat: PCvMat_t; const rowind: Integer; const colind: Integer): PCvVec3b_t; cdecl;
  function   pCvMatGetWidth(const mat: PCvMat_t): Integer ; cdecl;
  function   pCvMatGetHeight(const mat: PCvMat_t): Integer ; cdecl;
  function   pCvMatGetChannels(const mat: PCvMat_t): Integer ; cdecl;
  function   pCvMatGetType(const mat: PCvMat_t): Integer ; cdecl;
  function   pCvMatGetDimsNum(const mat: PCvMat_t): Integer ; cdecl;
  procedure  pCvMatGetDims(const mat: PCvMat_t; dimArr: PInteger); cdecl;
  function   pCvMatGetDimPtr(const mat: PCvMat_t; const ind1: Integer; const ind2: integer): UInt64; cdecl;
  function   pCvMatGetData(const mat: PCvMat_t): UInt64 ; cdecl;
  function   pCvMatGetDepth(const mat: PCvMat_t): Integer ; cdecl;

  function   pCvMatToIplImage(const mat: PCvMat_t): PIplImage; cdecl;
  procedure  pCvIplImageToMat(const iplim: PIplImage; mat: PCvMat_t); cdecl;
  procedure  pCvIplImageDelete (const iplimg: PIplImage ); cdecl;


{----- Other Opencv and C++ native classes -----------}
{$INCLUDE   'unOcvWrapper_nativeClasses.pas'}
{----- Opencv classes and global functions  ----------}
{$INCLUDE   'unOcvWrapper_functions.pas'}


//**  Here are the more frequent default values in functions and methods arguments,
//   that are defined as classes instance. They are defined here to help
//   calling ocvWrapper functions.
//**   Example:
//**   Procedure  pCvaccumulate(src: PCvMat_t; dst: PCvMat_t; mask: PCvMat_t (* default: Mat() *));
//**   can be called as:
//**     pCvaccumulate(src, dst, pCvDefaultMat);
//**   Example:
//**   Procedure  pCvpyrUp(src: PCvMat_t; dst: PCvMat_t; dstsize: PCvSize_t (* default: Size() *);
//                            borderType: Integer (* default: BORDER_DEFAULT *));
//**   can be called as:
//**     pCvpyrUp(src, dst, pCvDefaultSize, BORDER_DEFAULT );



var
  pCvDefaultMat:    PCvMat_t;
  pCvDefaultSize:   PCvSize_t;
  pCvDefaultPoint:  PCvPoint_t;
  pCvDefaultScalar: PCvScalar_t;
  //** For Opencv default value  Point(-1,-1)
  pCvPoint_1_1:     PCvPoint_t;
  StringEmpty:      CvString_t;
  pCvStringEmpty:   PCvString_t;


{-----------------------------------------------------------------------------------------------}
implementation
 {$IFDEF FPC}
 uses SysUtils;
 {$ELSE}
 uses System.SysUtils;
 {$ENDIF}

 {$IFNDEF FPC}
    {...$DEFINE DELPHIDELAYED}
 {$ENDIF}

 function   pCvRedirectException;         external ocvWrapper  name 'pCvRedirectException'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};

 function   pCvStringCreate;              external ocvWrapper  name 'pCvStringCreate'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvStringDelete;              external ocvWrapper  name 'pCvStringDelete'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};

 function   pCvMatCreate;                 external ocvWrapper  name 'pCvMatCreate'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMat2dCreate;               external ocvWrapper  name 'pCvMat2dCreate';
 function   pCvMatCreateEmpty;            external ocvWrapper  name 'pCvMatCreateEmpty'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatImageCreate;            external ocvWrapper  name 'pCvMatImageCreate'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatDelete;                 external ocvWrapper  name 'pCvMatDelete'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatROI;                    external ocvWrapper  name 'pCvMatROI'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatCopy;                   external ocvWrapper  name 'pCvMatCopy'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatConvertTo;              external ocvWrapper  name 'pCvMatConvertTo'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatExtractChannel;         external ocvWrapper  name 'pCvMatExtractChannel'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatClone;                  external ocvWrapper  name 'pCvMatClone'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatCopyToUmat;             external ocvWrapper  name 'pCvMatCopyToUmat'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatToUmat;                 external ocvWrapper  name 'pCvMatToUmat'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatFromUmat;               external ocvWrapper  name 'pCvMatFromUmat'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatFill;                   external ocvWrapper  name 'pCvMatFill'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatScalarOp;               external ocvWrapper  name 'pCvMatScalarOp'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetRow;                 external ocvWrapper  name 'pCvMatGetRow'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetByte;                external ocvWrapper  name 'pCvMatGetByte'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetByte;                external ocvWrapper  name 'pCvMatSetByte'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};

 function   pCvMatGetInt8;                external ocvWrapper  name 'pCvMatGetInt8'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetInt8;                external ocvWrapper  name 'pCvMatSetInt8'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetSmallint;            external ocvWrapper  name 'pCvMatGetSmallint'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetSmallint;            external ocvWrapper  name 'pCvMatSetSmallint'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetWord;                external ocvWrapper  name 'pCvMatGetWord'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetWord;                external ocvWrapper  name 'pCvMatSetWord'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};


 function   pCvMatGetInt;                 external ocvWrapper  name 'pCvMatGetInt'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetInt;                 external ocvWrapper  name 'pCvMatSetInt'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetFloat;               external ocvWrapper  name 'pCvMatGetFloat'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetFloat;               external ocvWrapper  name 'pCvMatSetFloat'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetFloatMultidim;       external ocvWrapper  name 'pCvMatGetFloatMultidim'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetFloatMultidim;       external ocvWrapper  name 'pCvMatSetFloatMultidim'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetDouble;              external ocvWrapper  name 'pCvMatGetDouble'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetDouble;              external ocvWrapper  name 'pCvMatSetDouble'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetPixelC3;             external ocvWrapper  name 'pCvMatGetPixelC3'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatSetPixelC3;             external ocvWrapper  name 'pCvMatSetPixelC3'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetWidth;               external ocvWrapper  name 'pCvMatGetWidth'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetHeight;              external ocvWrapper  name 'pCvMatGetHeight'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetChannels;            external ocvWrapper  name 'pCvMatGetChannels'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetType;                external ocvWrapper  name 'pCvMatGetType'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetDimsNum;             external ocvWrapper  name 'pCvMatGetDimsNum'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvMatGetDims;                external ocvWrapper  name 'pCvMatGetDims'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetDimPtr;              external ocvWrapper  name 'pCvMatGetDimPtr'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetData;                external ocvWrapper  name 'pCvMatGetData'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatGetDepth;               external ocvWrapper  name 'pCvMatGetDepth'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvIplImageToMat;             external ocvWrapper  name 'pCvIplImageToMat'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 function   pCvMatToIplImage;             external ocvWrapper  name 'pCvMatToIplimage'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};
 procedure  pCvIplImageDelete;            external ocvWrapper  name 'pCvIplImageDelete'{$IFDEF DELPHIDELAYED} delayed {$ENDIF};


{$INCLUDE 'unOcvWrapper_nativeClasses_extern.pas'}
{$INCLUDE 'unOcvWrapper_extern.pas'}



procedure cvException(msg: PCvString_t); cdecl;
begin
   raise Exception.Create('OpenCV Error: '+msg^.pstr);
end;


function CvSize_(width, height: Integer; pcvsize: PCvSize_t): PCvSize_t;
var
  csize: CvSizeS;
begin
  csize.width:=width;
  csize.height:=height;
  if pcvsize = nil then
        Result:=pCvSizeCreate()
  else
     result:=pcvsize;
  pCvSizeFromStruct(Result, @csize);
end;

function CvScalar_(v0, v1, v2, v3: Double; pcvscalar: PCvScalar_t): PCvScalar_t;
var
  cscalar: CvScalarS;
begin
  cscalar.v0 :=v0;
  cscalar.v1 :=v1;
  cscalar.v2 :=v2;
  cscalar.v3 :=v3;
  if pcvscalar = nil then
    Result := pCvScalarCreate()
  else
    Result := pcvscalar;

  pCvScalarFromStruct(Result, @cscalar);
end;

function CvPoint_(x, y: Integer; pcvpoint: PCvPoint_t): PCvPoint_t;
var
  cpoint: CvPointS;
begin
  cpoint.x := x;
  cpoint.y := y;
  if pcvpoint = nil then
    Result := pCvPointCreate()
  else
    Result := pcvpoint;

  pCvPointFromStruct(Result, @cpoint);
end;

function CvVec3b_(v0, v1, v2: byte; pcvvec3b: PCvVec3b_t): PCvVec3b_t;
var
  cvec3b: Cvvec3bS;
begin
  cvec3b.v0 :=v0;
  cvec3b.v1 :=v1;
  cvec3b.v2 :=v2;
  if pcvvec3b = nil then
    Result := pCvvec3bCreate()
  else
    Result := pcvvec3b;

  pCvvec3bFromStruct(Result, @cvec3b);
end;

function CvTermCriteria_(tcType: integer; max_iter: Integer; epsilon: Double;
                   pcvtermcrit: PCvTermCriteria_t): PCvTermCriteria_t;
var
  ctermcrit: CvTermCriteriaS;
begin
  ctermcrit._type:=tcType;
  ctermcrit.max_iter:=max_iter;
  ctermcrit.epsilon:=epsilon;
  if pcvtermcrit = nil then
    Result:=pCvTermCriteriaCreate()
  else
    Result:=pcvtermcrit;

  pCvTermCriteriaFromStruct(Result, @ctermcrit);
end;

function CvRect2d_(x, y, width, height: Double; pcvrect2d: PCvRect2d_t): PCvRect2d_t;
var
  crect2d: CvRect2dS;
begin
  crect2d.x:=x;
  crect2d.y:=y;
  crect2d.width:=width;
  crect2d.height:=height;
  if pcvrect2d = nil then
        Result:=pCvrect2dCreate()
  else
     result:=pcvrect2d;
  pCvRect2dFromStruct(Result, @crect2d);
end;

var
  { Opencv Mat data types names }
  OCVTYPE: array[0..6] of string = ('CV_8U', 'CV_8S', 'CV_16U', 'CV_16S', 'CV_32S', 'CV_32F', 'CV_64F');

procedure CvMatTypeDecode(const mat: PCvMat_t; var dataType: string; var nchans: Integer);
//        C1  C2  C3  C4
//
//CV_8U   0   8  16  24
//CV_8S   1   9  17  25
//CV_16U  2  10  18  26
//CV_16S  3  11  19  27
//CV_32S  4  12  20  28
//CV_32F  5  13  21  29
//CV_64F  6  14  22  30
var
  cvtype: Integer;
begin
  dataType:='???';
  nchans:=0;
  cvtype:= pCvMatGetType(mat);
  if (cvtype in [0..6]) then
  begin
    nchans:=1;
    dataType:=OCVTYPE[cvtype - 0];
  end;
  if (cvtype in [8..14]) then
  begin
    nchans:=2;
    dataType:=OCVTYPE[cvtype - 8];
  end;
  if (cvtype in [16..22]) then
  begin
    nchans:=3;
    dataType:=OCVTYPE[cvtype - 16];
  end;
  if (cvtype in [24..30]) then
  begin
    nchans:=4;
    dataType:=OCVTYPE[cvtype - 24];
  end;
end;

{-----------------------------------------------------------------------------
  Procedure:  MatImage2Bitmap
  Author:     G. De Sanctis
  Date:       6/2/2023
  Arguments:  matImg: PCvMat_t; bitmap: TBitmap
  Description: convert a MatImage to a Windows bitmap
-----------------------------------------------------------------------------}
procedure MatImage2Bitmap(matImg: PCvMat_t; var bitmap: TBitmap);
  VAR
    j        :  Integer;
    offset   :  UInt64;
    dataByte :  PByteArray;
    RowIn    :  pByteArray;

    iplImg   :  PIplImage;
    iWidth   :  Integer;
    iHeight  :  Integer;
    iWidthstep: Integer;
    iData    :  Pointer;

{$ifdef LCL}
    lazImg   : TLazIntfImage;
{$endif}
BEGIN
  TRY
    iplImg:=pCvMatToIplImage(matImg);
    Assert((iplimg.Depth = 8) and (iplimg.NChannels = 3),
                'Not a 24 bit color Opencv image!');
    iHeight:=iplimg.Height;
    iWidth:=iplimg.Width;
    iData:=iplimg.ImageData;
    iWidthstep := iplImg.WidthStep;
    bitmap.Height := iHeight;
    bitmap.Width := iWidth;
    bitmap.PixelFormat:=pf24bit;
{$ifdef LCL}
    lazImg := TLazIntfImage.Create(iWidth, iHeight);

    lazImg.LoadFromBitmap(bitmap.BitmapHandle, bitmap.MaskHandle);
{$endif}
    if (iplImg.ChannelSeq = 'BGR')
        and (iplimg.Origin = IPL_ORIGIN_BL) then
    begin
{$ifdef LCL}
        offset := UInt64(iData) - iWidthStep;
        FOR j := 0 TO Bitmap.Height-1 DO
        BEGIN
          RowIn  := lazImg.GetDataLineStart(bitmap.Height -1 - j);
          offset := offset + iWidthStep;
          dataByte := pbytearray( offset);
          {$IFDEF UNIX}
          Move(rowin, dataByte, iWidthStep);
          {$ELSE}
          CopyMemory(rowin, dataByte, iWidthStep);
          {$ENDIF}
        END;
{$else}
        RowIn  := Bitmap.Scanline[bitmap.height -1 ];
        dataByte := pbytearray(iData);
       {direct copy of the iplImage row bytes to bitmap row}
        CopyMemory(rowin, dataByte, iplImg.ImageSize);
{$endif}
    end else
{$ifdef LCL}
      FOR j := 0 TO Bitmap.Height-1 DO
      BEGIN
        RowIn  := lazImg.GetDataLineStart(j );
        offset := UInt64(iData) + iWidthStep * j;
        dataByte := pbytearray( offset);
        {$IFDEF UNIX}
        Move(rowin, dataByte, iWidthStep);
        {$ELSE}
        CopyMemory(rowin, dataByte, iWidthStep);
        {$ENDIF}
      END;
{$else}
     FOR j := 0 TO Bitmap.Height-1   DO
     BEGIN
        RowIn  := Bitmap.Scanline[j ];
        offset := longint(iData) + iWidthStep * j;
        dataByte := pbytearray( offset);
        try
         CopyMemory(rowin, dataByte, iWidthStep);
        except
          on E: Exception do
          begin
               raise  Exception.Create('MatImage2Bitmap- error in CopyMemory- ' + e.Message);
          end;
        end;
     END;
{$endif}
{$ifdef LCL}
    bitmap.LoadFromIntfImage(lazImg);
    lazImg.Free;
{$endif}
    pCvIplImageDelete(iplImg);
    exit;
  Except
        on E: Exception do
        begin
             raise  Exception.Create('MatImage2Bitmap- error - ' + e.Message);
        end;
  END
END; {MatImage2Bitmap}

{-----------------------------------------------------------------------------
  Procedure:  Bitmap2MatImage
  Author:     G. De Sanctis
  Date:       9/2/2023
  Arguments:  matImg: PCvMat_t ; bitmap: TBitmap
  Description:  convert a Windows bitmap (24 bit) to a Mat image
-----------------------------------------------------------------------------}
procedure Bitmap2MatImage(matImage: PCvMat_t;  bitmap: TBitmap);
  VAR
    j        :  Integer;
    dataByte :  PByteArray;
    RowIn    :  pByteArray;
    offset   :  UInt64;
    iplImg   :  PIplImage;
    iWidthstep: Integer;
    iData    :  Pointer;

{$ifdef LCL}
    lazImg: TLazIntfImage;
{$endif}
BEGIN
  TRY
    iplImg:=pCvMatToIplImage(matImage);
    assert((iplImg.Depth = 8) and (iplImg.NChannels = 3),
                'Not a 24 bit color iplImage!');
    assert((bitmap.pixelFormat = pf24bit) ,
                'Not a 24 bit color BMP bitmap!');

    iData:=iplimg.ImageData;
    iWidthstep := iplImg.WidthStep;



{$ifdef LCL}
    lazImg := TLazIntfImage.Create(bitmap.Width, bitmap.Height);
    lazImg.LoadFromBitmap(bitmap.Handle, bitmap.MaskHandle);
      FOR j := 0 TO Bitmap.Height-1 DO
      BEGIN
        RowIn  := lazImg.GetDataLineStart(j );
        offset := UInt64(iData) + iWidthStep * j;
        dataByte := pbytearray( offset);
        {$IFDEF UNIX}
        Move(dataByte, rowin, iWidthStep);
        {$ELSE}
        CopyMemory(dataByte, rowin, iWidthStep);
        {$ENDIF}
      END;
{$else}
     FOR j := 0 TO Bitmap.Height-1   DO
     BEGIN
        RowIn  := Bitmap.Scanline[j ];
        offset := longint(iData) + iWidthStep * j;
        dataByte := pbytearray( offset);
        try
         CopyMemory(dataByte, rowin, iWidthStep);
        except
          on E: Exception do
          begin
               raise  Exception.Create('Bitmap2MatImage- error in CopyMemory- ' + e.Message);
          end;
        end;
     END;
{$endif}
{$ifdef LCL}
    lazImg.Free;
{$endif}
    pCvIplImageDelete(iplImg);
  Except
        on E: Exception do
        begin
             raise  Exception.Create('Bitmap2MatImage- error - ' + e.Message);
        end;
  END
END; {Bitmap2MatImage}

function  pCvMorphologyDefaultBorderValue(): PCvScalar_t;
begin
  Result := CvScalar_(MaxDouble, MaxDouble, MaxDouble, MaxDouble);
end;

//----------------------------------------------------------------------------

var
  LoadedRedirectException: Boolean;
  DefaultsVarState: Integer;


procedure InitOCVExcRedirection;
begin
  try
    if not(LoadedRedirectException) then
        LoadedRedirectException:=  pCvRedirectException(@cvexception);
  except
    Halt(99);
  end;
end;


procedure InitOCVDefaults;
begin
  try
     { DefaultsVarState is used for delayed Delphi loading, it avoids
       double calls to create functions}
     if DefaultsVarState<1 then
        begin pCvDefaultMat:=pCvMatCreateEmpty();  Inc(DefaultsVarState); end;
     if DefaultsVarState<2 then
        begin pCvDefaultSize:=pCvSizeCreate();     Inc(DefaultsVarState); end;
     if DefaultsVarState<3 then
        begin pCvDefaultPoint:=pCvPointCreate();   Inc(DefaultsVarState); end;
     if DefaultsVarState<4 then
        begin pCvPoint_1_1:=CvPoint_(-1,-1);       Inc(DefaultsVarState); end;
     if DefaultsVarState<5 then
        begin pCvDefaultScalar:=pCvScalarCreate(); Inc(DefaultsVarState); end;
  except
     begin
          Halt(99);
     end;
  end;
end;


{Only for Delphi on Windows, Dll load notify function}
{$IFDEF MSWINDOWS}
{$IFDEF DELPHIDELAYED}
var
  LOldNotifyHook, LOldFailureHook: TDelayedLoadHook; { for storing the old hook pointers }
function DelayedLoadHook(dliNotify: dliNotification; pdli: PDelayLoadInfo): Pointer; stdcall;
begin
case dliNotify of
    dliNoteEndProcessing:
    begin
      InitOCVExcRedirection;
      InitOCVDefaults;
    end;
    dliFailLoadLibrary:
      WriteLn('Failed to load "', pdli.szDll, '" DLL');
  end;

  { Call the old hooks if they are not nil }
  { This is recommended to do in case the old hook do further processing }
  if dliNotify in [dliFailLoadLibrary, dliFailGetProcAddress] then
  begin
    if Assigned(LOldNotifyHook) then
      LOldFailureHook(dliNotify, pdli);
  end else
  begin
    if Assigned(LOldNotifyHook) then
      LOldNotifyHook(dliNotify, pdli);
  end;

  Result := nil;
end;
{$ENDIF}
{$ENDIF}

{****************************************************************************}
initialization
begin
{$IFDEF DELPHIDELAYED}
{ Install new delayed loading hooks }
  LOldNotifyHook  := SetDliNotifyHook2(DelayedLoadHook);
  LOldFailureHook := SetDliFailureHook2(DelayedLoadHook);
{$ELSE}
  InitOCVExcRedirection;
  InitOCVDefaults;
{$ENDIF}

  StringEmpty.pstr:=PAnsiChar('');
  pCvStringEmpty:=@StringEmpty;

{$IFDEF FPC}
  // For some Opencv functions Freepascal require to set
  // Floating Point Unit exception mask, to disable some exceptions generated
  // from C++
  SetExceptionMask(GetExceptionMask + [exOverflow,exZeroDivide,exInvalidOp]);
{$ENDIF}
end;

finalization
begin
  pCvMatDelete(pCvDefaultMat);
  pCvSizeDelete(pCvDefaultSize);
  pCvPointDelete(pCvDefaultPoint);
  pCvPointDelete(pCvPoint_1_1);
  pCvScalarDelete(pCvDefaultScalar);
end;

end.
