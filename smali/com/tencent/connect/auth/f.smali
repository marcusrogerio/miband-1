.class final Lcom/tencent/connect/auth/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/tauth/IUiListener;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Lcom/tencent/connect/auth/c;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/c;Lcom/tencent/tauth/IUiListener;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/connect/auth/f;->a:Lcom/tencent/tauth/IUiListener;

    iput-object p3, p0, Lcom/tencent/connect/auth/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/connect/auth/f;->a:Lcom/tencent/tauth/IUiListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/connect/auth/f;->a:Lcom/tencent/tauth/IUiListener;

    iget-object v1, p0, Lcom/tencent/connect/auth/f;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
