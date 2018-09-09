.class Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;
.super Landroid/os/Handler;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "oneplusProcessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusProcessManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1243
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    .line 1244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 1248
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1249
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]handleMessage(): msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 1370
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "DISPATCH_APP_VISIBILITY_TIMEOUT"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1371
    goto/16 :goto_1

    .line 1367
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "DISPLAY_EVENT_TIMEOUT"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1368
    goto/16 :goto_1

    .line 1364
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "INPUT_DEVICES_CHANGE_TIMEOUT"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1365
    goto/16 :goto_1

    .line 1361
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const-string v2, "PUBLISH_SERVICE_TIMEOUT"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$3000(IILjava/lang/String;)V

    .line 1362
    goto/16 :goto_1

    .line 1355
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1356
    .local v0, "uid2":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2900(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1357
    goto/16 :goto_1

    .line 1350
    .end local v0    # "uid2":I
    :sswitch_5
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1351
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v0

    const-string/jumbo v1, "updateScreenState"

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->resumeAllProcessLock(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1321
    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1322
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1323
    goto/16 :goto_1

    .line 1325
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2800(Lcom/android/server/am/OnePlusProcessManager;I)I

    move-result v1

    .line 1326
    .local v1, "again":I
    if-lt v1, v2, :cond_6

    .line 1327
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1328
    .local v2, "msg2":Landroid/os/Message;
    const/16 v3, 0x74

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1329
    iput v0, v2, Landroid/os/Message;->arg1:I

    .line 1330
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$100()Landroid/os/Handler;

    move-result-object v3

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->computeTrafficTime:J

    int-to-long v6, v1

    mul-long/2addr v4, v6

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1331
    .end local v2    # "msg2":Landroid/os/Message;
    goto/16 :goto_1

    .line 1312
    .end local v0    # "uid":I
    .end local v1    # "again":I
    :sswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1313
    .local v0, "childpid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1315
    .local v1, "addUid":I
    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2600(II)V

    .line 1316
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v3

    if-ne v3, v2, :cond_6

    .line 1317
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v2

    const-wide/16 v3, 0x2

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v3, v5

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    goto/16 :goto_1

    .line 1305
    .end local v0    # "childpid":I
    .end local v1    # "addUid":I
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1306
    .local v0, "uidDelay":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1309
    .local v2, "pidDelay":I
    invoke-static {v0, v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2500(IIZ)V

    .line 1310
    goto/16 :goto_1

    .line 1258
    .end local v0    # "uidDelay":I
    .end local v2    # "pidDelay":I
    :sswitch_9
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager;->loadNPMConfigFiles()V

    .line 1260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mAlarm:Landroid/app/IAlarmManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2200(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IAlarmManager;->setBlackAlarm(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    goto/16 :goto_1

    .line 1261
    :catch_0
    move-exception v0

    .line 1263
    goto/16 :goto_1

    .line 1253
    :sswitch_a
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    new-instance v1, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v3, "/data/data_bpm/"

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;-><init>(Lcom/android/server/am/OnePlusProcessManager;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2102(Lcom/android/server/am/OnePlusProcessManager;Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    .line 1254
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusProcessManager;->access$2100(Lcom/android/server/am/OnePlusProcessManager;)Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusProcessManager$FileObserverPolicy;->startWatching()V

    .line 1255
    goto/16 :goto_1

    .line 1293
    :sswitch_b
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    const-string v1, "/data/data_bpm/brd.xml"

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$2402(Lcom/android/server/am/OnePlusProcessManager;Ljava/util/List;)Ljava/util/List;

    .line 1294
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FO]UPDATE_STS: after: mBrdList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusProcessManager;->access$2400(Lcom/android/server/am/OnePlusProcessManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    goto/16 :goto_1

    .line 1266
    :sswitch_c
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v0

    .line 1268
    .local v0, "oldStatus":Z
    const-string v3, "/data/data_bpm/bpm_sts.xml"

    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1269
    .local v3, "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_5

    .line 1270
    sget-boolean v4, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v4, :cond_2

    .line 1271
    const-string v4, "OnePlusProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FO]UPDATE_STS: before: mBPMStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1274
    .local v1, "temp":Z
    if-eq v0, v1, :cond_4

    .line 1275
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1276
    .local v4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "BPMStatus"

    if-eqz v1, :cond_3

    const-string/jumbo v6, "true"

    goto :goto_0

    :cond_3
    const-string v6, "false"

    :goto_0
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    if-eqz v5, :cond_4

    .line 1278
    iget-object v5, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v5, v5, Lcom/android/server/am/OnePlusProcessManager;->appTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    const-string v6, "OnePlusProcessManager"

    invoke-virtual {v5, v6, v4}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1282
    .end local v4    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2300()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    .line 1283
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusProcessManager;->setBPMEnable(Z)V

    .line 1287
    .end local v1    # "temp":Z
    :cond_5
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FO]UPDATE_STS: after: mBPMStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$200()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$oneplusProcessHandler;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusProcessManager;->updateProperties()V

    .line 1290
    nop

    .line 1377
    .end local v0    # "oldStatus":Z
    .end local v3    # "pl":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_c
        0x66 -> :sswitch_b
        0x6f -> :sswitch_a
        0x70 -> :sswitch_9
        0x72 -> :sswitch_8
        0x73 -> :sswitch_7
        0x74 -> :sswitch_6
        0x76 -> :sswitch_5
        0x77 -> :sswitch_4
        0x2328 -> :sswitch_3
        0x238c -> :sswitch_2
        0x23f0 -> :sswitch_1
        0x2454 -> :sswitch_0
    .end sparse-switch
.end method
