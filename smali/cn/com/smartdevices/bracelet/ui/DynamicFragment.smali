.class public Lcn/com/smartdevices/bracelet/ui/DynamicFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;


# static fields
.field public static final LOAD_MORE_BLOGS:I = 0x1

.field public static final MSG_TO_LAST_DAY:I = 0x1019

.field public static final MSG_TO_NEXT_DAY:I = 0x1018

.field public static final MSG_TO_PREV_DAY:I = 0x1017

.field public static final MSG_UPDATE_STEPS:I = 0x1013

.field public static final REFRESH_BLOGS:I = 0x0

.field private static final a:Ljava/lang/String; = "Dynamic.Main"

.field public static mHandler:Landroid/os/Handler;


# instance fields
.field private final b:I

.field private final c:I

.field private d:Lcn/com/smartdevices/bracelet/DataManager;

.field private e:I

.field private f:Landroid/support/v4/view/ViewPager;

.field private g:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

.field private h:Lcn/com/smartdevices/bracelet/ui/X;

.field private i:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/animation/ValueAnimator;

.field private n:I

.field private o:Ljava/lang/Boolean;

.field private p:Z

.field private q:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    invoke-static {}, Lcn/com/smartdevices/bracelet/DataManager;->getInstance()Lcn/com/smartdevices/bracelet/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    const/4 v0, -0x1

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->i:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->o:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->q:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->n:I

    return v0
.end method

