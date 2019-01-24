.class public Lcom/oneplus/aod/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG_ONEPLUS:Z

.field public static final DEVICE_14001:Ljava/lang/String; = "14001"

.field public static final DEVICE_14049:Ljava/lang/String; = "14049"

.field public static final DEVICE_15055:Ljava/lang/String; = "15055"

.field public static final DEVICE_15801:Ljava/lang/String; = "15801"

.field public static final DEVICE_15811:Ljava/lang/String; = "15811"

.field public static final DEVICE_16859:Ljava/lang/String; = "16859"

.field public static final DEVICE_17801:Ljava/lang/String; = "17801"

.field public static final DEVICE_17819:Ljava/lang/String; = "17819"

.field public static KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

.field public static KEY_MOTION_AWAKE:Ljava/lang/String;

.field public static KEY_NOTIFICATION_WAKE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mCurrentUser:I

.field private static mIsAlwaysOnModeEnabled:Z

.field private static mIsNotificationWakeUpEnabled:Z

.field private static mMotionAwakeOn:Z

.field private static mSingleTapAwakeOn:Z

.field private static sDeviceTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OPAodUtils"

    sput-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    const-string v0, "prox_wake_enabled"

    sput-object v0, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    const-string v0, "aod_display_mode"

    sput-object v0, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    const-string v0, "notification_wake_enabled"

    sput-object v0, Lcom/oneplus/aod/Utils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/oneplus/aod/Utils;->sDeviceTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateDozeSettings(Landroid/content/Context;I)V

    return-void
.end method

.method public static isAlwaysOnEnabled()Z
    .locals 3

    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAlwaysOnEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    return v0
.end method

.method public static isCustomFingerprint()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isMotionAwakeOn()Z
    .locals 3

    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMotionAwakeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    return v0
.end method

.method public static isNotificationWakeUpEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    return v0
.end method

.method public static isSingleTapEnabled()Z
    .locals 3

    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSingleTapEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    return v0
.end method

.method public static isSingleTapEnabled(Landroid/content/Context;I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    and-int/lit16 v1, v0, 0x800

    shr-int/lit8 v1, v1, 0xb

    sget-object v3, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSingleTapEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    sput-boolean v2, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    return v2
.end method

.method public static isSupportAlwaysOn()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/aod/Utils;->isAODAllowed()Z
    
    move-result v0

    return v0
.end method

.method public static isAODAllowed()Z
    .registers 5

    .line 22
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x13

    new-array v1, v1, [C

    fill-array-data v1, :array_42

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x14

    new-array v2, v2, [C

    fill-array-data v2, :array_5a

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 24
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3e

    if-eqz v0, :cond_3e

    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x8

    new-array v4, v4, [C

    fill-array-data v4, :array_72

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_3e

    .line 28
    :cond_3c
    const/4 v3, 0x1

    return v3

    .line 25
    :cond_3e
    :goto_3e
    nop

    .line 26
    const/4 v3, 0x0

    return v3

    nop

    :array_42
    .array-data 2
        0x72s
        0x6fs
        0x2es
        0x62s
        0x75s
        0x69s
        0x6cs
        0x64s
        0x2es
        0x64s
        0x69s
        0x73s
        0x70s
        0x6cs
        0x61s
        0x79s
        0x2es
        0x69s
        0x64s
    .end array-data

    nop

    :array_5a
    .array-data 2
        0x2fs
        0x73s
        0x79s
        0x73s
        0x74s
        0x65s
        0x6ds
        0x2fs
        0x65s
        0x74s
        0x63s
        0x2fs
        0x72s
        0x65s
        0x6es
        0x6fs
        0x76s
        0x61s
        0x74s
        0x65s
    .end array-data

    :array_72
    .array-data 2
        0x52s
        0x45s
        0x4es
        0x4fs
        0x56s
        0x41s
        0x54s
        0x45s
    .end array-data
.end method

.method public static updateAlwaysOnState(Landroid/content/Context;I)V
    .locals 5

    sget-boolean v0, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    sget-boolean v0, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "0"

    goto :goto_1

    :cond_1
    const-string v0, "1"

    :goto_1
    :try_start_0
    const-string v1, "sys.aod.disable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v1, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAlwaysOnState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateDozeSettings(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateMotionAwakeState(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateSingleTapAwakeState(Landroid/content/Context;I)V

    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateNotificationWakeState(Landroid/content/Context;I)V

    return-void
.end method

.method public static updateMotionAwakeState(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateAlwaysOnState(Landroid/content/Context;I)V

    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMotionAwakeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateNotificationWakeState(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/Utils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotificationWakeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static updateSingleTapAwakeState(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    and-int/lit16 v1, v0, 0x800

    shr-int/lit8 v1, v1, 0xb

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    sput-boolean v2, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    sget-object v1, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSingleTapAwakeState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oneplus/aod/Utils;->mSingleTapAwakeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
