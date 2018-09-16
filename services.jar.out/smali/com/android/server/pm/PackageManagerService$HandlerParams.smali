.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x4


# instance fields
.field private mRetries:I

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field traceCookie:I

.field traceMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 15881
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15874
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    .line 15882
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    .line 15883
    return-void
.end method


# virtual methods
.method getUser()Landroid/os/UserHandle;
    .locals 1

    .line 15886
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleServiceError()V
.end method

.method abstract handleStartCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final serviceError()V
    .locals 2

    .line 15923
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    const-string/jumbo v1, "serviceError"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15924
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 15925
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 15926
    return-void
.end method

.method setTraceCookie(I)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .locals 0
    .param p1, "traceCookie"    # I

    .line 15895
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    .line 15896
    return-object p0
.end method

.method setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$HandlerParams;
    .locals 0
    .param p1, "traceMethod"    # Ljava/lang/String;

    .line 15890
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    .line 15891
    return-object p0
.end method

.method final startCopy()Z
    .locals 4

    .line 15902
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startCopy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15904
    :cond_0
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->mRetries:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 15905
    const-string v1, "PackageManager"

    const-string v2, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15906
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 15907
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleServiceError()V

    .line 15908
    return v0

    .line 15910
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleStartCopy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15911
    const/4 v0, 0x1

    .line 15917
    .local v0, "res":Z
    goto :goto_0

    .line 15913
    .end local v0    # "res":Z
    :catch_0
    move-exception v1

    .line 15914
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v2, :cond_2

    const-string v2, "PackageManager"

    const-string v3, "Posting install MCS_RECONNECT"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15915
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 15916
    nop

    .line 15918
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "res":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->handleReturnCode()V

    .line 15919
    return v0
.end method
