.class public Lcom/umeng/analytics/MobclickAgentJSInterface;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/umeng/analytics/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/analytics/k;-><init>(Lcom/umeng/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/WebChromeClient;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/analytics/MobclickAgentJSInterface;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/umeng/analytics/k;

    invoke-direct {v0, p0, p3}, Lcom/umeng/analytics/k;-><init>(Lcom/umeng/analytics/MobclickAgentJSInterface;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/MobclickAgentJSInterface;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/MobclickAgentJSInterface;->a:Landroid/content/Context;

    return-object v0
.end method
