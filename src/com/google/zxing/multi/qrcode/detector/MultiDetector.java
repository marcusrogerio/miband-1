package com.google.zxing.multi.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.detector.Detector;
import com.google.zxing.qrcode.detector.FinderPatternInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class MultiDetector extends Detector
{
  private static final DetectorResult[] a = new DetectorResult[0];

  public MultiDetector(BitMatrix paramBitMatrix)
  {
    super(paramBitMatrix);
  }

  public final DetectorResult[] detectMulti(Map<DecodeHintType, ?> paramMap)
  {
    BitMatrix localBitMatrix = getImage();
    if (paramMap == null);
    FinderPatternInfo[] arrayOfFinderPatternInfo;
    for (ResultPointCallback localResultPointCallback = null; ; localResultPointCallback = (ResultPointCallback)paramMap.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK))
    {
      arrayOfFinderPatternInfo = new a(localBitMatrix, localResultPointCallback).a(paramMap);
      if (arrayOfFinderPatternInfo.length != 0)
        break;
      throw NotFoundException.getNotFoundInstance();
    }
    ArrayList localArrayList = new ArrayList();
    int i = arrayOfFinderPatternInfo.length;
    int j = 0;
    while (true)
    {
      FinderPatternInfo localFinderPatternInfo;
      if (j < i)
        localFinderPatternInfo = arrayOfFinderPatternInfo[j];
      try
      {
        localArrayList.add(processFinderPatternInfo(localFinderPatternInfo));
        label97: j++;
        continue;
        if (localArrayList.isEmpty())
          return a;
        return (DetectorResult[])localArrayList.toArray(new DetectorResult[localArrayList.size()]);
      }
      catch (ReaderException localReaderException)
      {
        break label97;
      }
    }
  }
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.qrcode.detector.MultiDetector
 * JD-Core Version:    0.6.2
 */