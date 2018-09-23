.class Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;
.super Landroid/os/Handler;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppStandbyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->updateChargingStableState()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncStart(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;->reportExemptedSyncScheduled(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v0, v0, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/AppStandbyController;->access$400(Lcom/android/server/usage/AppStandbyController;Ljava/lang/String;IIJ)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$300(Lcom/android/server/usage/AppStandbyController;)V

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    goto/16 :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AppStandbyController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parole state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v2, v2, Lcom/android/server/usage/AppStandbyController;->mAppIdleTempParoled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Charging state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v2, v2, Lcom/android/server/usage/AppStandbyController;->mChargingStable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->informParoleStateChanged()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/usage/AppStandbyController;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    :pswitch_7
    sget-boolean v0, Lcom/android/server/usage/AppStandbyController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AppStandbyController"

    const-string v2, "Ending parole"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->setAppIdleParoled(Z)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->checkParoleTimeout()V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/usage/AppStandbyController;->checkIdleStates(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v0, v0, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v0}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->access$200(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;

    move-result-object v2

    const/4 v3, 0x5

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-wide v2, v2, Lcom/android/server/usage/AppStandbyController;->mCheckIdleIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v1, v5

    nop

    :cond_2
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/usage/AppStandbyController;->forceIdleState(Ljava/lang/String;IZ)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$AppStandbyHandler;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v2, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->userId:I

    iget v4, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->bucket:I

    iget v5, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->reason:I

    iget-boolean v6, v0, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->isUserInteraction:Z

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->informListeners(Ljava/lang/String;IIIZ)V

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController$StandbyUpdateRecord;->recycle()V

    nop

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
