.class final Lcn/com/smartdevices/bracelet/ui/J;
.super Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;


# instance fields
.field private synthetic a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/J;->a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

    iput-object p2, p0, Lcn/com/smartdevices/bracelet/ui/J;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinish(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onFinish(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/J;->a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u56fa\u4ef6\u5347\u7ea7\u5931\u8d25\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/J;->a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;->c(Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/J;->a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u56fa\u4ef6\u5347\u7ea7\u6210\u529f!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/J;->a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u56fa\u4ef6\u5347\u7ea7\u72b6\u6001\u672a\u77e5\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->onStart()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/J;->a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/J;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;->a(Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/J;->a:Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;->a(Lcn/com/smartdevices/bracelet/ui/BraceletSettingsFragment;)V

    return-void
.end method
