package com.tencent.connect.avatar;

import android.graphics.Color;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;

final class l
  implements View.OnClickListener
{
  l(ImageActivity paramImageActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ImageActivity.d(this.a).setVisibility(0);
    ImageActivity.e(this.a).setEnabled(false);
    ImageActivity.e(this.a).setTextColor(Color.rgb(21, 21, 21));
    ImageActivity.f(this.a).setEnabled(false);
    ImageActivity.f(this.a).setTextColor(Color.rgb(36, 94, 134));
    new Thread(new m(this)).start();
    if (ImageActivity.h(this.a))
      this.a.a("10657", 0L);
    do
    {
      return;
      long l = System.currentTimeMillis() - ImageActivity.i(this.a);
      this.a.a("10655", l);
    }
    while (!ImageActivity.c(this.a).b);
    this.a.a("10654", 0L);
  }
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     com.tencent.connect.avatar.l
 * JD-Core Version:    0.6.2
 */