.method private a()Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->q:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->j:I

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->k:I

    const-string v2, "Dynamic.Main"

    const-string v3, "Build bg switch anim!!"

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/chart/util/AnimUtil;->animColorTrans(II[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    :cond_0
    return-object v0
.end method

.method private a(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    const v1, 0x7f0c0109

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;->updateTitle(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mode"

    const-string v2, "EventModeSleep"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "EventDynamic"

    invoke-static {v1, v2, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;->updateTitle(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mode"

    const-string v2, "EventModeStep"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "EventDynamic"

    invoke-static {v1, v2, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->a()Lcn/com/smartdevices/bracelet/view/DynamicView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/view/DynamicView;->refresh(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(II)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/V;

    invoke-direct {v1, p0, v2, v2}, Lcn/com/smartdevices/bracelet/ui/V;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;)V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x6

    const-string v0, "Dynamic.Main"

    const-string v1, "Update Dynamic Tip!!"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v0, "Dynamic.Main"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CurrentTime : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    :goto_0
    const-string v2, "Dynamic.Main"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LastSyncTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v2, v3, :cond_0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v10, :cond_2

    :cond_0
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, v10, :cond_2

    const v0, 0x7f0c0119

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setSleepTip(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncRealStepTime()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    :goto_2
    const-string v2, "Dynamic.Main"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "LastSyncRealStepTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v2, v3, :cond_5

    const v0, 0x7f0c011a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setStepTip(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->isWeared()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0c0118

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v0, 0x7f0c010c

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_7

    const-wide/16 v2, 0x3c

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    const v2, 0x7f0c011b

    new-array v3, v9, [Ljava/lang/Object;

    const-wide/16 v4, 0x3c

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const v2, 0x7f0c011c

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    const v0, 0x7f0c010b

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->n:I

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x6

    const/4 v11, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->getStopDay()Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v0, "DDDD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dynamic Current Day : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcn/com/smartdevices/bracelet/model/SportDay;->formatString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0, v7}, Lcn/com/smartdevices/bracelet/DataManager;->get(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/model/DaySportData;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getStepsInfo()Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    move-result-object v0

    invoke-virtual {v3}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getSleepInfo()Lcn/com/smartdevices/bracelet/analysis/SleepInfo;

    move-result-object v2

    :cond_2
    if-nez v0, :cond_19

    new-instance v0, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;-><init>()V

    move-object v6, v0

    :goto_1
    if-nez v2, :cond_9

    new-instance v2, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;

    invoke-direct {v2}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;-><init>()V

    move v0, v5

    :goto_2
    if-eqz v0, :cond_3

    iget-object v3, v7, Lcn/com/smartdevices/bracelet/model/SportDay;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-lt v3, v13, :cond_3

    move v0, v1

    :cond_3
    const-string v3, "DDDD"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Dynamic Show Previous Day\'s Sleep Info: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v7, v11}, Lcn/com/smartdevices/bracelet/model/SportDay;->addDay(I)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/DataManager;->load(Lcn/com/smartdevices/bracelet/model/SportDay;)I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v7, v11}, Lcn/com/smartdevices/bracelet/model/SportDay;->addDay(I)Lcn/com/smartdevices/bracelet/model/SportDay;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/DataManager;->get(Lcn/com/smartdevices/bracelet/model/SportDay;)Lcn/com/smartdevices/bracelet/model/DaySportData;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/DaySportData;->getSleepInfo()Lcn/com/smartdevices/bracelet/analysis/SleepInfo;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;-><init>()V

    :cond_4
    :goto_3
    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getStepsCount()I

    move-result v4

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getDistance()I

    move-result v3

    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->getCalories()I

    move-result v2

    const-string v8, "DDDD"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Dynamic Step Info : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncRealStepTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v9, Lcn/com/smartdevices/bracelet/model/SportDay;

    invoke-direct {v9, v8}, Lcn/com/smartdevices/bracelet/model/SportDay;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v9, v7}, Lcn/com/smartdevices/bracelet/model/SportDay;->equals(Lcn/com/smartdevices/bracelet/model/SportDay;)Z

    move-result v7

    if-nez v7, :cond_5

    iput v11, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    :cond_5
    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    if-eq v7, v11, :cond_7

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    if-eq v4, v7, :cond_6

    if-lez v4, :cond_a

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    mul-int/2addr v3, v7

    div-int/2addr v3, v4

    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    mul-int/2addr v2, v7

    div-int/2addr v2, v4

    :goto_4
    const-string v4, "bxl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "set Steps="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    invoke-virtual {v6, v4}, Lcn/com/smartdevices/bracelet/analysis/StepsInfo;->setRealtimeSteps(I)V

    const-string v6, "bxl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setRealtimeSteps="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DDDD"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Dynamic Real-Step : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcn/com/smartdevices/bracelet/chart/util/ChartData;->getDynamicData()Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setStepCount(I)V

    invoke-virtual {v6, v3}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setStepDistance(I)V

    invoke-virtual {v6, v2}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setStepCalorie(I)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getHasSleep()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getNosleepReason()I

    move-result v2

    sget v3, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->NOSLEEP_NONWEAR:I

    if-ne v2, v3, :cond_d

    invoke-virtual {v6, v1}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setWeared(Z)V

    :goto_5
    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getSleepCount()I

    move-result v2

    invoke-virtual {v6, v2}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setSleepTime(I)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getNonRemCount()I

    move-result v2

    invoke-virtual {v6, v2}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setSleepDeepTime(I)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setSleepStartDate(Ljava/util/Date;)V

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getStopDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setSleepStopDate(Ljava/util/Date;)V

    const-string v0, "Dynamic.Main"

    const-string v2, "Update Dynamic Tip!!"

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const-string v0, "Dynamic.Main"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CurrentTime : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncTime()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_e

    invoke-virtual {v0, v12, v11}, Ljava/util/Calendar;->add(II)V

    :goto_6
    const-string v3, "Dynamic.Main"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "LastSyncTime : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-lt v3, v4, :cond_8

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ge v0, v13, :cond_f

    :cond_8
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, v13, :cond_f

    const v0, 0x7f0c0119

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v6, v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setSleepTip(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readSyncRealStepTime()J

    move-result-wide v3

    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_11

    invoke-virtual {v0, v12, v11}, Ljava/util/Calendar;->add(II)V

    :goto_8
    const-string v3, "Dynamic.Main"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "LastSyncRealStepTime : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v3, v4, :cond_12

    const v0, 0x7f0c011a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v6, v0}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setStepTip(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->b()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v2

    if-eqz p1, :cond_15

    move v0, v1

    :goto_a
    invoke-virtual {v2, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->notifyDataSetChanged(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->c()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v0

    if-eqz p1, :cond_16

    :goto_b
    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->notifyDataSetChanged(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2}, Lcn/com/smartdevices/bracelet/analysis/SleepInfo;->getSleepCount()I

    move-result v0

    if-nez v0, :cond_18

    move v0, v5

    goto/16 :goto_2

    :cond_a
    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    iget v2, v4, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    if-gtz v2, :cond_c

    :cond_b
    const-wide v2, 0x3fe6d916872b020cL

    :goto_c
    iget v7, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    int-to-double v7, v7

    mul-double/2addr v2, v7

    double-to-int v3, v2

    iget v2, v4, Lcn/com/smartdevices/bracelet/model/PersonInfo;->weight:I

    int-to-double v7, v2

    const-wide v9, 0x4001a305532617c2L

    mul-double/2addr v7, v9

    const-wide v9, 0x3ff30a3d70a3d70aL

    mul-double/2addr v7, v9

    iget v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    int-to-double v9, v2

    mul-double/2addr v7, v9

    const-wide v9, 0x40af400000000000L

    div-double/2addr v7, v9

    double-to-int v2, v7

    goto/16 :goto_4

    :cond_c
    iget v2, v4, Lcn/com/smartdevices/bracelet/model/PersonInfo;->height:I

    int-to-double v2, v2

    const-wide v7, 0x3fdae147ae147ae1L

    mul-double/2addr v2, v7

    const-wide/high16 v7, 0x4059000000000000L

    div-double/2addr v2, v7

    goto :goto_c

    :cond_d
    invoke-virtual {v6, v5}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->setWeared(Z)V

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v6}, Lcn/com/smartdevices/bracelet/chart/util/ChartData$DynamicData;->isWeared()Z

    move-result v0

    if-nez v0, :cond_10

    const v0, 0x7f0c0118

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_10
    const v0, 0x7f0c010c

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_11
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_8

    :cond_12
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v2, v7

    const-wide/32 v7, 0xea60

    div-long/2addr v2, v7

    long-to-int v0, v2

    int-to-long v2, v0

    const-wide/16 v7, 0x2

    cmp-long v0, v2, v7

    if-ltz v0, :cond_14

    const-wide/16 v7, 0x3c

    cmp-long v0, v2, v7

    if-ltz v0, :cond_13

    const v0, 0x7f0c011b

    new-array v4, v5, [Ljava/lang/Object;

    const-wide/16 v7, 0x3c

    div-long/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v0, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_13
    const v0, 0x7f0c011c

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v0, v4}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_14
    const v0, 0x7f0c010b

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_15
    move v0, v5

    goto/16 :goto_a

    :cond_16
    move v1, v5

    goto/16 :goto_b

    :cond_17
    move-object v0, v2

    goto/16 :goto_3

    :cond_18
    move v0, v1

    goto/16 :goto_2

    :cond_19
    move-object v6, v0

    goto/16 :goto_1
.end method

.method private a(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)V
    .locals 2

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->isBraceletConnected()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/com/smartdevices/bracelet/ui/W;

    invoke-direct {v1, p0, p1, p2}, Lcn/com/smartdevices/bracelet/ui/W;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->m:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/U;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/U;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)V

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    const v1, 0x7f0c0109

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;->updateTitle(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mode"

    const-string v2, "EventModeSleep"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "EventDynamic"

    invoke-static {v1, v2, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/MainUIActivity;->updateTitle(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "mode"

    const-string v2, "EventModeStep"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "EventDynamic"

    invoke-static {v1, v2, v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->event(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->a()Lcn/com/smartdevices/bracelet/view/DynamicView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/view/DynamicView;->refresh(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private static c()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->e:I

    return-void
.end method

.method private static d()V
    .locals 0

    return-void
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->isStartDay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u66f4\u65e9\u4ee5\u524d\u7684\u6570\u636e\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/DataManager;->setCurDay(II)V

    invoke-direct {p0, v2, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(II)V

    goto :goto_0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->isStartDay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u66f4\u65e9\u4ee5\u524d\u7684\u6570\u636e\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/DataManager;->setCurDay(II)V

    invoke-direct {p0, v2, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(II)V

    goto :goto_0
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->isStopDay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u628a\u63e1\u73b0\u5728\uff0c\u5065\u5eb7\u660e\u5929"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/DataManager;->setCurDay(II)V

    invoke-direct {p0, v2, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(II)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->isStopDay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u628a\u63e1\u73b0\u5728\uff0c\u5065\u5eb7\u660e\u5929"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/com/smartdevices/bracelet/DataManager;->setCurDay(II)V

    invoke-direct {p0, v2, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(II)V

    goto :goto_0
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->isStopDay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcn/com/smartdevices/bracelet/DataManager;->setCurDay(II)V

    invoke-direct {p0, v2, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)Lcn/com/smartdevices/bracelet/DataManager;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    return-object v0
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/DataManager;->isStopDay()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->d:Lcn/com/smartdevices/bracelet/DataManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcn/com/smartdevices/bracelet/DataManager;->setCurDay(II)V

    invoke-direct {p0, v2, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(II)V

    goto :goto_0
.end method

.method public static newInstance()Lcn/com/smartdevices/bracelet/ui/DynamicFragment;
    .locals 2

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;

    invoke-direct {v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onBleStatusChanged(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Dynamic.Main"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBleStatusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->i:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    iget v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->p:Z

    if-nez v1, :cond_2

    invoke-direct {p0, v3, p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)V

    :cond_0
    :goto_0
    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DDDD"

    const-string v1, "Dynamic Update : Data Synced."

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1, p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v4, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->p:Z

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/U;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/U;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)V

    sput-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "onGoalsSettingChanged"

    const-class v2, Lcn/com/smartdevices/bracelet/eventbus/EventGoalsUpdated;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "onBleStatusChanged"

    const-class v2, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2, v3}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "onLoadDataComplete"

    const-class v2, Lcn/com/smartdevices/bracelet/eventbus/EventLoadDataComplete;

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2, v3}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->j:I

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->k:I

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->l:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f07002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    const v0, 0x7f070030

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->g:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcn/com/smartdevices/bracelet/ui/X;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;Landroid/app/FragmentManager;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->g:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    invoke-interface {v0, v2}, Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->g:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/T;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/T;-><init>(Lcn/com/smartdevices/bracelet/ui/DynamicFragment;)V

    invoke-interface {v0, v2}, Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->m:Landroid/animation/ValueAnimator;

    iput v3, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->n:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->setVPHight()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->g:Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->setIndicator(Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->p:Z

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sput-object v1, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onGoalsSettingChanged(Lcn/com/smartdevices/bracelet/eventbus/EventGoalsUpdated;)V
    .locals 2

    const-string v0, "Dynamic.Main"

    const-string v1, "onGoalsSettingChanged"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DDDD"

    const-string v1, "Dynamic Update : Goal Changed."

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method public onLoadDataComplete(Lcn/com/smartdevices/bracelet/eventbus/EventLoadDataComplete;)V
    .locals 2

    const-string v0, "Dynamic.Main"

    const-string v1, "onLoadDataComplete"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DDDD"

    const-string v1, "Dynamic Update : Data Loaded,Animation"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const-string v0, "PageDynamic"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "Dynamic.Main"

    const-string v1, "onResume................"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->p:Z

    invoke-direct {p0, v2, p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)V

    const-string v0, "DDDD"

    const-string v1, "Dynamic Update : OnResume."

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(Z)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->i:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    iget v0, v0, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->i:Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->onBleStatusChanged(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V

    :cond_0
    const-string v0, "PageDynamic"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const-string v0, "Dynamic.Main"

    const-string v1, "onStop................"

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->p:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0, p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a(ZLcom/xiaomi/hm/bleservice/profile/IMiLiProfile$IRealtimeStepsChangedCB;)V

    return-void
.end method

.method public process(I)V
    .locals 3

    const-string v0, "step"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x1013

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setBindMode()V
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->isBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->q:Ljava/lang/Boolean;

    const-string v0, "chenee"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "set bind mode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->q:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->l:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->m:Landroid/animation/ValueAnimator;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->n:I

    sparse-switch v0, :sswitch_data_0

    :goto_2
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->m:Landroid/animation/ValueAnimator;

    goto :goto_1

    :sswitch_0
    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->j:I

    goto :goto_2

    :sswitch_1
    iget v1, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->k:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method public setConnectingAlpha(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->b()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->setConnectingAlpha(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->c()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->setConnectingAlpha(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public setIndicator(Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;)V
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->b()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->setIndicator(Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->c()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->setIndicator(Lcn/com/smartdevices/bracelet/ui/widget/PageIndicator;)V

    goto :goto_0
.end method

.method public setSlideUpPosition(F)V
    .locals 1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->b()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->setSlideUpPosition(F)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->h:Lcn/com/smartdevices/bracelet/ui/X;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/X;->c()Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment$DynamicViewFragment;->setSlideUpPosition(F)V

    goto :goto_0
.end method

.method public setVPHight()V
    .locals 3

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->o:Ljava/lang/Boolean;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x43ba0000

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/DynamicFragment;->f:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_0
.end method
