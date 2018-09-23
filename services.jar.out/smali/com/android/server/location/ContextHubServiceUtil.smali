.class Lcom/android/server/location/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "ContextHubServiceUtil.java"


# static fields
.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final TAG:Ljava/lang/String; = "ContextHubServiceUtil"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPermissions(Landroid/content/Context;)V
    .locals 2

    const-string v0, "android.permission.LOCATION_HARDWARE"

    const-string v1, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static copyToByteArrayList([BLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_0/ContextHub;

    iget v3, v2, Landroid/hardware/contexthub/V1_0/ContextHub;->hubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v4, v2}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/V1_0/ContextHub;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .locals 3

    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iput-short p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/location/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V

    return-object v0
.end method

.method static createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .locals 4

    new-instance v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v1

    iput-byte v1, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object v1

    iget-object v2, v0, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/server/location/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ContextHubServiceUtil"

    const-string v3, "NanoApp binary was null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "ContextHubServiceUtil"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .locals 6

    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/location/ContextHubServiceUtil;->createPrimitiveByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    iget-short v4, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v0, v4}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object v1

    return-object v1
.end method

.method static createNanoAppStateList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    new-instance v3, Landroid/hardware/location/NanoAppState;

    iget-wide v4, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget v6, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-boolean v7, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/location/NanoAppState;-><init>(JIZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static createPrimitiveByteArray(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static createPrimitiveIntArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    aput v3, v0, v1

    nop

    move v1, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static toTransactionResult(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
