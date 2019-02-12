.class public Lcom/oneplus/screenshot/service/GlobalSave;
.super Ljava/lang/Object;
.source "GlobalSave.java"

# interfaces
.implements Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;


# static fields
.field private static final NOTIFICATION_ID_REPEAT:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mCachable:Lcom/oneplus/screenshot/util/Cachable;

.field private mContext:Landroid/content/Context;

.field private mNotificationId:I

.field private mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/service/GlobalSave;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    iput-object p1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/ScreenshotApplication;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    return-void
.end method

.method private nextNotificationId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private onFinished()V
    .locals 3

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    sget-object v1, Lcom/oneplus/screenshot/service/GlobalSave;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v2}, Lcom/oneplus/screenshot/util/Cachable;->clearCache()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-static {}, Lcom/oneplus/screenshot/service/GlobalNotification;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onSaveCancelled()V
    .locals 2

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveCancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    return-void
.end method

.method public onSaveFinished()V
    .locals 2

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "onSaveFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->onFinished()V

    return-void
.end method

.method public start()V
    .locals 5

    sget-object v0, Lcom/oneplus/screenshot/service/GlobalSave;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/screenshot/service/GlobalSave;->nextNotificationId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    iget-object v0, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/screenshot/service/GlobalSave;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mCachable:Lcom/oneplus/screenshot/util/Cachable;

    invoke-interface {v2}, Lcom/oneplus/screenshot/util/Cachable;->getCache()Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/oneplus/screenshot/service/SaveTask;

    iget-object v2, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mNotificationId:I

    invoke-direct {v1, p0, v2, v0, v4}, Lcom/oneplus/screenshot/service/SaveTask;-><init>(Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/GlobalSave;->mSaveTask:Lcom/oneplus/screenshot/service/SaveTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/service/SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
