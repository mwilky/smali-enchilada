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

    .line 195
    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;

    invoke-direct {p0}, Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;-><init>()V

    .line 197
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/longshot/LongScreenshotManagerService;Lcom/oneplus/longshot/LongScreenshotManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/longshot/LongScreenshotManagerService;
    .param p2, "x1"    # Lcom/oneplus/longshot/LongScreenshotManagerService$1;

    .line 195
    invoke-direct {p0, p1}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;-><init>(Lcom/oneplus/longshot/LongScreenshotManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;)Lcom/oneplus/longshot/ILongScreenshot;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;

    .line 195
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    return-object v0
.end method


# virtual methods
.method public notifyMove()V
    .locals 6

    .line 237
    const-string v0, "Longshot.ManagerService"

    const-string v1, "notifyMove"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 239
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

    .line 241
    .local v2, "listener":Lcom/oneplus/longshot/ILongScreenshotListener;
    :try_start_1
    invoke-interface {v2}, Lcom/oneplus/longshot/ILongScreenshotListener;->onMove()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    goto :goto_1

    .line 242
    :catch_0
    move-exception v3

    .line 243
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "Longshot.ManagerService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v2    # "listener":Lcom/oneplus/longshot/ILongScreenshotListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 246
    :cond_0
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 202
    const-string v0, "Longshot.ManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {p2}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshot;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    invoke-interface {v0, p0}, Lcom/oneplus/longshot/ILongScreenshot;->start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Longshot.ManagerService"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 206
    :catch_1
    move-exception v0

    .line 210
    :goto_0
    nop

    .line 211
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 215
    const-string v0, "Longshot.ManagerService"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->stop()V

    .line 218
    return-void
.end method

.method registerListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .line 250
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 4

    .line 222
    const-string v0, "Longshot.ManagerService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->this$0:Lcom/oneplus/longshot/LongScreenshotManagerService;

    invoke-static {v0}, Lcom/oneplus/longshot/LongScreenshotManagerService;->access$200(Lcom/oneplus/longshot/LongScreenshotManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mService:Lcom/oneplus/longshot/ILongScreenshot;

    .line 227
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 229
    .local v0, "windowManagerService":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->stopLongshotConnection()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Longshot.ManagerService"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method unregisterListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/oneplus/longshot/ILongScreenshotListener;

    .line 256
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManagerService$LongshotConnection;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
