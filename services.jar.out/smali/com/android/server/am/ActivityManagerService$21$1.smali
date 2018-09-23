.class Lcom/android/server/am/ActivityManagerService$21$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$21;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$21;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$21;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$21;->val$activity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$21;->val$parent:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iget-boolean v5, v0, Lcom/android/server/am/ActivityManagerService$21;->val$aboveSystem:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$21;->val$annotation:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    return-void
.end method
