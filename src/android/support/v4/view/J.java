package android.support.v4.view;

import android.view.MotionEvent;

final class J
  implements L
{
  public final int a(MotionEvent paramMotionEvent)
  {
    return 1;
  }

  public final int a(MotionEvent paramMotionEvent, int paramInt)
  {
    if (paramInt == 0)
      return 0;
    return -1;
  }

  public final int b(MotionEvent paramMotionEvent, int paramInt)
  {
    if (paramInt == 0)
      return 0;
    throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
  }

  public final float c(MotionEvent paramMotionEvent, int paramInt)
  {
    if (paramInt == 0)
      return paramMotionEvent.getX();
    throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
  }

  public final float d(MotionEvent paramMotionEvent, int paramInt)
  {
    if (paramInt == 0)
      return paramMotionEvent.getY();
    throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
  }
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.J
 * JD-Core Version:    0.6.2
 */