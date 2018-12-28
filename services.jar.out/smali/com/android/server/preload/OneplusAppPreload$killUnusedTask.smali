.class Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;
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
    name = "killUnusedTask"
.end annotation


# instance fields
.field private mOrigTaskId:I

.field private mPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;ILjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->mOrigTaskId:I

    iput-object p3, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->mPackage:Ljava/lang/String;

    const-string p1, "OneplusAppPreload"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", task id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->mOrigTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->access$2100(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->mOrigTaskId:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "OneplusAppPreload"

    const-string/jumbo v2, "killUnusedTask start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->killUnusedTask(I)V

    invoke-static {}, Lcom/android/server/preload/PreloadUtils;->getInstance()Lcom/android/server/preload/PreloadUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/preload/PreloadUtils;->checkAndRemovePreloadApp(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "OneplusAppPreload"

    const-string v2, "Package is not in preload stack, skip killUnusedTask"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
