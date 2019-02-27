.class public final Landroid/os/Looper;
.super Ljava/lang/Object;
.source "Looper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Looper"

.field private static sMainLooper:Landroid/os/Looper;

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLogging:Landroid/util/Printer;

.field final mQueue:Landroid/os/MessageQueue;

.field private mSlowDeliveryThresholdMs:J

.field private mSlowDispatchThresholdMs:J

.field final mThread:Ljava/lang/Thread;

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "quitAllowed"    # Z

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Landroid/os/MessageQueue;

    invoke-direct {v0, p1}, Landroid/os/MessageQueue;-><init>(Z)V

    iput-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    .line 270
    return-void
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 2

    .line 128
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    monitor-exit v0

    return-object v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static loop()V
    .locals 37

    .line 138
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 139
    .local v1, "me":Landroid/os/Looper;
    if-eqz v1, :cond_14

    .line 142
    iget-object v2, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 146
    .local v2, "queue":Landroid/os/MessageQueue;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 151
    .local v3, "ident":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "log.looper."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".slow"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 157
    .local v6, "thresholdOverride":I
    move v0, v5

    .line 157
    .local v0, "slowDeliveryDetected":Z
    :goto_0
    move v7, v0

    .line 160
    .end local v0    # "slowDeliveryDetected":Z
    .local v7, "slowDeliveryDetected":Z
    invoke-virtual {v2}, Landroid/os/MessageQueue;->next()Landroid/os/Message;

    move-result-object v15

    .line 161
    .local v15, "msg":Landroid/os/Message;
    if-nez v15, :cond_0

    .line 163
    return-void

    .line 167
    :cond_0
    iget-object v14, v1, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 168
    .local v14, "logging":Landroid/util/Printer;
    if-eqz v14, :cond_1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>>>> Dispatching to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v15, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v15, Landroid/os/Message;->what:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 173
    :cond_1
    iget-wide v12, v1, Landroid/os/Looper;->mTraceTag:J

    .line 174
    .local v12, "traceTag":J
    iget-wide v8, v1, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 175
    .local v8, "slowDispatchThresholdMs":J
    iget-wide v10, v1, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 176
    .local v10, "slowDeliveryThresholdMs":J
    if-lez v6, :cond_2

    .line 177
    int-to-long v8, v6

    .line 178
    int-to-long v10, v6

    .line 180
    .end local v8    # "slowDispatchThresholdMs":J
    .end local v10    # "slowDeliveryThresholdMs":J
    .local v24, "slowDeliveryThresholdMs":J
    .local v26, "slowDispatchThresholdMs":J
    :cond_2
    move-wide/from16 v26, v8

    move-wide/from16 v24, v10

    const-wide/16 v8, 0x0

    cmp-long v0, v24, v8

    const/4 v10, 0x1

    if-lez v0, :cond_3

    move/from16 v28, v6

    iget-wide v5, v15, Landroid/os/Message;->when:J

    .line 180
    .end local v6    # "thresholdOverride":I
    .local v28, "thresholdOverride":I
    cmp-long v0, v5, v8

    if-lez v0, :cond_4

    move v0, v10

    goto :goto_1

    .line 180
    .end local v28    # "thresholdOverride":I
    .restart local v6    # "thresholdOverride":I
    :cond_3
    move/from16 v28, v6

    .line 180
    .end local v6    # "thresholdOverride":I
    .restart local v28    # "thresholdOverride":I
    :cond_4
    const/4 v0, 0x0

    :goto_1
    move v5, v0

    .line 181
    .local v5, "logSlowDelivery":Z
    cmp-long v0, v26, v8

    if-lez v0, :cond_5

    move v0, v10

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    move v6, v0

    .line 183
    .local v6, "logSlowDispatch":Z
    if-nez v5, :cond_7

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    nop

    :cond_7
    :goto_3
    move/from16 v29, v10

    .line 184
    .local v29, "needStartTime":Z
    move/from16 v30, v6

    .line 186
    .local v30, "needEndTime":Z
    cmp-long v0, v12, v8

    if-eqz v0, :cond_8

    invoke-static {v12, v13}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    iget-object v0, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->getTraceName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 190
    :cond_8
    if-eqz v29, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    goto :goto_4

    :cond_9
    move-wide v10, v8

    :goto_4
    move-wide/from16 v31, v10

    .line 193
    .local v31, "dispatchStart":J
    :try_start_0
    iget-object v0, v15, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v15}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    if-eqz v30, :cond_a

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide/from16 v20, v10

    goto :goto_5

    .line 196
    :catchall_0
    move-exception v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v35, v5

    move-wide v1, v12

    move-object v5, v14

    move-object v10, v15

    goto/16 :goto_9

    .line 194
    :cond_a
    move-wide/from16 v20, v8

    .line 196
    .local v20, "dispatchEnd":J
    :goto_5
    cmp-long v0, v12, v8

    if-eqz v0, :cond_b

    .line 197
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 200
    :cond_b
    if-eqz v5, :cond_e

    .line 201
    if-eqz v7, :cond_d

    .line 202
    iget-wide v8, v15, Landroid/os/Message;->when:J

    sub-long v8, v31, v8

    const-wide/16 v10, 0xa

    cmp-long v0, v8, v10

    if-gtz v0, :cond_c

    .line 203
    const-string v0, "Looper"

    const-string v8, "Drained"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    .line 214
    .end local v7    # "slowDeliveryDetected":Z
    .restart local v0    # "slowDeliveryDetected":Z
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v35, v5

    move-wide v1, v12

    move-object v5, v14

    move-object/from16 v36, v15

    goto :goto_7

    .line 214
    .end local v0    # "slowDeliveryDetected":Z
    .restart local v7    # "slowDeliveryDetected":Z
    :cond_c
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v35, v5

    move-wide v1, v12

    move-object v5, v14

    move-object/from16 v36, v15

    goto :goto_6

    .line 207
    :cond_d
    iget-wide v10, v15, Landroid/os/Message;->when:J

    const-string v0, "delivery"

    move-wide/from16 v8, v24

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-wide v1, v12

    move-wide/from16 v12, v31

    .line 207
    .end local v2    # "queue":Landroid/os/MessageQueue;
    .end local v12    # "traceTag":J
    .local v1, "traceTag":J
    .local v33, "me":Landroid/os/Looper;
    .local v34, "queue":Landroid/os/MessageQueue;
    move/from16 v35, v5

    move-object v5, v14

    move-object v14, v0

    .line 207
    .end local v14    # "logging":Landroid/util/Printer;
    .local v5, "logging":Landroid/util/Printer;
    .local v35, "logSlowDelivery":Z
    move-object/from16 v36, v15

    .line 207
    .end local v15    # "msg":Landroid/os/Message;
    .local v36, "msg":Landroid/os/Message;
    invoke-static/range {v8 .. v15}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    const/4 v0, 0x1

    .line 210
    .end local v7    # "slowDeliveryDetected":Z
    .restart local v0    # "slowDeliveryDetected":Z
    goto :goto_7

    .line 214
    .end local v0    # "slowDeliveryDetected":Z
    .end local v33    # "me":Landroid/os/Looper;
    .end local v34    # "queue":Landroid/os/MessageQueue;
    .end local v35    # "logSlowDelivery":Z
    .end local v36    # "msg":Landroid/os/Message;
    .local v1, "me":Landroid/os/Looper;
    .restart local v2    # "queue":Landroid/os/MessageQueue;
    .local v5, "logSlowDelivery":Z
    .restart local v7    # "slowDeliveryDetected":Z
    .restart local v12    # "traceTag":J
    .restart local v14    # "logging":Landroid/util/Printer;
    .restart local v15    # "msg":Landroid/os/Message;
    :cond_e
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v35, v5

    move-wide v1, v12

    move-object v5, v14

    move-object/from16 v36, v15

    .line 214
    .end local v2    # "queue":Landroid/os/MessageQueue;
    .end local v12    # "traceTag":J
    .end local v14    # "logging":Landroid/util/Printer;
    .end local v15    # "msg":Landroid/os/Message;
    .local v1, "traceTag":J
    .local v5, "logging":Landroid/util/Printer;
    .restart local v33    # "me":Landroid/os/Looper;
    .restart local v34    # "queue":Landroid/os/MessageQueue;
    .restart local v35    # "logSlowDelivery":Z
    .restart local v36    # "msg":Landroid/os/Message;
    :cond_f
    :goto_6
    move v0, v7

    .line 214
    .end local v7    # "slowDeliveryDetected":Z
    .restart local v0    # "slowDeliveryDetected":Z
    :goto_7
    if-eqz v6, :cond_10

    .line 215
    const-string v22, "dispatch"

    move-wide/from16 v16, v26

    move-wide/from16 v18, v31

    move-object/from16 v23, v36

    invoke-static/range {v16 .. v23}, Landroid/os/Looper;->showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z

    .line 218
    :cond_10
    if-eqz v5, :cond_11

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<<<<< Finished to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v36

    iget-object v8, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 219
    .end local v36    # "msg":Landroid/os/Message;
    .local v10, "msg":Landroid/os/Message;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 224
    .end local v10    # "msg":Landroid/os/Message;
    .restart local v36    # "msg":Landroid/os/Message;
    :cond_11
    move-object/from16 v10, v36

    .line 224
    .end local v36    # "msg":Landroid/os/Message;
    .restart local v10    # "msg":Landroid/os/Message;
    :goto_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 225
    .local v7, "newIdent":J
    cmp-long v9, v3, v7

    if-eqz v9, :cond_12

    .line 226
    const-string v9, "Looper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Thread identity changed from 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " while dispatching to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 229
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " what="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 226
    invoke-static {v9, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_12
    invoke-virtual {v10}, Landroid/os/Message;->recycleUnchecked()V

    .line 234
    .end local v1    # "traceTag":J
    .end local v5    # "logging":Landroid/util/Printer;
    .end local v6    # "logSlowDispatch":Z
    .end local v7    # "newIdent":J
    .end local v10    # "msg":Landroid/os/Message;
    .end local v20    # "dispatchEnd":J
    .end local v24    # "slowDeliveryThresholdMs":J
    .end local v26    # "slowDispatchThresholdMs":J
    .end local v29    # "needStartTime":Z
    .end local v30    # "needEndTime":Z
    .end local v31    # "dispatchStart":J
    .end local v35    # "logSlowDelivery":Z
    nop

    .line 157
    move/from16 v6, v28

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 196
    .end local v0    # "slowDeliveryDetected":Z
    .end local v33    # "me":Landroid/os/Looper;
    .end local v34    # "queue":Landroid/os/MessageQueue;
    .local v1, "me":Landroid/os/Looper;
    .restart local v2    # "queue":Landroid/os/MessageQueue;
    .local v5, "logSlowDelivery":Z
    .restart local v6    # "logSlowDispatch":Z
    .local v7, "slowDeliveryDetected":Z
    .restart local v12    # "traceTag":J
    .restart local v14    # "logging":Landroid/util/Printer;
    .restart local v15    # "msg":Landroid/os/Message;
    .restart local v24    # "slowDeliveryThresholdMs":J
    .restart local v26    # "slowDispatchThresholdMs":J
    .restart local v29    # "needStartTime":Z
    .restart local v30    # "needEndTime":Z
    .restart local v31    # "dispatchStart":J
    :catchall_1
    move-exception v0

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v35, v5

    move-wide v1, v12

    move-object v5, v14

    move-object v10, v15

    .line 196
    .end local v2    # "queue":Landroid/os/MessageQueue;
    .end local v12    # "traceTag":J
    .end local v14    # "logging":Landroid/util/Printer;
    .end local v15    # "msg":Landroid/os/Message;
    .local v1, "traceTag":J
    .local v5, "logging":Landroid/util/Printer;
    .restart local v10    # "msg":Landroid/os/Message;
    .restart local v33    # "me":Landroid/os/Looper;
    .restart local v34    # "queue":Landroid/os/MessageQueue;
    .restart local v35    # "logSlowDelivery":Z
    :goto_9
    cmp-long v8, v1, v8

    if-eqz v8, :cond_13

    .line 197
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_13
    throw v0

    .line 140
    .end local v3    # "ident":J
    .end local v5    # "logging":Landroid/util/Printer;
    .end local v6    # "logSlowDispatch":Z
    .end local v7    # "slowDeliveryDetected":Z
    .end local v10    # "msg":Landroid/os/Message;
    .end local v24    # "slowDeliveryThresholdMs":J
    .end local v26    # "slowDispatchThresholdMs":J
    .end local v28    # "thresholdOverride":I
    .end local v29    # "needStartTime":Z
    .end local v30    # "needEndTime":Z
    .end local v31    # "dispatchStart":J
    .end local v33    # "me":Landroid/os/Looper;
    .end local v34    # "queue":Landroid/os/MessageQueue;
    .end local v35    # "logSlowDelivery":Z
    .local v1, "me":Landroid/os/Looper;
    :cond_14
    move-object/from16 v33, v1

    .line 140
    .end local v1    # "me":Landroid/os/Looper;
    .restart local v33    # "me":Landroid/os/Looper;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No Looper; Looper.prepare() wasn\'t called on this thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static myLooper()Landroid/os/Looper;
    .locals 1

    .line 255
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    return-object v0
.end method

.method public static myQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 264
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v0, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public static prepare()V
    .locals 1

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 99
    return-void
.end method

.method private static prepare(Z)V
    .locals 2
    .param p0, "quitAllowed"    # Z

    .line 102
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Landroid/os/Looper;->sThreadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/os/Looper;

    invoke-direct {v1, p0}, Landroid/os/Looper;-><init>(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only one Looper may be created per thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prepareMainLooper()V
    .locals 3

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Looper;->prepare(Z)V

    .line 116
    const-class v0, Landroid/os/Looper;

    monitor-enter v0

    .line 117
    :try_start_0
    sget-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 120
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Landroid/os/Looper;->sMainLooper:Landroid/os/Looper;

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 118
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The main Looper has already been prepared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static showSlowLog(JJJLjava/lang/String;Landroid/os/Message;)Z
    .locals 5
    .param p0, "threshold"    # J
    .param p2, "measureStart"    # J
    .param p4, "measureEnd"    # J
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "msg"    # Landroid/os/Message;

    .line 239
    sub-long v0, p4, p2

    .line 240
    .local v0, "actualTime":J
    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    .line 241
    const/4 v2, 0x0

    return v2

    .line 244
    :cond_0
    const-string v2, "Looper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Slow "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p7, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 246
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p7, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p7, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 369
    return-void
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Looper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Landroid/os/MessageQueue;->dump(Landroid/util/Printer;Ljava/lang/String;Landroid/os/Handler;)V

    .line 382
    return-void
.end method

.method public getQueue()Landroid/os/MessageQueue;
    .locals 1

    .line 357
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 348
    iget-object v0, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public isCurrentThread()Z
    .locals 2

    .line 276
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public quit()V
    .locals 2

    .line 323
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 324
    return-void
.end method

.method public quitSafely()V
    .locals 2

    .line 339
    iget-object v0, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->quit(Z)V

    .line 340
    return-void
.end method

.method public setMessageLogging(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .line 289
    iput-object p1, p0, Landroid/os/Looper;->mLogging:Landroid/util/Printer;

    .line 290
    return-void
.end method

.method public setSlowLogThresholdMs(JJ)V
    .locals 0
    .param p1, "slowDispatchThresholdMs"    # J
    .param p3, "slowDeliveryThresholdMs"    # J

    .line 302
    iput-wide p1, p0, Landroid/os/Looper;->mSlowDispatchThresholdMs:J

    .line 303
    iput-wide p3, p0, Landroid/os/Looper;->mSlowDeliveryThresholdMs:J

    .line 304
    return-void
.end method

.method public setTraceTag(J)V
    .locals 0
    .param p1, "traceTag"    # J

    .line 294
    iput-wide p1, p0, Landroid/os/Looper;->mTraceTag:J

    .line 295
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looper ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 386
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 387
    .local v0, "looperToken":J
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 388
    iget-object v2, p0, Landroid/os/Looper;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 389
    iget-object v2, p0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/MessageQueue;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 390
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 391
    return-void
.end method
