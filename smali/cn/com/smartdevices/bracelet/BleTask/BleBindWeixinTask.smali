.class public Lcn/com/smartdevices/bracelet/BleTask/BleBindWeixinTask;
.super Lcn/com/smartdevices/bracelet/BleTask/BleTask;


# direct methods
.method public constructor <init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/com/smartdevices/bracelet/BleTask/BleTask;-><init>(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V

    return-void
.end method


# virtual methods
.method public doWork(Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;)V
    .locals 9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->sendOnStartMessage()V

    :cond_0
    iget-object v0, p0, Lcn/com/smartdevices/bracelet/BleTask/BleBindWeixinTask;->gattPeripheral:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v0}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->getDeviceInfo()Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "gh_f65f9f1aa87a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/xiaomi/hm/bleservice/profile/IMiLiProfile$DeviceInfo;->deviceID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    iget-object v1, p0, Lcn/com/smartdevices/bracelet/BleTask/BleBindWeixinTask;->gattPeripheral:Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;

    invoke-virtual {v1, v3}, Lcom/xiaomi/hm/bleservice/profile/MiLiProfile;->_wirteMD5([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, v3

    shl-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v5, v3

    :goto_0
    if-lt v2, v5, :cond_3

    sget-object v2, Lcn/com/smartdevices/bracelet/BleTask/BleBindWeixinTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "string:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",md5:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/smartdevices/bracelet/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/com/smartdevices/bracelet/BleTask/BleCallBack;->sendOnFinishMessage(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    aget-byte v6, v3, v2

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0x10

    if-ge v7, v8, :cond_4

    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    :goto_2
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
