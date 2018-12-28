.class public final Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"

# interfaces
.implements Lcom/android/server/am/Connor$ConfCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PredictCallBack"
.end annotation


# instance fields
.field private mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

.field private mPreloadCandidate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/util/ArrayList;Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;",
            ">;",
            "Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;->mPreloadCandidate:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    return-void
.end method


# virtual methods
.method public onPredictUpdated(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1200()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get predict packages : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload;->access$2300(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/RestartProcessManager;->isLaunchablePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;->mPreloadCandidate:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1, p1}, Lcom/android/server/preload/OneplusAppPreload;->access$2500(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    new-instance v1, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    sget-object v2, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-direct {v1, p1, v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;-><init>(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)V

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;->mPreloadCandidate:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "OneplusAppPreload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add predict packages : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    invoke-virtual {v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->startPreload()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_0
    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preload package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " do not support preload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
