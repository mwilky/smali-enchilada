.class public Lcom/android/server/power/batterysaver/BatterySaverController;
.super Ljava/lang/Object;
.source "BatterySaverController.java"

# interfaces
.implements Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;,
        Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final REASON_AUTOMATIC_OFF:I = 0x1

.field public static final REASON_AUTOMATIC_ON:I = 0x0

.field public static final REASON_INTERACTIVE_CHANGED:I = 0x5

.field public static final REASON_MANUAL_OFF:I = 0x3

.field public static final REASON_MANUAL_ON:I = 0x2

.field public static final REASON_PLUGGED_IN:I = 0x7

.field public static final REASON_POLICY_CHANGED:I = 0x6

.field public static final REASON_SETTING_CHANGED:I = 0x8

.field public static final REASON_STICKY_RESTORE:I = 0x4

.field static final TAG:Ljava/lang/String; = "BatterySaverController"


# instance fields
.field private final mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

.field private final mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

.field private mIsInteractive:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsPluggedIn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/PowerManagerInternal$LowPowerModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviouslyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/power/BatterySaverPolicy;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;-><init>(Lcom/android/server/power/batterysaver/BatterySaverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v0, p0}, Lcom/android/server/power/BatterySaverPolicy;->addListener(Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V

    new-instance v0, Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-direct {v0, p2}, Lcom/android/server/power/batterysaver/FileUpdater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    iput-object p5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverLocationPlugin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    iput-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/power/batterysaver/BatterySaverController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/power/batterysaver/BatterySaverController;)[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    return-object v0
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private updateBatterySavingStats()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "BatterySaverController"

    const-string v2, "PowerManager not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-virtual {v4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startCharging()V

    monitor-exit v3

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    nop

    invoke-virtual {v4, v5, v1, v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionState(III)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method public addListener(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableBatterySaver(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBatterySaverPolicy()Lcom/android/server/power/BatterySaverPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    return-object v0
.end method

.method handleBatterySaverStateChanged(ZI)V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPreviouslyEnabled:Z

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    nop

    iget-boolean v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v4}, Lcom/android/server/power/BatterySaverPolicy;->toEventLogString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-static {v2, v3, v0, v4, p2}, Lcom/android/server/EventLogTags;->writeBatterySaverMode(IIILjava/lang/String;I)V

    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    iput-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPreviouslyEnabled:Z

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/PowerManagerInternal$LowPowerModeListener;

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/power/BatterySaverPolicy;->getFileValues(Z)Landroid/util/ArrayMap;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const/4 v6, 0x5

    if-eqz v3, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    invoke-virtual {v1, v6, v7}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-virtual {v6}, Lcom/android/server/power/batterysaver/FileUpdater;->restoreDefault()V

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    invoke-virtual {v6, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->writeFiles(Landroid/util/ArrayMap;)V

    :goto_3
    iget-object v6, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mPlugins:[Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;

    array-length v7, v6

    move v8, v5

    :goto_4
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    invoke-interface {v9, p0}, Lcom/android/server/power/batterysaver/BatterySaverController$Plugin;->onBatterySaverChanged(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_6

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "mode"

    invoke-virtual {v6, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v6, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v8

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v9, "android.permission.DEVICE_POWER"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    array-length v7, v2

    :goto_5
    if-ge v5, v7, :cond_6

    aget-object v8, v2, v5

    iget-object v9, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-interface {v8}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->getServiceType()I

    move-result v10

    invoke-virtual {v9, v10, v3}, Lcom/android/server/power/BatterySaverPolicy;->getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/os/PowerManagerInternal$LowPowerModeListener;->onLowPowerModeChanged(Landroid/os/PowerSaveState;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInteractive()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mIsInteractive:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/BatterySaverPolicy;

    invoke-virtual {v0}, Lcom/android/server/power/BatterySaverPolicy;->isLaunchBoostDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBatterySaverPolicyChanged(Lcom/android/server/power/BatterySaverPolicy;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    return-void
.end method

.method public systemReady()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mFileUpdater:Lcom/android/server/power/batterysaver/FileUpdater;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isRuntimeRestarted()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/power/batterysaver/FileUpdater;->systemReady(Z)V

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postSystemReady()V

    return-void
.end method
