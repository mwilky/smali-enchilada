.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .locals 1
    .param p2, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .line 1151
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1152
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1153
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1154
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 1155
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 1156
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1157
    return-void
.end method

.method private delayLocked(J)J
    .locals 11
    .param p1, "duration"    # J

    .line 1160
    const-string v0, "delayLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1162
    move-wide v3, p1

    .line 1163
    .local v3, "durationRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-lez v0, :cond_2

    .line 1164
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v7, p1

    .line 1167
    .local v7, "bedtime":J
    :cond_0
    :try_start_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1169
    goto :goto_0

    :catch_0
    move-exception v0

    .line 1170
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v0, :cond_1

    .line 1171
    goto :goto_1

    .line 1173
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v3, v7, v9

    .line 1174
    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    .line 1175
    :goto_1
    sub-long v5, p1, v3

    .line 1179
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1175
    return-wide v5

    .line 1179
    .end local v3    # "durationRemaining":J
    .end local v7    # "bedtime":J
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 1177
    .restart local v3    # "durationRemaining":J
    :cond_2
    nop

    .line 1179
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1177
    return-wide v5
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I
    .param p3, "startIndex"    # I
    .param p4, "repeatIndex"    # I

    .line 1265
    move v0, p3

    .line 1266
    .local v0, "i":I
    const-wide/16 v1, 0x0

    .line 1267
    .local v1, "timing":J
    :cond_0
    aget v3, p2, v0

    if-eqz v3, :cond_3

    .line 1268
    add-int/lit8 v3, v0, 0x1

    .local v3, "i":I
    aget-wide v4, p1, v0

    .end local v0    # "i":I
    add-long/2addr v1, v4

    .line 1269
    array-length v0, p1

    if-lt v3, v0, :cond_2

    .line 1270
    if-ltz p4, :cond_1

    .line 1271
    move v0, p4

    .end local v3    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 1280
    .end local v0    # "i":I
    .restart local v3    # "i":I
    :cond_1
    move v0, v3

    goto :goto_1

    .line 1276
    :cond_2
    move v0, v3

    .end local v3    # "i":I
    .restart local v0    # "i":I
    :goto_0
    if-ne v0, p3, :cond_0

    .line 1277
    const-wide/16 v3, 0x3e8

    return-wide v3

    .line 1280
    :cond_3
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1253
    monitor-enter p0

    .line 1254
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 1255
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1256
    monitor-exit p0

    .line 1257
    return-void

    .line 1256
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playWaveform()Z
    .locals 21

    .line 1202
    move-object/from16 v1, p0

    const-string/jumbo v0, "playWaveform"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1204
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1205
    :try_start_1
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 1206
    .local v0, "timings":[J
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 1207
    .local v4, "amplitudes":[I
    array-length v5, v0

    .line 1208
    .local v5, "len":I
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 1210
    .local v6, "repeat":I
    const/4 v7, 0x0

    .line 1211
    .local v7, "index":I
    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 1212
    .local v10, "onDuration":J
    :goto_0
    iget-boolean v12, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v12, :cond_6

    .line 1213
    if-ge v7, v5, :cond_4

    .line 1214
    aget v12, v4, v7

    .line 1215
    .local v12, "amplitude":I
    add-int/lit8 v19, v7, 0x1

    .line 1215
    .local v19, "index":I
    aget-wide v13, v0, v7

    .line 1216
    .end local v7    # "index":I
    .local v13, "duration":J
    cmp-long v7, v13, v8

    if-gtz v7, :cond_0

    .line 1217
    nop

    .line 1211
    move/from16 v7, v19

    goto :goto_0

    .line 1219
    :cond_0
    if-eqz v12, :cond_2

    .line 1220
    cmp-long v7, v10, v8

    if-gtz v7, :cond_1

    .line 1227
    add-int/lit8 v7, v19, -0x1

    invoke-direct {v1, v0, v4, v7, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v15

    move-wide v8, v13

    move-wide v14, v15

    .line 1229
    .end local v10    # "onDuration":J
    .end local v13    # "duration":J
    .local v8, "duration":J
    .local v14, "onDuration":J
    iget-object v13, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    move/from16 v16, v12

    move/from16 v17, v7

    move/from16 v18, v10

    invoke-static/range {v13 .. v18}, Lcom/android/server/VibratorService;->access$700(Lcom/android/server/VibratorService;JIII)V

    goto :goto_2

    .line 1231
    .end local v8    # "duration":J
    .end local v14    # "onDuration":J
    .restart local v10    # "onDuration":J
    .restart local v13    # "duration":J
    :cond_1
    move-wide v8, v13

    .line 1231
    .end local v13    # "duration":J
    .restart local v8    # "duration":J
    iget-object v7, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v7, v12}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;I)V

    goto :goto_1

    .line 1235
    .end local v8    # "duration":J
    .restart local v13    # "duration":J
    :cond_2
    move-wide v8, v13

    .line 1235
    .end local v13    # "duration":J
    .restart local v8    # "duration":J
    :goto_1
    move-wide v14, v10

    .line 1235
    .end local v10    # "onDuration":J
    .restart local v14    # "onDuration":J
    :goto_2
    invoke-direct {v1, v8, v9}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v10

    .line 1236
    .local v10, "waitTime":J
    if-eqz v12, :cond_3

    .line 1237
    sub-long/2addr v14, v10

    .line 1239
    .end local v8    # "duration":J
    .end local v12    # "amplitude":I
    .end local v14    # "onDuration":J
    .local v10, "onDuration":J
    :cond_3
    move-wide v10, v14

    .line 1211
    move/from16 v7, v19

    goto :goto_3

    .line 1239
    .end local v19    # "index":I
    .restart local v7    # "index":I
    :cond_4
    if-gez v6, :cond_5

    .line 1240
    goto :goto_4

    .line 1242
    :cond_5
    move v7, v6

    .line 1211
    :goto_3
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 1245
    :cond_6
    :goto_4
    iget-boolean v8, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    xor-int/lit8 v8, v8, 0x1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1248
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1245
    return v8

    .line 1246
    .end local v0    # "timings":[J
    .end local v4    # "amplitudes":[I
    .end local v5    # "len":I
    .end local v6    # "repeat":I
    .end local v7    # "index":I
    .end local v10    # "onDuration":J
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1248
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .locals 2

    .line 1184
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1185
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1187
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 1188
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    .end local v0    # "finished":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1193
    nop

    .line 1194
    return-void

    .line 1192
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
