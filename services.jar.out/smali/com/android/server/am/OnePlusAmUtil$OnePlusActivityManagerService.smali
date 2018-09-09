.class public Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityManagerService"
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mNetBoostFeature:Z

.field private mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

.field private mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

.field private mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

.field private mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field private mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 68
    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 69
    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    .line 80
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 81
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    .line 83
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    .line 85
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 86
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 89
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/am/IEmbryoManager;->setBlackList(Ljava/util/List;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    .line 57
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    .line 57
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 301
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 307
    .local v1, "start":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 308
    .local v3, "s":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    goto :goto_0

    .line 311
    :cond_1
    if-nez v1, :cond_2

    .line 312
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/4 v1, 0x0

    .line 316
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 302
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "start":Z
    :cond_4
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .locals 7
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    const-string v0, "enabled_notification_listeners"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "flat":Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 325
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 326
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "allowed":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 328
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 327
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "allowed":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .locals 6
    .param p1, "flatComponent"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 284
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;

    move-result-object v1

    .line 287
    .local v1, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->formatSettings(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, "flatSettings":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 292
    .local v3, "ident":J
    :try_start_0
    const-string v5, "enabled_notification_listeners"

    invoke-static {v0, v5, v2, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    nop

    .line 298
    return-void

    .line 296
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private isUserSetupCompleted(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 279
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 280
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    nop

    :cond_0
    return v2
.end method

.method private notifyOIMCAMSReady()V
    .locals 3

    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    .line 398
    .local v0, "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$LocalService;->notifyOIMCAMSReady()V

    .line 402
    .end local v0    # "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    :cond_0
    return-void
.end method

.method private updateOIMCOnlineConfig()V
    .locals 3

    .line 385
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    .line 388
    .local v0, "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$LocalService;->updateOnlineConfig()V

    .line 392
    .end local v0    # "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    :cond_0
    return-void
.end method


# virtual methods
.method public appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "thread"    # Landroid/app/IApplicationThread;
    .param p4, "fromBinderDied"    # Z

    .line 163
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v0, p1, v1}, Lcom/android/server/am/IEmbryoManager;->prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V

    .line 166
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    .line 171
    :cond_0
    return-void
.end method

.method public finishBooting()V
    .locals 3

    .line 176
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->startMonitor()V

    .line 182
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceUpdateOnlineConfig()V

    .line 188
    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 193
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 196
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->updateOIMCOnlineConfig()V

    .line 197
    return-void
.end method

.method public getOHPD()Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-object v0
.end method

.method public ifOHPDInited()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequestPermission(Z)V
    .locals 4
    .param p1, "request"    # Z

    .line 259
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRequestPermission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    const-string v0, "ActivityManager"

    const-string v1, "Only applications are allowed to call isRequestPermission!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 266
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 268
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->permRequestInc()V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->permRequestDec()V

    .line 273
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 274
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public sendApplicationFocusGain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$1;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method

.method public sendApplicationStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$2;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method public sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "stopReason"    # I

    .line 360
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$3;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method public sendApplicationStopByForceStop(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingPid"    # I

    .line 368
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;-><init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method public shutdown(I)V
    .locals 1
    .param p1, "timeout"    # I

    .line 252
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    .line 253
    .local v0, "mLocalOIMCService":Lcom/oneplus/server/OIMCService$LocalService;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$LocalService;->shutdown()V

    .line 256
    :cond_0
    return-void
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;I)V
    .locals 0
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I

    .line 339
    return-void
.end method

.method public switchUser(IZ)V
    .locals 4
    .param p1, "targetUserId"    # I
    .param p2, "result"    # Z

    .line 233
    if-eqz p2, :cond_1

    .line 236
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->isUserSetupCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-string/jumbo v0, "net.oneplus.launcher/net.oneplus.launcher.notification.NotificationListener"

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    .line 239
    sget-boolean v0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grant notification policy for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " done "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_0
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grant notification policy for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V
    .locals 9
    .param p1, "goingCallback"    # Ljava/lang/Runnable;
    .param p2, "traceLog"    # Landroid/util/TimingsTraceLog;

    .line 98
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "persist.sys.launcher.set"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    .local v1, "hasSet":Z
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->isUserSetupCompleted(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_5

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    .line 108
    .local v5, "userId":I
    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_2

    .line 109
    goto :goto_1

    .line 111
    :cond_2
    const-string/jumbo v6, "net.oneplus.launcher/net.oneplus.launcher.notification.NotificationListener"

    invoke-direct {p0, v6, v5}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    .line 113
    sget-boolean v6, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_3

    .line 114
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "grant notification policy for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " done "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v5    # "userId":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_4
    const-string/jumbo v2, "persist.sys.launcher.set"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "hasSet":Z
    :cond_5
    goto :goto_2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ActivityManager"

    const-string v3, "grant notification policy for user 0 fail "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-interface {v1, v2, v3}, Lcom/android/server/am/IEmbryoManager;->initiate(Landroid/content/Context;Landroid/os/Handler;)V

    .line 132
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x5c

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOHPD:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 138
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mNetBoostFeature:Z

    if-eqz v0, :cond_7

    .line 139
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 140
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 154
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->notifyOIMCAMSReady()V

    .line 157
    invoke-static {}, Lcom/oneplus/oiface/OifaceManager;->getInstance()Lcom/oneplus/oiface/OifaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/oiface/OifaceManager;->initOnlineConfig(Landroid/content/Context;)V

    .line 158
    return-void
.end method
