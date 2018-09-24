.class Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;
.super Ljava/lang/Object;
.source "NetworkSpeedControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySpeedMachine"
.end annotation


# instance fields
.field incrementRxBytes:J

.field incrementTxBytes:J

.field isTurnOn:Z

.field mIsFirstLoadTether:Z

.field oldRxBytes:J

.field oldTetherRxBytes:J

.field oldTetherTxBytes:J

.field oldTxBytes:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->reset()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->updateSpeedonBG()V

    return-void
.end method

.method private updateSpeedonBG()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1100(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v1

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    sub-long v5, v1, v5

    iput-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iget-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    sub-long v5, v3, v5

    iput-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iput-wide v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1200(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v9, :cond_0

    iput-wide v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    iput-wide v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    move-wide/from16 v20, v3

    goto/16 :goto_2

    :cond_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)[J

    move-result-object v9

    if-eqz v9, :cond_1

    array-length v14, v9

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1

    aget-wide v14, v9, v11

    aget-wide v12, v9, v10

    move-wide/from16 v16, v5

    iget-wide v5, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    sub-long v5, v12, v5

    move-wide/from16 v18, v12

    iget-wide v11, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    sub-long v7, v14, v11

    move-wide/from16 v10, v18

    iput-wide v10, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherTxBytes:J

    iput-wide v14, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTetherRxBytes:J

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v5

    move-wide/from16 v5, v16

    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NetWorkSpeed TetherTx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v13

    int-to-long v13, v13

    div-long v13, v5, v13

    invoke-static {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " tTetherRx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v13

    int-to-long v13, v13

    div-long v13, v7, v13

    invoke-static {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " systemTx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    iget-wide v13, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v15

    move-wide/from16 v20, v3

    int-to-long v3, v15

    div-long/2addr v13, v3

    invoke-static {v12, v13, v14}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " systemRx:"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    iget-wide v12, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v4

    int-to-long v14, v4

    div-long/2addr v12, v14

    invoke-static {v3, v12, v13}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v3

    :goto_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->mIsFirstLoadTether:Z

    goto :goto_2

    :cond_3
    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    :goto_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1800(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetWorkSpeed is first load."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1802(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;Z)Z

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    :goto_3
    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v9, v9, v3

    if-gez v9, :cond_6

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    :cond_6
    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    cmp-long v9, v9, v3

    if-gez v9, :cond_7

    iput-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    :cond_7
    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    iget-wide v9, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    cmp-long v3, v3, v9

    if-lez v3, :cond_8

    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    goto :goto_4

    :cond_8
    iget-wide v3, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    :goto_4
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1600()I

    move-result v9

    int-to-long v9, v9

    div-long v9, v3, v9

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v11, v9, v10}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1700(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1400()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NetWorkSpeed refresh totalTxBytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, ", totalRxBytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v20

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v1

    const-string v1, ", incrementPs="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSpeed="

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,incrementBytes:"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move-wide/from16 v22, v1

    move-wide/from16 v14, v20

    :goto_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$000(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$300(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->this$0:Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1900(Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;)Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl;->access$1500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "send MSG_CLOSE_NETWORTSPEED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    return-void
.end method


# virtual methods
.method public isTurnOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldTxBytes:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementTxBytes:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->oldRxBytes:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->incrementRxBytes:J

    return-void
.end method

.method public setTurnOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return-void
.end method

.method public setTurnOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetworkSpeedControllerImpl$MySpeedMachine;->isTurnOn:Z

    return-void
.end method
