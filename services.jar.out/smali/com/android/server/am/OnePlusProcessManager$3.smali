.class Lcom/android/server/am/OnePlusProcessManager$3;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mScreenStateReceiver: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3100(Lcom/android/server/am/OnePlusProcessManager;)V

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->setScreenState(Z)Z

    sput-boolean v3, Lcom/android/server/am/OnePlusProcessManager;->mScreen_ON_ING:Z

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3300()Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->screenOffCheckDelayTime:J

    add-long/2addr v3, v5

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3200()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_2

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3100(Lcom/android/server/am/OnePlusProcessManager;)V

    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mAudioUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->updateScreenState(Z)V

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3300()Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3200()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_2

    :cond_2
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3500(Lcom/android/server/am/OnePlusProcessManager;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3600(Lcom/android/server/am/OnePlusProcessManager;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3700(Lcom/android/server/am/OnePlusProcessManager;)V

    goto :goto_2

    :cond_3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3800()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v4, v2

    goto :goto_0

    :cond_5
    move v4, v3

    :goto_0
    invoke-static {v4}, Lcom/android/server/am/OnePlusProcessManager;->access$402(Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$400()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v3, "mCharging"

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcess(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3902(Z)Z

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$3900()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$3902(Z)Z

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v2

    nop

    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-wide v7, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_8
    :goto_2
    return-void
.end method
