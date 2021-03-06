.class public Lcn/com/smartdevices/bracelet/ui/AlarmActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ALARM_NUM:I = 0x3

.field public static final ALARM_TIME:Ljava/lang/String; = "alarmtime"

.field public static final ALERT:Ljava/lang/String; = "alert"

.field public static final DAYS_OF_WEEK:Ljava/lang/String; = "daysofweek"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MINUTES:Ljava/lang/String; = "minutes"

.field public static final REF_ALARM_INDEX:Ljava/lang/String; = "ref_alarm_index"

.field public static final VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final a:I = 0x101

.field private static final b:I = 0x1

.field private static final c:Ljava/lang/String; = "AlarmActivity"

.field private static final d:Ljava/lang/String; = "ALARM_ONCE_TRIGGLED"

.field private static final l:Ljava/lang/String; = "content://com.android.deskclock/alarm"


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Landroid/os/Handler;

.field private g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

.field private h:Landroid/widget/ListView;

.field private i:Lcn/com/smartdevices/bracelet/ui/e;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/smartdevices/bracelet/model/AlarmClockItem;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->p:Landroid/view/View;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private a(Landroid/content/ContentResolver;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v0, "alarm_alert"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "system alarm = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", nextAlarm="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content://com.android.deskclock/alarm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    const-string v4, "hour"

    aput-object v4, v2, v6

    const/4 v4, 0x2

    const-string v5, "minutes"

    aput-object v5, v2, v4

    const-string v4, "daysofweek"

    aput-object v4, v2, v8

    const/4 v4, 0x4

    const-string v5, "enabled"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "AlarmActivity"

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepMorningAlarms(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    const-string v0, "AlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "id: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\t hour: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "hour"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", min="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "minutes"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", enabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "enabled"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hour"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v0, "minutes"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v0, "enabled"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_4

    move v0, v6

    :goto_3
    if-eqz v0, :cond_0

    if-lt v2, v9, :cond_0

    const/16 v0, 0xa

    if-gt v2, v0, :cond_0

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    :try_start_3
    const-string v0, ""

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepMorningAlarms(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;I)V
    .locals 0

    iput p1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->k:I

    return-void
.end method

.method static synthetic a(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->a(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic b(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->p:Landroid/view/View;

    const v1, 0x7f08003d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/b;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/b;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->m:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->m:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ALARM_ONCE_TRIGGLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic c(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->q:Z

    return v0
.end method

.method static synthetic d(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)Lcn/com/smartdevices/bracelet/model/PersonInfo;
    .locals 1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    return-object v0
.end method

.method private d()V
    .locals 2

    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->h:Landroid/widget/ListView;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/e;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/e;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->n:Landroid/view/View;

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->p:Landroid/view/View;

    return-void
.end method

.method private e()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.deskclock/alarm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcn/com/smartdevices/bracelet/ui/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0}, Lcn/com/smartdevices/bracelet/ui/d;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->a(Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getAlarmClockItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V
    .locals 0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->f()V

    return-void
.end method

.method static synthetic f(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)I
    .locals 1

    iget v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->k:I

    return v0
.end method

.method private f()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->f:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private g()V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AlarmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alarm encoded str = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/c;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/c;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/Utils;->updateProfile(Lcn/com/smartdevices/bracelet/model/PersonInfo;Ljava/util/HashMap;Lcn/com/smartdevices/bracelet/Utils$OperationCallback;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic g(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v2, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "alarm_clock"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AlarmActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alarm encoded str = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    new-instance v2, Lcn/com/smartdevices/bracelet/ui/c;

    invoke-direct {v2, p0}, Lcn/com/smartdevices/bracelet/ui/c;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V

    invoke-static {v0, v1, v2}, Lcn/com/smartdevices/bracelet/Utils;->updateProfile(Lcn/com/smartdevices/bracelet/model/PersonInfo;Ljava/util/HashMap;Lcn/com/smartdevices/bracelet/Utils$OperationCallback;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private h()V
    .locals 5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.deskclock/alarm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcn/com/smartdevices/bracelet/ui/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0}, Lcn/com/smartdevices/bracelet/ui/d;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->a(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static setAlarmItems(Lcn/com/smartdevices/bracelet/model/AlarmClockItem;Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getHour()I

    move-result v4

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getMinute()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getDays()I

    move-result v2

    sget v3, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->ALARM_ONCE:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7}, Ljava/util/Calendar;->add(II)V

    const-string v1, "AlarmActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "after add one day :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->setCalendar(Ljava/util/Calendar;)V

    invoke-virtual {p0, v7}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->setUpdate(Z)V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getDays()I

    move-result v1

    sget v2, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->ALARM_ONCE:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "ALARM_ONCE_TRIGGLED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    const/high16 v4, 0x8000000

    invoke-static {p1, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkOnceAlarmIfExpired()V
    .locals 5

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getAlarmClockItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/e;->notifyDataSetChanged()V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getDays()I

    move-result v3

    sget v4, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->ALARM_ONCE:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x101

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "alarms"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/model/AlarmClockItem;->fromJson(Ljava/lang/String;)Lcn/com/smartdevices/bracelet/model/AlarmClockItem;

    move-result-object v0

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    iget v2, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->k:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/e;->notifyDataSetChanged()V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->setNeedSyncServer(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/Keeper;->keepPersonInfo(Lcn/com/smartdevices/bracelet/model/PersonInfo;)V

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->f()V

    :cond_0
    return-void
.end method

.method public onBleStatusChanged(Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;)V
    .locals 2

    const/16 v1, 0x8

    iget v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->p:Landroid/view/View;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;->a:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->b()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07002e
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    const-string v1, "onBleStatusChanged"

    const-class v2, Lcn/com/smartdevices/bracelet/ui/BaseSCActivity$ConnStatus;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2, v3}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->setContentView(I)V

    iput-object p0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/a;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/a;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->f:Landroid/os/Handler;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Keeper;->readPersonInfo()Lcn/com/smartdevices/bracelet/model/PersonInfo;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    :try_start_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.deskclock/alarm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcn/com/smartdevices/bracelet/ui/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0}, Lcn/com/smartdevices/bracelet/ui/d;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->a(Landroid/content/ContentResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->g:Lcn/com/smartdevices/bracelet/model/PersonInfo;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/model/PersonInfo;->getAlarmClockItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->j:Ljava/util/ArrayList;

    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->h:Landroid/widget/ListView;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/e;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/e;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->n:Landroid/view/View;

    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->o:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->p:Landroid/view/View;

    new-instance v0, Lcn/com/smartdevices/bracelet/ui/b;

    invoke-direct {v0, p0}, Lcn/com/smartdevices/bracelet/ui/b;-><init>(Lcn/com/smartdevices/bracelet/ui/AlarmActivity;)V

    iput-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->m:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->m:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ALARM_ONCE_TRIGGLED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcn/com/smartdevices/bracelet/Utils;->isBraceletConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->b()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->e:Landroid/app/Activity;

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "PageAlarm"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->endSession(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->checkOnceAlarmIfExpired()V

    new-instance v0, Landroid/text/format/DateFormat;

    invoke-direct {v0}, Landroid/text/format/DateFormat;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->q:Z

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/smartdevices/bracelet/ui/AlarmActivity;->i:Lcn/com/smartdevices/bracelet/ui/e;

    invoke-virtual {v0}, Lcn/com/smartdevices/bracelet/ui/e;->notifyDataSetChanged()V

    :cond_0
    const-string v0, "PageAlarm"

    invoke-static {v0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startPage(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/com/smartdevices/bracelet/UmengAnalytics;->startSession(Landroid/content/Context;)V

    return-void
.end method
