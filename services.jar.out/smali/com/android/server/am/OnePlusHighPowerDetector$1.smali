.class Lcom/android/server/am/OnePlusHighPowerDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x2710

    const v6, 0x101d7

    const/16 v7, 0x5b

    const v8, 0xd6e3

    const/16 v9, 0x5d

    const v10, 0xd6e7

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    invoke-static {v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$002(Z)Z

    new-array v0, v11, [I

    aput v9, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    const-wide/16 v13, 0x7530

    invoke-virtual {v0, v8, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    new-array v0, v11, [I

    aput v7, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$400()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v0, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$302(Lcom/android/server/am/OnePlusHighPowerDetector;J)J

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$002(Z)Z

    new-array v0, v11, [I

    aput v9, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$502(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    :cond_4
    new-array v0, v11, [I

    aput v7, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$602(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    :cond_5
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$702(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v0, "ohpd.action.test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v6, 0xd6e2

    if-eqz v0, :cond_f

    const-string v0, "code"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "userid"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "pid"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    if-eqz v13, :cond_7

    :try_start_0
    const-string/jumbo v0, "notify#"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "notify#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " userid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "broadcast"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object v15, v0

    invoke-static/range {v14 .. v19}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$800(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V

    :cond_7
    const-string/jumbo v0, "soff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "1st"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    const-string v0, "enable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "enable fake test"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$202(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto :goto_0

    :cond_a
    const-string v0, "disable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "disable fake test"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$202(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto :goto_0

    :cond_b
    const-string/jumbo v0, "native"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to kill native process pid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :cond_c
    const-string/jumbo v0, "lru_dump"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OHPD"

    const-string v4, "[BGC] lru_dump"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$900(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    goto :goto_0

    :cond_d
    const-string/jumbo v0, "oth_dump"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OHPD"

    const-string v4, "[BGC] oth_dump"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1000(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_e
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "OHPD"

    const-string v5, "error occured while ACTION_TEST"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    goto/16 :goto_2

    :cond_f
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1100(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    goto/16 :goto_2

    :cond_10
    const-string v0, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_12

    const-string/jumbo v0, "pkg"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "userid"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    if-eq v5, v4, :cond_11

    if-eq v6, v4, :cond_11

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v4, v0, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1200(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    :cond_11
    goto :goto_2

    :cond_12
    const-string v0, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "pkg"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "userid"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    if-eq v5, v4, :cond_13

    if-eq v6, v4, :cond_13

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v4, v0, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1200(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    :cond_13
    goto :goto_2

    :cond_14
    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "LightIdle_Status"

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_15

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] LightIdle="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    if-eqz v0, :cond_16

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z

    :cond_16
    :goto_2
    return-void
.end method
