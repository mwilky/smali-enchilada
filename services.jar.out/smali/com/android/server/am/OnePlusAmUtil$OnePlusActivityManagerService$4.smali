.class Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->sendApplicationStopByForceStop(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    .line 368
    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    iput p2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->val$callingPid:I

    iput-object p3, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 370
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->access$000(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->val$callingPid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 371
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    .line 372
    const-string/jumbo v1, "system"

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->access$100(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->this$0:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->access$100(Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService$4;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;I)V

    .line 378
    :cond_1
    :goto_0
    return-void
.end method
