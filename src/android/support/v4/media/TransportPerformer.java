package android.support.v4.media;

import android.os.SystemClock;
import android.view.KeyEvent;

public abstract class TransportPerformer
{
  private static int a = 1;
  private static int b = 2;
  private static int c = 3;
  private static int d = -1;
  private static int e = -2;
  private static int f = -3;

  public void onAudioFocusChange(int paramInt)
  {
    int i = 0;
    switch (paramInt)
    {
    default:
    case -1:
    }
    while (true)
    {
      if (i != 0)
      {
        long l = SystemClock.uptimeMillis();
        onMediaButtonDown(127, new KeyEvent(l, l, 0, 127, 0));
        onMediaButtonUp(127, new KeyEvent(l, l, 1, 127, 0));
      }
      return;
      i = 127;
    }
  }

  public int onGetBufferPercentage()
  {
    return 100;
  }

  public abstract long onGetCurrentPosition();

  public abstract long onGetDuration();

  public int onGetTransportControlFlags()
  {
    return 60;
  }

  public abstract boolean onIsPlaying();

  public boolean onMediaButtonDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default:
      return true;
    case 126:
      onStart();
      return true;
    case 127:
      onPause();
      return true;
    case 86:
      onStop();
      return true;
    case 79:
    case 85:
    }
    if (onIsPlaying())
    {
      onPause();
      return true;
    }
    onStart();
    return true;
  }

  public boolean onMediaButtonUp(int paramInt, KeyEvent paramKeyEvent)
  {
    return true;
  }

  public abstract void onPause();

  public abstract void onSeekTo(long paramLong);

  public abstract void onStart();

  public abstract void onStop();
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     android.support.v4.media.TransportPerformer
 * JD-Core Version:    0.6.2
 */