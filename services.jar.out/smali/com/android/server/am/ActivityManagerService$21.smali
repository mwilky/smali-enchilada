.class Lcom/android/server/am/ActivityManagerService$21;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$aboveSystem:Z

.field final synthetic val$activity:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$anrPid:I

.field final synthetic val$parent:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 15652
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$anrPid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$21;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$21;->val$activity:Lcom/android/server/am/ActivityRecord;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$21;->val$parent:Lcom/android/server/am/ActivityRecord;

    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$21;->val$aboveSystem:Z

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$21;->val$annotation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 15655
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$21;->val$anrPid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v1, :cond_0

    .line 15656
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring stale ANR (occurred in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$anrPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", but current pid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15658
    return-void

    .line 15668
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityManagerService$21$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerService$21$1;-><init>(Lcom/android/server/am/ActivityManagerService$21;)V

    .line 15673
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$21$1;->start()V

    .line 15675
    return-void
.end method
