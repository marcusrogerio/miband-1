package com.nostra13.universalimageloader.cache.memory.impl;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.cache.memory.MemoryCache;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashMap;

public class LruMemoryCache
  implements MemoryCache
{
  private final LinkedHashMap<String, Bitmap> a;
  private final int b;
  private int c;

  public LruMemoryCache(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("maxSize <= 0");
    this.b = paramInt;
    this.a = new LinkedHashMap(0, 0.75F, true);
  }

  private static int a(Bitmap paramBitmap)
  {
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }

  // ERROR //
  private void a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 46	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:c	I
    //   6: iflt +20 -> 26
    //   9: aload_0
    //   10: getfield 34	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:a	Ljava/util/LinkedHashMap;
    //   13: invokevirtual 50	java/util/LinkedHashMap:isEmpty	()Z
    //   16: ifeq +48 -> 64
    //   19: aload_0
    //   20: getfield 46	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:c	I
    //   23: ifeq +41 -> 64
    //   26: new 52	java/lang/IllegalStateException
    //   29: dup
    //   30: new 54	java/lang/StringBuilder
    //   33: dup
    //   34: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   37: aload_0
    //   38: invokevirtual 59	java/lang/Object:getClass	()Ljava/lang/Class;
    //   41: invokevirtual 65	java/lang/Class:getName	()Ljava/lang/String;
    //   44: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: ldc 71
    //   49: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 75	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: astore_2
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_2
    //   63: athrow
    //   64: aload_0
    //   65: getfield 46	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:c	I
    //   68: iload_1
    //   69: if_icmple +13 -> 82
    //   72: aload_0
    //   73: getfield 34	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:a	Ljava/util/LinkedHashMap;
    //   76: invokevirtual 50	java/util/LinkedHashMap:isEmpty	()Z
    //   79: ifeq +6 -> 85
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: aload_0
    //   86: getfield 34	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:a	Ljava/util/LinkedHashMap;
    //   89: invokevirtual 79	java/util/LinkedHashMap:entrySet	()Ljava/util/Set;
    //   92: invokeinterface 85 1 0
    //   97: invokeinterface 91 1 0
    //   102: checkcast 93	java/util/Map$Entry
    //   105: astore_3
    //   106: aload_3
    //   107: ifnonnull +6 -> 113
    //   110: aload_0
    //   111: monitorexit
    //   112: return
    //   113: aload_3
    //   114: invokeinterface 96 1 0
    //   119: checkcast 98	java/lang/String
    //   122: astore 4
    //   124: aload_3
    //   125: invokeinterface 101 1 0
    //   130: checkcast 37	android/graphics/Bitmap
    //   133: astore 5
    //   135: aload_0
    //   136: getfield 34	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:a	Ljava/util/LinkedHashMap;
    //   139: aload 4
    //   141: invokevirtual 105	java/util/LinkedHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   144: pop
    //   145: aload_0
    //   146: aload_0
    //   147: getfield 46	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:c	I
    //   150: aload 5
    //   152: invokestatic 107	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:a	(Landroid/graphics/Bitmap;)I
    //   155: isub
    //   156: putfield 46	com/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache:c	I
    //   159: aload_0
    //   160: monitorexit
    //   161: goto -161 -> 0
    //
    // Exception table:
    //   from	to	target	type
    //   2	26	59	finally
    //   26	59	59	finally
    //   64	82	59	finally
    //   82	84	59	finally
    //   85	106	59	finally
    //   110	112	59	finally
    //   113	161	59	finally
  }

  public void clear()
  {
    a(-1);
  }

  public final Bitmap get(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException("key == null");
    try
    {
      Bitmap localBitmap = (Bitmap)this.a.get(paramString);
      return localBitmap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Collection<String> keys()
  {
    try
    {
      HashSet localHashSet = new HashSet(this.a.keySet());
      return localHashSet;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean put(String paramString, Bitmap paramBitmap)
  {
    if ((paramString == null) || (paramBitmap == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.c += a(paramBitmap);
      Bitmap localBitmap = (Bitmap)this.a.put(paramString, paramBitmap);
      if (localBitmap != null)
        this.c -= a(localBitmap);
      a(this.b);
      return true;
    }
    finally
    {
    }
  }

  public final void remove(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException("key == null");
    try
    {
      Bitmap localBitmap = (Bitmap)this.a.remove(paramString);
      if (localBitmap != null)
        this.c -= a(localBitmap);
      return;
    }
    finally
    {
    }
  }

  public final String toString()
  {
    try
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.b);
      String str = String.format("LruCache[maxSize=%d]", arrayOfObject);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache
 * JD-Core Version:    0.6.2
 */