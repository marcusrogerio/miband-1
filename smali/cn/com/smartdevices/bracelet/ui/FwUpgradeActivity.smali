.class public Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3e8

.field private static e:Ljava/lang/String;


# instance fields
.field private d:Landroid/content/Context;

.field private f:Landroid/os/Handler;

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/bluetooth/BluetoothDevice;

.field private m:I

.field private n:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FwUpgradeActivity"

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->d:Landroid/content/Context;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    iput-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->g:Z

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->j:Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->k:Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->l:Landroid/bluetooth/BluetoothDevice;

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(II)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/ah;

    invoke-direct {v1, p0}, Lcn/com/smartdevices/bracelet/ui/ah;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    sget-object v0, Lcn/com/smartdevices/bracelet/BraceletApp;->BLEService:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getDefaultPeripheral()Lcom/xiaomi/hm/bleservice/gatt/IGattCallback;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getFirmwareUpdatingProgress()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;

    move-result-object v3

    iget v0, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->setMax(I)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    aput v0, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/ah;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/ah;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    iget v0, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    if-nez v0, :cond_3

    iput v2, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->setMax(I)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->progress:I

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    iget v3, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    invoke-virtual {v2, v3}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->setMax(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->l:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->g:Z

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->d:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->finish()V

    return-void
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readBraceletBtInfo()Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Mili.fw"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new fw length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    new-instance v3, Lcn/com/smartdevices/bracelet/ui/ab;

    invoke-direct {v3, p0}, Lcn/com/smartdevices/bracelet/ui/ab;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-direct {v1, v0, v2, v3}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;-><init>(Ljava/lang/String;[BLcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;->work()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V
    .locals 5

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readBraceletBtInfo()Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "Mili.fw"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new fw length:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;

    iget-object v0, v0, Lcn/com/smartdevices/bracelet/model/BraceletBtInfo;->address:Ljava/lang/String;

    new-instance v3, Lcn/com/smartdevices/bracelet/ui/ab;

    invoke-direct {v3, p0}, Lcn/com/smartdevices/bracelet/ui/ab;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-direct {v1, v0, v2, v3}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;-><init>(Ljava/lang/String;[BLcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    invoke-virtual {v1}, Lcn/com/smartdevices/bracelet/BleTask/BleFwUpgradeTask;->work()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)Lcn/com/smartdevices/bracelet/view/RoundProgressBar;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->d:Landroid/content/Context;

    const v1, 0x7f0c00cf

    invoke-virtual {p0, v1}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->finish()V

    return-void
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    sget-object v0, Lcn/com/smartdevices/bracelet/BraceletApp;->BLEService:Lcom/xiaomi/hm/bleservice/BLEService;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/BLEService;->getDefaultPeripheral()Lcom/xiaomi/hm/bleservice/gatt/IGattCallback;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getFirmwareUpdatingProgress()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;

    move-result-object v3

    iget v0, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->setMax(I)V

    move v0, v1

    :goto_0
    iget v2, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    aput v0, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/ah;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/ah;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iput-object v1, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->n:Landroid/animation/Animator;

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    iget v0, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    if-nez v0, :cond_3

    iput v2, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->m:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    invoke-virtual {v0, v2}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->setMax(I)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->progress:I

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    iget v3, v3, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$Progress;->total:I

    invoke-virtual {v2, v3}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->setMax(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->l:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method


# virtual methods
.method public enterAnimation()V
    .locals 6

    const v3, 0x7f040001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v4, Lcn/com/smartdevices/bracelet/ui/ac;

    invoke-direct {v4, p0}, Lcn/com/smartdevices/bracelet/ui/ac;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40000000

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    invoke-virtual {v4, v0}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public finishAnimation()V
    .locals 6

    const v3, 0x7f040002

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    new-instance v4, Lcn/com/smartdevices/bracelet/ui/ad;

    invoke-direct {v4, p0}, Lcn/com/smartdevices/bracelet/ui/ad;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v4, Lcn/com/smartdevices/bracelet/ui/ae;

    invoke-direct {v4, p0}, Lcn/com/smartdevices/bracelet/ui/ae;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v4, Lcn/com/smartdevices/bracelet/ui/af;

    invoke-direct {v4, p0}, Lcn/com/smartdevices/bracelet/ui/af;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v4, Lcn/com/smartdevices/bracelet/ui/ag;

    invoke-direct {v4, p0}, Lcn/com/smartdevices/bracelet/ui/ag;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    invoke-virtual {v4, v0}, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->g:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    const-string v1, "in onCreate"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->d:Landroid/content/Context;

    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->setTheme(I)V

    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->setContentView(I)V

    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0700d0

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->i:Lcn/com/smartdevices/bracelet/view/RoundProgressBar;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/aa;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/aa;-><init>(Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->enterAnimation()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->e:Ljava/lang/String;

    const-string v1, "in onDestroy"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->f:Landroid/os/Handler;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/FwUpgradeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
