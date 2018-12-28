.class public Lcom/android/server/preload/PreloadUtils;
.super Ljava/lang/Object;
.source "PreloadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;,
        Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;,
        Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreloadUtils"

.field private static sInstance:Lcom/android/server/preload/PreloadUtils;


# instance fields
.field private final ADD_PRELOAD_APP:I

.field private final REMOVE_PRELOAD_APP:I

.field private final SET_PRELOAD_APP:I

.field private mDisableGpsForPreload:Z

.field private mPreloadApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadUtilsHandler:Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/preload/PreloadUtils;->sInstance:Lcom/android/server/preload/PreloadUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadUtilsHandler:Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/preload/PreloadUtils;->mDisableGpsForPreload:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/preload/PreloadUtils;->ADD_PRELOAD_APP:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/preload/PreloadUtils;->REMOVE_PRELOAD_APP:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/preload/PreloadUtils;->SET_PRELOAD_APP:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/preload/PreloadUtils;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/preload/PreloadUtils;
    .locals 2

    sget-object v0, Lcom/android/server/preload/PreloadUtils;->sInstance:Lcom/android/server/preload/PreloadUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/preload/PreloadUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/preload/PreloadUtils;->sInstance:Lcom/android/server/preload/PreloadUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/preload/PreloadUtils;

    invoke-direct {v1}, Lcom/android/server/preload/PreloadUtils;-><init>()V

    sput-object v1, Lcom/android/server/preload/PreloadUtils;->sInstance:Lcom/android/server/preload/PreloadUtils;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/preload/PreloadUtils;->sInstance:Lcom/android/server/preload/PreloadUtils;

    return-object v0
.end method


# virtual methods
.method public addPreloadApp(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/preload/PreloadUtils;->addPreloadApp(Ljava/lang/String;IZ)V

    return-void
.end method

.method public addPreloadApp(Ljava/lang/String;IZ)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PreloadUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPreloadApp, packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;-><init>(Lcom/android/server/preload/PreloadUtils;IZ)V

    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadUtilsHandler:Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;

    iget-object v2, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadUtilsHandler:Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;-><init>(Lcom/android/server/preload/PreloadUtils;Ljava/lang/String;Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public checkAndRemovePreloadApp(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/preload/PreloadUtils;->isPreload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/preload/PreloadUtils;->removePreloadApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method discardOnlyResumeFlag(I)V
    .locals 0

    return-void
.end method

.method discardOnlyResumeFlag(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/preload/PreloadUtils;->discardOnlyResumeFlag(I)V

    return-void
.end method

.method public getPreloadAppUids()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPreloadApps()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreloadUtilsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;-><init>(Lcom/android/server/preload/PreloadUtils;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadUtilsHandler:Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;

    const-string/jumbo v1, "persist.sys.preload.disable_gps"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/preload/PreloadUtils;->mDisableGpsForPreload:Z

    return-void
.end method

.method public isDisableGpsForPreload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/preload/PreloadUtils;->mDisableGpsForPreload:Z

    return v0
.end method

.method public isForceInvisible(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;->mForceInvisible:Z

    return v1

    :cond_1
    return v1
.end method

.method public isPreload(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public isPreloadUid(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v2, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public removePreloadApp(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "PreloadUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreloadApp, packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadApps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setForceInvisible(Ljava/lang/String;Z)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, p2}, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;-><init>(Lcom/android/server/preload/PreloadUtils;IZ)V

    iget-object v1, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadUtilsHandler:Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;

    iget-object v2, p0, Lcom/android/server/preload/PreloadUtils;->mPreloadUtilsHandler:Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;

    const/4 v3, 0x3

    new-instance v4, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/server/preload/PreloadUtils$PreloadTaskInfoMessage;-><init>(Lcom/android/server/preload/PreloadUtils;Ljava/lang/String;Lcom/android/server/preload/PreloadUtils$PreloadTaskInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/preload/PreloadUtils$PreloadUtilsHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
