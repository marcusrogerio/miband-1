.class final Lcom/tencent/open/e;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/tencent/open/PKDialog;


# direct methods
.method private constructor <init>(Lcom/tencent/open/PKDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/open/PKDialog;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/open/e;-><init>(Lcom/tencent/open/PKDialog;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-static {v0}, Lcom/tencent/open/PKDialog;->c(Lcom/tencent/open/PKDialog;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/tencent/open/PKDialog;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Webview loading URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/utils/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-static {v0}, Lcom/tencent/open/PKDialog;->b(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/g;

    move-result-object v0

    new-instance v1, Lcom/tencent/tauth/UiError;

    invoke-direct {v1, p2, p3, p4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/open/g;->onError(Lcom/tencent/tauth/UiError;)V

    invoke-static {}, Lcom/tencent/open/PKDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/open/PKDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/open/PKDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38\u6216\u7cfb\u7edf\u9519\u8bef"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/open/PKDialog;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/utils/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/PKDialog;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v3, "auth://tauth.qq.com/"

    invoke-virtual {v2, v0, v3}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-static {v0}, Lcom/tencent/open/PKDialog;->b(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/g;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/utils/Util;->parseUrlToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/open/g;->onComplete(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "auth://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-static {v0}, Lcom/tencent/open/PKDialog;->b(Lcom/tencent/open/PKDialog;)Lcom/tencent/open/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/g;->onCancel()V

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "auth://close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/PKDialog;

    invoke-virtual {v0}, Lcom/tencent/open/PKDialog;->dismiss()V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
