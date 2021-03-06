package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class q
{
  private static int a = 10000;
  private static int b = 10000;
  private TelephonyManager c;
  private PhoneStateListener d = new r(this);

  public static List<PhoneUtil.CellInfo> b(Context paramContext)
  {
    LinkedList localLinkedList = new LinkedList();
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    String str1 = localTelephonyManager.getNetworkOperator();
    if ((str1 == null) || (str1.equals("")))
      return localLinkedList;
    String str2 = "460";
    Object localObject1 = "";
    try
    {
      str2 = str1.substring(0, 3);
      String str4 = str1.substring(3);
      localObject1 = str4;
    }
    catch (Exception localException1)
    {
      try
      {
        GsmCellLocation localGsmCellLocation = (GsmCellLocation)localTelephonyManager.getCellLocation();
        int i;
        int j;
        if (localGsmCellLocation != null)
        {
          i = localGsmCellLocation.getCid();
          j = localGsmCellLocation.getLac();
          if ((j < 65535) && (j != -1) && (i != -1))
            if (b != a)
              break label285;
        }
        label285: String str3;
        for (Object localObject2 = ""; ; localObject2 = str3)
        {
          localLinkedList.add(new PhoneUtil.CellInfo(str2, (String)localObject1, String.valueOf(j), String.valueOf(i), (String)localObject2, "gsm", "", "", ""));
          List localList = localTelephonyManager.getNeighboringCellInfo();
          if ((localList == null) || (localList.size() <= 0))
            break label320;
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            NeighboringCellInfo localNeighboringCellInfo = (NeighboringCellInfo)localIterator.next();
            if (localNeighboringCellInfo.getCid() != -1)
              localLinkedList.add(new PhoneUtil.CellInfo(str2, (String)localObject1, "", localNeighboringCellInfo.getCid(), "", "gsm", "", "", ""));
          }
          localException1 = localException1;
          localException1.printStackTrace();
          break;
          str3 = b;
        }
      }
      catch (Exception localException2)
      {
        while (true)
          localException2.printStackTrace();
      }
    }
    label320: return localLinkedList;
  }

  public final void a(Context paramContext)
  {
    this.c = ((TelephonyManager)paramContext.getSystemService("phone"));
    this.c.listen(this.d, 256);
  }
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.q
 * JD-Core Version:    0.6.2
 */