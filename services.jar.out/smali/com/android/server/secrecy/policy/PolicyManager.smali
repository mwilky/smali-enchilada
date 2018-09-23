.class public Lcom/android/server/secrecy/policy/PolicyManager;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;


# static fields
.field public static final POLICY_DECRYPTED:Z = false

.field public static final POLICY_ENCRYPTED:Z = true

.field private static final TAG:Ljava/lang/String; = "SecrecyService.PolicyManager"

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/secrecy/policy/PolicyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDecryptTool:Lcom/android/server/secrecy/policy/DecryptTool;

.field private mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

.field private mIsEncryptAdb:Z

.field private mIsEncryptApp:Z

.field private mIsEncryptLog:Z

.field private mLooper:Landroid/os/Looper;

.field private mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

.field private final mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

.field private mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

.field private mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/secrecy/SecrecyConfig;->getInstance()Lcom/android/server/secrecy/SecrecyConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    return-void
.end method

.method private checkChangeToPolicyDecryptedIfNeeded()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->getCurrentDownloadTimeInMills()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/server/secrecy/policy/DownloadInfo;->getLastDownloadTimeInMills()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/server/secrecy/policy/DownloadInfo;->isCurrentDownloadInternal()Z

    move-result v4

    const-string v5, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkChangeToPolicyDecryptedIfNeeded, currentDownloadTimeInMills = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkChangeToPolicyDecryptedIfNeeded, lastDownloadTimeInMills    = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkChangeToPolicyDecryptedIfNeeded, lastDownloadTimeInMills    = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    const-string/jumbo v6, "newDownloadInternal"

    invoke-virtual {p0, v5, v6}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/secrecy/policy/PolicyManager;
    .locals 2

    sget-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/secrecy/policy/PolicyManager;->sInstance:Lcom/android/server/secrecy/policy/PolicyManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/secrecy/policy/PolicyManager;

    invoke-direct {v1}, Lcom/android/server/secrecy/policy/PolicyManager;-><init>()V

    sput-object v1, Lcom/android/server/secrecy/policy/PolicyManager;->sInstance:Lcom/android/server/secrecy/policy/PolicyManager;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->sInstance:Lcom/android/server/secrecy/policy/PolicyManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initSecreyConfig()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/secrecy/SecrecyConfig;->setPolicyManager(Lcom/android/server/secrecy/policy/PolicyManager;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyConfig;->loadSecrecyConfig()V

    return-void
.end method

.method private notifySecrecyConfigChanged(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ctl.restart"

    const-string v1, "adbd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecrecyService.PolicyManager"

    const-string/jumbo v1, "restart adbd"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startCountDownTimerIfNessesary(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->startCountDown(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown_TYPE"

    return-object v0

    :pswitch_0
    const-string v0, "APP_TYPE"

    return-object v0

    :pswitch_1
    const-string v0, "LOG_TYPE"

    return-object v0

    :cond_0
    const-string v0, "ADB_TYPE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePolicyStateLocked(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "SecrecyService.PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePolicyStateLocked, changedPolicyState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", unlockType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Kevin_DEBUG"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    if-eq v4, v6, :cond_0

    const-string v6, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePolicyStateLocked, mIsEncryptApp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    xor-int/2addr v3, v5

    move v1, v3

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    if-eq v3, v4, :cond_1

    const-string v4, "SecrecyService.PolicyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePolicyStateLocked, mIsEncryptLog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    xor-int/2addr v4, v5

    move v1, v4

    :cond_1
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    if-eq v4, v6, :cond_2

    const-string v6, "SecrecyService.PolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePolicyStateLocked, mIsEncryptAdb : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v6, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    xor-int/2addr v3, v5

    move v1, v3

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "SecrecyService.PolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePolicyStateLocked, unlockType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", changedToDecrypted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/android/server/secrecy/SecrecyConfig;->getInstance()Lcom/android/server/secrecy/SecrecyConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/secrecy/SecrecyConfig;->saveSecrecyConfig(Ljava/util/Map;)V

    :cond_3
    invoke-direct {p0, p2, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->startCountDownTimerIfNessesary(Ljava/lang/String;Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public createPolicyState(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyManager dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsEncryptApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsEncryptLog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsEncryptAdb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/policy/DownloadInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/SecrecyConfig;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->getPolicyState(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentDownloadTimeInMills()Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->getCurrentDownloadTimeInMills()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDecryptTool()Lcom/android/server/secrecy/policy/DecryptTool;
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDecryptTool:Lcom/android/server/secrecy/policy/DecryptTool;

    return-object v0
.end method

.method public getDefaultPolicy()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->isCurrentDownloadInternal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->getLastDownloadTimeInMills()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getImei()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPolicyState(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :try_start_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    monitor-exit v0

    return v1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    monitor-exit v0

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSecrecyKey([B)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/SecrecyConfig;->getSecrecyKey([B)Z

    move-result v0

    return v0
.end method

.method public importRC4Key(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/SecrecyConfig;->saveImei(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/SecrecyConfig;->saveRC4Key(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyConfig:Lcom/android/server/secrecy/SecrecyConfig;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/secrecy/SecrecyConfig;->saveSecrecyConfig(Ljava/util/Map;)V

    return-void
.end method

.method public initUpdateBroadcastReceiver()V
    .locals 0

    return-void
.end method

.method public onConfigLoadFinished()V
    .locals 0

    return-void
.end method

.method public onConfigSaveFinished(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecrecyService.PolicyManager"

    const-string/jumbo v1, "updatedSecrecyStateMap.isEnpty() onConfigSaveFinished return"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/SecrecyService;->notifySecrecyState(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/android/server/secrecy/policy/PolicyManager;->notifySecrecyConfigChanged(Ljava/util/Map;)V

    return-void
.end method

.method public onCountDownTimerExpired()V
    .locals 2

    const-string v0, "SecrecyService.PolicyManager"

    const-string/jumbo v1, "onCountDownTimerExpired change all types to POLICY_ENCRYPTED"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->createPolicyState(Ljava/util/Map;Z)V

    const-string v1, "countDown_TimerExpired"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public onSecrecySwitchUpdate()V
    .locals 0

    return-void
.end method

.method public onSecrecyUpdateFromProvider()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getSupportSwitch()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v1}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getActivitySwitch()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v2}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getLogSwitch()Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v3}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getAdbSwitch()Z

    move-result v3

    const-string v4, "SecrecyService.PolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSecrecySwitchUpdate, support = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    iget-object v5, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v5}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getMacTimeout()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v7}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getIdTimeout()J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->updateCountDownTime(JJ)V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "secrecy_update"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public setLastDownloadTimeInMills(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/policy/DownloadInfo;->setLastDownloadTimeInMills(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->checkChangeToPolicyDecryptedIfNeeded()V

    return-void
.end method

.method public setSecrecyService(Landroid/content/Context;Lcom/android/server/secrecy/SecrecyService;Landroid/os/Looper;)V
    .locals 2

    iput-object p3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mLooper:Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    new-instance v0, Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-direct {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    new-instance v0, Lcom/android/server/secrecy/policy/DecryptTool;

    invoke-direct {v0, p1, p0}, Lcom/android/server/secrecy/policy/DecryptTool;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDecryptTool:Lcom/android/server/secrecy/policy/DecryptTool;

    new-instance v0, Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/PolicyManager;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    new-instance v0, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;-><init>(Landroid/content/Context;Lcom/android/server/secrecy/policy/SecrecySwitchHelper$ISwitchUpdateListener;)V

    iput-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    return-void
.end method

.method public status(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 5

    sget-object v0, Lcom/android/server/secrecy/policy/PolicyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secrecy_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v2}, Lcom/android/server/secrecy/SecrecyService;->isSecrecySupportLocal()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt_all="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt_app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt_log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt_adb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypt_all="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptApp:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptLog:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mIsEncryptAdb:Z

    if-nez v2, :cond_1

    move v3, v4

    nop

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Z)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mDownloadInfo:Lcom/android/server/secrecy/policy/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/DownloadInfo;->readDownloadInfo()V

    invoke-direct {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->initSecreyConfig()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/secrecy/policy/PolicyManager;->initUpdateBroadcastReceiver()V

    const-string v0, "SecrecyService.PolicyManager"

    const-string/jumbo v1, "systemReady, initUpdateBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/policy/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mResetCountDownTimer:Lcom/android/server/secrecy/policy/ResetCountDownTimer;

    iget-object v1, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v1}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getMacTimeout()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/secrecy/policy/PolicyManager;->mSecrecySwitchHelper:Lcom/android/server/secrecy/policy/SecrecySwitchHelper;

    invoke-virtual {v3}, Lcom/android/server/secrecy/policy/SecrecySwitchHelper;->getIdTimeout()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/secrecy/policy/ResetCountDownTimer;->updateCountDownTime(JJ)V

    return-void
.end method

.method public updatePolicyState(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyState(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method public updatePolicyState(Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/secrecy/policy/PolicyManager;->updatePolicyStateLocked(Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method
