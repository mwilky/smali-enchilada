.class Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusNetCgroupSetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 633
    iput-object p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 634
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 635
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 639
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] GameModeStatusContentObserver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$1100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$1100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$1002(Lcom/android/server/am/OnePlusNetCgroupSetManager;Z)Z

    .line 641
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$1000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$900(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 643
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    goto :goto_0

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->access$1000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;->this$0:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 648
    :cond_2
    :goto_0
    return-void
.end method
