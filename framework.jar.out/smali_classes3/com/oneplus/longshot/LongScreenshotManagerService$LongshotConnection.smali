.class Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;
.super Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;
.source "LongScreenshotManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/longshot/LongScreenshotManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongshotConnection"
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/longshot/ILongScreenshotListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/oneplus/longshot/ILongScreenshot;

.field final synthetic this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;


# direct methods
.method private constructor <init>(Lcom/oneplus/longshot/LongScreenshotManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;

    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/longshot/LongScreenshotManagerService;Lcom/oneplus/longshot/LongScreenshotManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;-><init>(Lcom/oneplus/longshot/LongScreenshotManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    return-object v0
.end method


# virtual methods
.method public notifyMove()V
    .locals 6

    const-string v0, "Longshot.ManagerService"

    const-string v1, "notifyMove"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/longshot/ILongScreenshotListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2}, Lcom/oneplus/longshot/ILongScreenshotListener;->onMove()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "Longshot.ManagerService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Longshot.ManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    invoke-interface {v0, p0}, Lcom/oneplus/longshot/ILongScreenshot;->start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Longshot.ManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "Longshot.ManagerService"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->stop()V

    return-void
.end method

.method registerListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 4

    const-string v0, "Longshot.ManagerService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;

    invoke-static {v0}, Lcom/oneplus/longshot/LongScreenshotManagerService;->access$200(Lcom/oneplus/longshot/LongScreenshotManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->stopLongshotConnection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Longshot.ManagerService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method unregisterListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
