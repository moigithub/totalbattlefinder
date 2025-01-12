unit Unit4;

interface

implementation

end.


{

  pCvMatConvertTo(colorImg, colorImg, CV_8U);     // conversion to bytes without 255
  bmp:=TBitmap.Create;
  bmp.pixelformat:=pf24bit;
  MatImage2Bitmap(colorImg, bmp);
  bmp.SaveToFile('c:\temp\test.bmp');  // black image
  bmp.Free;
}


{
var
         dptr:           UInt64;
           detections:     TList<TDetection>;
  detect:         TDetection;
         //


dptr:=pCvMatGetData(outmat);
    outW:=pCvMatGetWidth(outmat);
    outH:=pCvMatGetHeight(outmat);

    THRESHOLD:=StrToInt(txConf.Text) / 100;
    detections:=TList<TDetection>.Create;
    for j:=0 to  outH-1 do
    begin
       conf:=PSingle(dptr+4*SizeOf(single))^;
       if conf>=THRESHOLD then
       begin
          scores:=pCvMatCreate(1, @matdims[0],CV_32FC1, (dptr+5*SizeOf(single)));

          pCvminMaxLoc(scores, @minclassscore, @maxclassscore, nil, classIdPoint );
          begin
            detect:=TDetection.Create;
            pCvPointToStruct(classIdPoint, @pts);
            detect.confidence := maxClassScore;
            detect.classId:=pts.y;
            cx:=PSingle(dptr)^;
            cy:=PSingle(dptr+1*SizeOf(single))^;
            rw:=PSingle(dptr+2*SizeOf(single))^;
            rh:=PSingle(dptr+3*SizeOf(single))^;
            detect.box.Left:=  Round((cx - 0.5*rw) * fX);
            detect.box.Top:=   Round((cy - 0.5*rh) * fY);
            detect.box.Width:= Round(rw * fX);
            detect.box.Height:=Round(rh * fY);
            detect.nsmValid:=False;

            detections.add(detect);
          end;

          pCvMatDelete(scores);
       end;
       dptr := dptr + outW*SizeOf(single);
    end;



    // Non Maxima Suppression (NMS) delete overlapped boxes with equal class
    vecBoxes:=pCvVectorRect2dCreate(detections.Count);
    vecScores:=pCvVectorfloatCreate(detections.Count);
    i:=0;
    for detect in detections do
    begin
      box2d:=CvRect2d_(detect.box.Left, detect.box.Top, detect.box.Width, detect.box.Height);
      pCvVectorRect2dSet(vecBoxes, i, box2d);
      pCvVectorfloatSet(vecScores, i, detect.confidence);
      Inc(i);
    end;
    vecNmsIndex:=pCvVectorintCreate(0);
    pCvdnn_NMSBoxes(vecBoxes, vecScores, THRESHOLD,  NMS_THRES, vecNmsIndex);
    nmsNr:=pCvVectorintLength(vecNmsIndex);
    for i:=0 to nmsNr-1 do
    begin
      detections.Items[pCvVectorintGet(vecNmsIndex, i)].nsmValid:=True;
    end;

    pta:=pCvPointCreate();
    ptb:=pCvPointCreate();
    scalparm:=CvScalar_(0,255,0,0);
    for detect in detections do
    begin
        // not valid after NMS calculation
        if detect.nsmValid=False then Continue;
        pta:=CvPoint_(detect.box.TopLeft.X, detect.box.TopLeft.y, pta);
        ptb:=CvPoint_(detect.box.BottomRight.X, detect.box.BottomRight.y, ptb);
        pCvrectangle(img, pta, ptb, scalparm, 2);

        classLabel:=Format('%s %4.2f %%',  [classes.Strings[detect.classId], (detect.confidence*100)]);
        cvstr.pstr:=PAnsiChar(AnsiString(classLabel));
        labelSize:=pCvgetTextSize(@cvstr, Ord(FONT_HERSHEY_SIMPLEX), 0.8, 2, @baseline);
        pCvputText(img, @cvstr, pta, ord(FONT_HERSHEY_SIMPLEX), 0.8, scalparm);
    end;
}