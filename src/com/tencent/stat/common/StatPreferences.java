package com.tencent.stat.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class StatPreferences
{
  private static SharedPreferences a = null;

  private static SharedPreferences a(Context paramContext)
  {
    if (a == null)
      a = PreferenceManager.getDefaultSharedPreferences(paramContext);
    return a;
  }

  public static long getLong(Context paramContext, String paramString, long paramLong)
  {
    String str = paramString;
    return a(paramContext).getLong(str, paramLong);
  }

  public static String getString(Context paramContext, String paramString1, String paramString2)
  {
    String str = paramString1;
    return a(paramContext).getString(str, paramString2);
  }

  public static void putLong(Context paramContext, String paramString, long paramLong)
  {
    String str = paramString;
    SharedPreferences.Editor localEditor = a(paramContext).edit();
    localEditor.putLong(str, paramLong);
    localEditor.commit();
  }

  public static void putString(Context paramContext, String paramString1, String paramString2)
  {
    String str = paramString1;
    SharedPreferences.Editor localEditor = a(paramContext).edit();
    localEditor.putString(str, paramString2);
    localEditor.commit();
  }
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     com.tencent.stat.common.StatPreferences
 * JD-Core Version:    0.6.2
 */