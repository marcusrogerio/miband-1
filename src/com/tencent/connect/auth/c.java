package com.tencent.connect.auth;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.PaintDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import com.tencent.utils.HttpUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

final class c
  implements IUiListener
{
  private IUiListener a;
  private String b = "sendinstall";
  private String c = "installwording";
  private String d = "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi";

  public c(AuthAgent paramAuthAgent, IUiListener paramIUiListener)
  {
    this.a = paramIUiListener;
  }

  private static Drawable a(String paramString, Context paramContext)
  {
    AssetManager localAssetManager = paramContext.getApplicationContext().getAssets();
    InputStream localInputStream;
    Object localObject;
    IOException localIOException2;
    try
    {
      localInputStream = localAssetManager.open(paramString);
      if (localInputStream == null)
        return null;
      if (paramString.endsWith(".9.png"))
      {
        Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream);
        if (localBitmap != null)
        {
          byte[] arrayOfByte = localBitmap.getNinePatchChunk();
          NinePatch.isNinePatchChunk(arrayOfByte);
          NinePatchDrawable localNinePatchDrawable = new NinePatchDrawable(localBitmap, arrayOfByte, new Rect(), null);
          return localNinePatchDrawable;
        }
      }
    }
    catch (IOException localIOException1)
    {
      localObject = null;
      localIOException2 = localIOException1;
    }
    while (true)
    {
      localIOException2.printStackTrace();
      return localObject;
      return null;
      Drawable localDrawable = Drawable.createFromStream(localInputStream, paramString);
      localObject = localDrawable;
      try
      {
        localInputStream.close();
        return localObject;
      }
      catch (IOException localIOException3)
      {
      }
    }
  }

  private View a(Context paramContext, Drawable paramDrawable, String paramString, View.OnClickListener paramOnClickListener1, View.OnClickListener paramOnClickListener2)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    float f = localDisplayMetrics.density;
    RelativeLayout localRelativeLayout = new RelativeLayout(paramContext);
    ImageView localImageView = new ImageView(paramContext);
    localImageView.setImageDrawable(paramDrawable);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setId(1);
    int i = (int)(60.0F * f);
    int j = (int)(14.0F * f);
    int k = (int)(18.0F * f);
    int m = (int)(6.0F * f);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(i, i);
    localLayoutParams1.addRule(9);
    localLayoutParams1.setMargins(0, k, m, k);
    localRelativeLayout.addView(localImageView, localLayoutParams1);
    TextView localTextView = new TextView(paramContext);
    localTextView.setText(paramString);
    localTextView.setTextSize(14.0F);
    localTextView.setGravity(3);
    localTextView.setIncludeFontPadding(false);
    localTextView.setPadding(0, 0, 0, 0);
    localTextView.setLines(2);
    localTextView.setId(5);
    localTextView.setMinWidth((int)(185.0F * f));
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams2.addRule(1, 1);
    localLayoutParams2.addRule(6, 1);
    localLayoutParams2.setMargins(0, 0, (int)(5.0F * f), 0);
    localRelativeLayout.addView(localTextView, localLayoutParams2);
    View localView = new View(paramContext);
    localView.setBackgroundColor(Color.rgb(214, 214, 214));
    localView.setId(3);
    RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, 2);
    localLayoutParams3.addRule(3, 1);
    localLayoutParams3.addRule(5, 1);
    localLayoutParams3.addRule(7, 5);
    localLayoutParams3.setMargins(0, 0, 0, (int)(12.0F * f));
    localRelativeLayout.addView(localView, localLayoutParams3);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams4.addRule(5, 1);
    localLayoutParams4.addRule(7, 5);
    localLayoutParams4.addRule(3, 3);
    Button localButton1 = new Button(paramContext);
    localButton1.setText("跳过");
    localButton1.setBackgroundDrawable(a("buttonNegt.png", paramContext));
    localButton1.setTextColor(Color.rgb(36, 97, 131));
    localButton1.setTextSize(20.0F);
    localButton1.setOnClickListener(paramOnClickListener2);
    localButton1.setId(4);
    LinearLayout.LayoutParams localLayoutParams5 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
    localLayoutParams5.rightMargin = j;
    localLayoutParams5.leftMargin = ((int)(4.0F * f));
    localLayoutParams5.weight = 1.0F;
    localLinearLayout.addView(localButton1, localLayoutParams5);
    Button localButton2 = new Button(paramContext);
    localButton2.setText("确定");
    localButton2.setTextSize(20.0F);
    localButton2.setTextColor(Color.rgb(255, 255, 255));
    localButton2.setBackgroundDrawable(a("buttonPost.png", paramContext));
    localButton2.setOnClickListener(paramOnClickListener1);
    LinearLayout.LayoutParams localLayoutParams6 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
    localLayoutParams6.weight = 1.0F;
    localLayoutParams6.rightMargin = ((int)(4.0F * f));
    localLinearLayout.addView(localButton2, localLayoutParams6);
    localRelativeLayout.addView(localLinearLayout, localLayoutParams4);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams((int)(279.0F * f), (int)(163.0F * f));
    localRelativeLayout.setPadding(j, 0, (int)(12.0F * f), (int)(12.0F * f));
    localRelativeLayout.setLayoutParams(localLayoutParams);
    localRelativeLayout.setBackgroundColor(Color.rgb(247, 251, 247));
    PaintDrawable localPaintDrawable = new PaintDrawable(Color.rgb(247, 251, 247));
    localPaintDrawable.setCornerRadius(f * 5.0F);
    localRelativeLayout.setBackgroundDrawable(localPaintDrawable);
    return localRelativeLayout;
  }

  private void a(String paramString, IUiListener paramIUiListener, Object paramObject)
  {
    Dialog localDialog = new Dialog(AuthAgent.i(this.e));
    localDialog.requestWindowFeature(1);
    PackageManager localPackageManager = AuthAgent.i(this.e).getPackageManager();
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(AuthAgent.i(this.e).getPackageName(), 0);
      localPackageInfo1 = localPackageInfo2;
      if (localPackageInfo1 != null)
      {
        localDrawable = localPackageInfo1.applicationInfo.loadIcon(localPackageManager);
        d locald = new d(this, localDialog, paramIUiListener, paramObject);
        e locale = new e(this, localDialog, paramIUiListener, paramObject);
        ColorDrawable localColorDrawable = new ColorDrawable();
        localColorDrawable.setAlpha(0);
        localDialog.getWindow().setBackgroundDrawable(localColorDrawable);
        Activity localActivity = AuthAgent.i(this.e);
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)localActivity.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        float f = localDisplayMetrics.density;
        RelativeLayout localRelativeLayout = new RelativeLayout(localActivity);
        ImageView localImageView = new ImageView(localActivity);
        localImageView.setImageDrawable(localDrawable);
        localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        localImageView.setId(1);
        int i = (int)(60.0F * f);
        int j = (int)(14.0F * f);
        int k = (int)(18.0F * f);
        int m = (int)(6.0F * f);
        RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(i, i);
        localLayoutParams1.addRule(9);
        localLayoutParams1.setMargins(0, k, m, k);
        localRelativeLayout.addView(localImageView, localLayoutParams1);
        TextView localTextView = new TextView(localActivity);
        localTextView.setText(paramString);
        localTextView.setTextSize(14.0F);
        localTextView.setGravity(3);
        localTextView.setIncludeFontPadding(false);
        localTextView.setPadding(0, 0, 0, 0);
        localTextView.setLines(2);
        localTextView.setId(5);
        localTextView.setMinWidth((int)(185.0F * f));
        RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        localLayoutParams2.addRule(1, 1);
        localLayoutParams2.addRule(6, 1);
        localLayoutParams2.setMargins(0, 0, (int)(5.0F * f), 0);
        localRelativeLayout.addView(localTextView, localLayoutParams2);
        View localView = new View(localActivity);
        localView.setBackgroundColor(Color.rgb(214, 214, 214));
        localView.setId(3);
        RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, 2);
        localLayoutParams3.addRule(3, 1);
        localLayoutParams3.addRule(5, 1);
        localLayoutParams3.addRule(7, 5);
        localLayoutParams3.setMargins(0, 0, 0, (int)(12.0F * f));
        localRelativeLayout.addView(localView, localLayoutParams3);
        LinearLayout localLinearLayout = new LinearLayout(localActivity);
        RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        localLayoutParams4.addRule(5, 1);
        localLayoutParams4.addRule(7, 5);
        localLayoutParams4.addRule(3, 3);
        Button localButton1 = new Button(localActivity);
        localButton1.setText("跳过");
        localButton1.setBackgroundDrawable(a("buttonNegt.png", localActivity));
        localButton1.setTextColor(Color.rgb(36, 97, 131));
        localButton1.setTextSize(20.0F);
        localButton1.setOnClickListener(locale);
        localButton1.setId(4);
        LinearLayout.LayoutParams localLayoutParams5 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
        localLayoutParams5.rightMargin = j;
        localLayoutParams5.leftMargin = ((int)(4.0F * f));
        localLayoutParams5.weight = 1.0F;
        localLinearLayout.addView(localButton1, localLayoutParams5);
        Button localButton2 = new Button(localActivity);
        localButton2.setText("确定");
        localButton2.setTextSize(20.0F);
        localButton2.setTextColor(Color.rgb(255, 255, 255));
        localButton2.setBackgroundDrawable(a("buttonPost.png", localActivity));
        localButton2.setOnClickListener(locald);
        LinearLayout.LayoutParams localLayoutParams6 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
        localLayoutParams6.weight = 1.0F;
        localLayoutParams6.rightMargin = ((int)(4.0F * f));
        localLinearLayout.addView(localButton2, localLayoutParams6);
        localRelativeLayout.addView(localLinearLayout, localLayoutParams4);
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams((int)(279.0F * f), (int)(163.0F * f));
        localRelativeLayout.setPadding(j, 0, (int)(12.0F * f), (int)(12.0F * f));
        localRelativeLayout.setLayoutParams(localLayoutParams);
        localRelativeLayout.setBackgroundColor(Color.rgb(247, 251, 247));
        PaintDrawable localPaintDrawable = new PaintDrawable(Color.rgb(247, 251, 247));
        localPaintDrawable.setCornerRadius(f * 5.0F);
        localRelativeLayout.setBackgroundDrawable(localPaintDrawable);
        localDialog.setContentView(localRelativeLayout);
        localDialog.setOnCancelListener(new f(this, paramIUiListener, paramObject));
        if ((AuthAgent.i(this.e) != null) && (!AuthAgent.i(this.e).isFinishing()))
          localDialog.show();
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        PackageInfo localPackageInfo1 = null;
        continue;
        Drawable localDrawable = null;
      }
    }
  }

  protected final void a()
  {
    Bundle localBundle = AuthAgent.j(this.e);
    HttpUtils.requestAsync(AuthAgent.k(this.e), AuthAgent.i(this.e), this.d, localBundle, "POST", null);
  }

  public final void onCancel()
  {
    if (this.a != null)
      this.a.onCancel();
  }

  public final void onComplete(Object paramObject)
  {
    JSONObject localJSONObject;
    int i;
    if (paramObject != null)
    {
      localJSONObject = (JSONObject)paramObject;
      if (localJSONObject != null)
        i = 0;
    }
    while (true)
    {
      Drawable localDrawable;
      try
      {
        if (localJSONObject.getInt(this.b) == 1)
        {
          i = 1;
          String str3 = localJSONObject.getString(this.c);
          str1 = str3;
          k = i;
          str2 = URLDecoder.decode(str1);
          Log.d("TAG", " WORDING = " + str2 + "xx");
          if ((k == 0) || (TextUtils.isEmpty(str2)))
            continue;
          localIUiListener = this.a;
          localDialog = new Dialog(AuthAgent.i(this.e));
          localDialog.requestWindowFeature(1);
          localPackageManager = AuthAgent.i(this.e).getPackageManager();
        }
      }
      catch (JSONException localJSONException)
      {
        try
        {
          String str2;
          IUiListener localIUiListener;
          Dialog localDialog;
          PackageManager localPackageManager;
          PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(AuthAgent.i(this.e).getPackageName(), 0);
          localPackageInfo1 = localPackageInfo2;
          if (localPackageInfo1 == null)
            break label1126;
          localDrawable = localPackageInfo1.applicationInfo.loadIcon(localPackageManager);
          d locald = new d(this, localDialog, localIUiListener, paramObject);
          e locale = new e(this, localDialog, localIUiListener, paramObject);
          ColorDrawable localColorDrawable = new ColorDrawable();
          localColorDrawable.setAlpha(0);
          localDialog.getWindow().setBackgroundDrawable(localColorDrawable);
          Activity localActivity = AuthAgent.i(this.e);
          DisplayMetrics localDisplayMetrics = new DisplayMetrics();
          ((WindowManager)localActivity.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
          float f = localDisplayMetrics.density;
          RelativeLayout localRelativeLayout = new RelativeLayout(localActivity);
          ImageView localImageView = new ImageView(localActivity);
          localImageView.setImageDrawable(localDrawable);
          localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
          localImageView.setId(1);
          int m = (int)(60.0F * f);
          int n = (int)(14.0F * f);
          int i1 = (int)(18.0F * f);
          int i2 = (int)(6.0F * f);
          RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(m, m);
          localLayoutParams1.addRule(9);
          localLayoutParams1.setMargins(0, i1, i2, i1);
          localRelativeLayout.addView(localImageView, localLayoutParams1);
          TextView localTextView = new TextView(localActivity);
          localTextView.setText(str2);
          localTextView.setTextSize(14.0F);
          localTextView.setGravity(3);
          localTextView.setIncludeFontPadding(false);
          localTextView.setPadding(0, 0, 0, 0);
          localTextView.setLines(2);
          localTextView.setId(5);
          localTextView.setMinWidth((int)(185.0F * f));
          RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
          localLayoutParams2.addRule(1, 1);
          localLayoutParams2.addRule(6, 1);
          localLayoutParams2.setMargins(0, 0, (int)(5.0F * f), 0);
          localRelativeLayout.addView(localTextView, localLayoutParams2);
          View localView = new View(localActivity);
          localView.setBackgroundColor(Color.rgb(214, 214, 214));
          localView.setId(3);
          RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, 2);
          localLayoutParams3.addRule(3, 1);
          localLayoutParams3.addRule(5, 1);
          localLayoutParams3.addRule(7, 5);
          localLayoutParams3.setMargins(0, 0, 0, (int)(12.0F * f));
          localRelativeLayout.addView(localView, localLayoutParams3);
          LinearLayout localLinearLayout = new LinearLayout(localActivity);
          RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
          localLayoutParams4.addRule(5, 1);
          localLayoutParams4.addRule(7, 5);
          localLayoutParams4.addRule(3, 3);
          Button localButton1 = new Button(localActivity);
          localButton1.setText("跳过");
          localButton1.setBackgroundDrawable(a("buttonNegt.png", localActivity));
          localButton1.setTextColor(Color.rgb(36, 97, 131));
          localButton1.setTextSize(20.0F);
          localButton1.setOnClickListener(locale);
          localButton1.setId(4);
          LinearLayout.LayoutParams localLayoutParams5 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
          localLayoutParams5.rightMargin = n;
          localLayoutParams5.leftMargin = ((int)(4.0F * f));
          localLayoutParams5.weight = 1.0F;
          localLinearLayout.addView(localButton1, localLayoutParams5);
          Button localButton2 = new Button(localActivity);
          localButton2.setText("确定");
          localButton2.setTextSize(20.0F);
          localButton2.setTextColor(Color.rgb(255, 255, 255));
          localButton2.setBackgroundDrawable(a("buttonPost.png", localActivity));
          localButton2.setOnClickListener(locald);
          LinearLayout.LayoutParams localLayoutParams6 = new LinearLayout.LayoutParams(0, (int)(45.0F * f));
          localLayoutParams6.weight = 1.0F;
          localLayoutParams6.rightMargin = ((int)(4.0F * f));
          localLinearLayout.addView(localButton2, localLayoutParams6);
          localRelativeLayout.addView(localLinearLayout, localLayoutParams4);
          FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams((int)(279.0F * f), (int)(163.0F * f));
          localRelativeLayout.setPadding(n, 0, (int)(12.0F * f), (int)(12.0F * f));
          localRelativeLayout.setLayoutParams(localLayoutParams);
          localRelativeLayout.setBackgroundColor(Color.rgb(247, 251, 247));
          PaintDrawable localPaintDrawable = new PaintDrawable(Color.rgb(247, 251, 247));
          localPaintDrawable.setCornerRadius(f * 5.0F);
          localRelativeLayout.setBackgroundDrawable(localPaintDrawable);
          localDialog.setContentView(localRelativeLayout);
          localDialog.setOnCancelListener(new f(this, localIUiListener, paramObject));
          if ((AuthAgent.i(this.e) != null) && (!AuthAgent.i(this.e).isFinishing()))
            localDialog.show();
          return;
          i = 0;
          continue;
          localJSONException = localJSONException;
          int j = i;
          Toast.makeText(AuthAgent.i(this.e), "json error", 1);
          localJSONException.printStackTrace();
          int k = j;
          String str1 = "";
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          localNameNotFoundException.printStackTrace();
          PackageInfo localPackageInfo1 = null;
          continue;
        }
        if (this.a == null)
          continue;
        this.a.onComplete(paramObject);
        return;
      }
      if (this.a != null)
      {
        this.a.onComplete(null);
        return;
        label1126: localDrawable = null;
      }
    }
  }

  public final void onError(UiError paramUiError)
  {
    if (this.a != null)
      this.a.onError(paramUiError);
  }
}

/* Location:           C:\Users\Fernando\Desktop\Mibandesv2.3\classes-dex2jar.jar
 * Qualified Name:     com.tencent.connect.auth.c
 * JD-Core Version:    0.6.2
 */