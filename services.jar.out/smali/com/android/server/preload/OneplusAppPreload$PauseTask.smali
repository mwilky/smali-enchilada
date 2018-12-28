.class Lcom/android/server/preload/OneplusAppPreload$PauseTask;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PauseTask"
.end annotation


# instance fields
.field private mCreateTime:J

.field private mPackage:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;ILjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mUid:I

    iput-object p3, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mPackage:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mCreateTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->access$2100(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mCreateTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mCreateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1b58

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->pauseTask(IZ)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setPreloadTaskLoadDone(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$600(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload$PauseTask;->mPackage:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;-><init>(Lcom/android/server/preload/OneplusAppPreload;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2200()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x7530

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0xa4cb800

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_1
    const-string v1, "OneplusAppPreload"

    const-string/jumbo v2, "package is not in preload stack"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
