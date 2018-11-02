.class public Lcom/android/settings/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final EXP_DET_DEVICE_ADMIN_ACTIVATED_BY_USER:I = 0x16059

.field public static final EXP_DET_DEVICE_ADMIN_DECLINED_BY_USER:I = 0x1605a

.field public static final EXP_DET_DEVICE_ADMIN_UNINSTALLED_BY_USER:I = 0x1605b

.field public static final LOCK_SCREEN_TYPE:I = 0x16058

.field public static final SETTINGS_LATENCY:I = 0x1605c


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeExpDetDeviceAdminActivatedByUser(Ljava/lang/String;)V
    .locals 1

    const v0, 0x16059

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static writeExpDetDeviceAdminDeclinedByUser(Ljava/lang/String;)V
    .locals 1

    const v0, 0x1605a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static writeExpDetDeviceAdminUninstalledByUser(Ljava/lang/String;)V
    .locals 1

    const v0, 0x1605b

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static writeLockScreenType(Ljava/lang/String;)V
    .locals 1

    const v0, 0x16058

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    return-void
.end method

.method public static writeSettingsLatency(II)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x1605c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method
