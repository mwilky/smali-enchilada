.class public Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;
.super Landroid/os/Handler;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreloadHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;
    }
.end annotation


# static fields
.field public static final CHECK_STOP_PRELOAD_APP:I = 0x78


# instance fields
.field private final BEGIN_CHECK_CPU:I

.field private final END_CHECK_CPU:I

.field private final PRELOAD_APP:I

.field private final PREPARE_PRELOAD:I

.field private final TRIGGER_PRELOAD_APP:I

.field private mCpuUsage:F

.field private mLastCpu:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;

.field private mTriggerApp:Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->PREPARE_PRELOAD:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->BEGIN_CHECK_CPU:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->END_CHECK_CPU:I

    const/16 v0, 0x68

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->PRELOAD_APP:I

    const/16 v0, 0x69

    iput v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->TRIGGER_PRELOAD_APP:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mTriggerApp:Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    return-void
.end method

.method private getCurrentCpu()Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;
    .locals 12

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;-><init>(Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;Lcom/android/server/preload/OneplusAppPreload$1;)V

    const-string v2, ""

    nop

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/stat"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x400

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :goto_1
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v5, 0x9

    if-lt v4, v5, :cond_1

    const-string v4, "cpu"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x2

    :try_start_2
    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x6

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x7

    aget-object v9, v3, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x8

    aget-object v10, v3, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int v11, v4, v5

    add-int/2addr v11, v6

    add-int/2addr v11, v7

    add-int/2addr v11, v8

    add-int/2addr v11, v9

    add-int/2addr v11, v10

    int-to-float v11, v11

    iput v11, v0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mTotal:F

    int-to-float v11, v7

    iput v11, v0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mIdle:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    const-string v5, "OneplusAppPreload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in isAvailCpu Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0

    :cond_1
    :goto_3
    const-string v4, "OneplusAppPreload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/stat line content error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_2
    move-exception v3

    :try_start_3
    const-string v4, "OneplusAppPreload"

    const-string/jumbo v5, "read file /proc/stat error"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    :cond_2
    :goto_4
    return-object v0

    :goto_5
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v4

    :cond_3
    :goto_6
    throw v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x78

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    const/16 v1, 0x67

    const/16 v3, 0x68

    const/16 v4, 0x66

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mTriggerApp:Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    invoke-virtual {v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->preloadInner(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)V

    goto/16 :goto_6

    :pswitch_1
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2700()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v6}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    move-object v3, v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$2900(Lcom/android/server/preload/OneplusAppPreload;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x927c0

    cmp-long v7, v7, v9

    if-gez v7, :cond_1

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v4}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v2, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Do not preload app which recent forcestop "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v6}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-virtual {v2, v3}, Lcom/android/server/preload/OneplusAppPreload;->preloadInner(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)V

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$3000()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    const-string v7, "OneplusAppPreload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Left candidates : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->dump()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v2, "OneplusAppPreload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PreloadApp cost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    :cond_4
    :goto_2
    return-void

    :pswitch_2
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2700()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->getCurrentCpu()Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;

    move-result-object v0

    iget v1, v0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mIdle:F

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mLastCpu:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;

    iget v2, v2, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mIdle:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mTotal:F

    iget-object v5, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mLastCpu:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;

    iget v5, v5, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;->mTotal:F

    sub-float/2addr v2, v5

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mCpuUsage:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mCpuUsage:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mCpuUsage:F

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PreloadHandler mCpuUsage "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mCpuUsage:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mCpuUsage:F

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2800()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :cond_7
    :goto_3
    return-void

    :pswitch_3
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2700()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->getCurrentCpu()Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mLastCpu:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler$CPU;

    invoke-virtual {p0, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :cond_9
    :goto_4
    return-void

    :pswitch_4
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2700()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    invoke-virtual {p0, v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    invoke-virtual {p0, v4}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_b
    :goto_5
    return-void

    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1, v0}, Lcom/android/server/preload/OneplusAppPreload;->access$3100(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    :cond_d
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public preloadHighUsedAfterBoot(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p1, :cond_4

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v2, ""

    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-ltz v4, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v2, v5

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$2300(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "OneplusAppPreload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preload package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " do not support preload"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5, v2}, Lcom/android/server/preload/OneplusAppPreload;->access$2500(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    sget-object v6, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->HIGHUSAGE:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-direct {v5, v2, v6}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;-><init>(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)V

    iget-object v6, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v6}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2600()I

    move-result v6

    if-lt v3, v6, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->restartPreload()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_4
    :goto_3
    return-void
.end method

.method public preloadHighUsedAfterDie(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload;->access$2300(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preload package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " do not support preload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1, p1}, Lcom/android/server/preload/OneplusAppPreload;->access$2500(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    sget-object v2, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->HIGHUSAGE:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-direct {v1, p1, v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;-><init>(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)V

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->restartPreload()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restartPreload()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->stopPreload()V

    invoke-virtual {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->startPreload()V

    return-void
.end method

.method public startPreload()V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopPreload()V
    .locals 1

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->removeMessages(I)V

    return-void
.end method

.method public triggerDelayPreload(Ljava/lang/String;J)V
    .locals 4

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->UNKNOWN:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-direct {v0, p1, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;-><init>(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mTriggerApp:Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    invoke-virtual {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->stopPreload()V

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    const/16 v3, 0x69

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public triggerPreload(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->UNKNOWN:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-direct {v0, p1, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;-><init>(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->mTriggerApp:Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    invoke-virtual {p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->stopPreload()V

    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->sendEmptyMessage(I)Z

    return-void
.end method
